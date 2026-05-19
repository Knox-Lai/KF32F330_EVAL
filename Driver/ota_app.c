/*
 * @Author        Knox.Lai Knox.Lai@WACLighting.COM.CN
 * @Date          2026-05-07 14:59:56
 * @LastEditors   Knox.Lai
 * @LastEditTime  2026-05-19 10:19:50
 * @FilePath      \\KF32F330_EVAL\\Driver\\ota_app.c
 * @Description   APP 运行阶段的 OTA 接收与校验处理。
 */
#include "bsp.h"
#include "flash_eeprom.h"
#include "ota_app.h"
#include "md5.h"
#include "error_code.h"
#include "utilities.h"
#include <string.h>

/*****************************************APP 关于OTA升级代码*****************************************/
/* 旧协议的 OTA 升级状态结构体，用于记录本次升级包的接收进度与校验信息。 */
typedef struct
{
    uint32_t fileRecChecksum;  // 上位机下发的固件累加校验和
    uint32_t fileChecksum;     // MCU接收过程中计算得到的累加校验和
    uint32_t fileBytesNum;     // 固件总长度，单位：字节
    uint32_t bytesCount;       // 已参与校验统计的固件字节数
    uint16_t lastPktIndex;     // 上一包的包序号，用于过滤重复包
    uint8_t firmwareIdFlag;    // 固件编号正确标志，1 表示允许继续接收数据包
}ota_handle_t;

static ota_handle_t ota;

/**
 * @brief : 初始化 APP 端 OTA 接收状态。
 * @param : 无
 * @return: 无
 * @note  : 每次进入 OTA 流程前调用，避免上一轮升级残留状态影响本次接收。
 */
void ota_app_start(void)
{
    OTA_APP_PRINTF("ota_app_start\r\n");

    ota.fileChecksum = 0;
    ota.fileBytesNum = 0;
    ota.bytesCount = 0;
    ota.lastPktIndex = MAX_PACKET_NUM;
    ota.firmwareIdFlag = 0;

}


/**
 * @brief : 设置本次 OTA 固件信息。
 * @param  data: 固件信息数据缓冲区，前 4 字节为固件长度，后 4 字节为累加校验和。
 * @return: 无
 * @note  : 固件长度不能超过 APP2 备份区大小；校验通过后才允许接收固件数据包。
 */
void ota_app_set_info(uint8_t* data)
{
    uint32_t temp;

    temp = uint8_to_uint32(data, 4);  // 固件总长度
    if (temp > APP2_FLASH_SIZE)  // 固件长度超出 APP2 Flash 备份区空间
    {
        ERRLIST_add(ERR_IAP_FILE_LEN);  // 填充错误码
        return;
    }
    ota.fileBytesNum = temp;

    // 保存上位机发送的累加校验和，接收结束时与本机计算结果比较。
    ota.fileRecChecksum = uint8_to_uint32(data + 4, 4);

    ota.firmwareIdFlag = 1;  // 固件信息有效
}

/**
 * @brief : 接收并写入一个 OTA 固件数据包。
 * @param  data: 固件数据包缓冲区，前 2 字节为包序号，后续为 FLASH_BLOCK_SIZE 字节数据。
 * @return: 无
 * @note  : 该函数按包序号写入 APP2 备份区；页首地址处会先擦除对应 Flash 页。
 * @note  : 重复包直接忽略并返回，不追加错误码，便于上位机重发后继续流程。
 */
void ota_app_recvpkg(uint8_t* data)
{
    uint16_t packageIndex;  // 包索引
    uint32_t addr;  // 写入 Flash 的地址

    if (ota.firmwareIdFlag == 0)  // 固件信息无效时不处理数据包
    {
        OTA_APP_PRINTF("firmwareId error!!!\r\n");
        return;
    }

    /**1. 判断数据包序号*/
    packageIndex = data[0] | data[1] << 8;  // 本包的包索引
    if (packageIndex > MAX_PACKET_NUM)   // 包索引超出最大范围
    {
        ERRLIST_add(ERR_IAP_PACKAGE_INDEX);
        return;
    }

    if (packageIndex == ota.lastPktIndex)  // 重复包不处理，直接应答成功
    {
        return;
    }

    ota.lastPktIndex = packageIndex;  // 更新上一包的包索引
    data += 2;  // 偏移到固件数据

    /**2. 计算固件数据累加校验和*/
    if ((ota.bytesCount + FLASH_BLOCK_SIZE) <= ota.fileBytesNum)  // 仍有完整一包数据需要统计
    {
        ota.bytesCount += FLASH_BLOCK_SIZE;  // 每包固件数据大小为 FLASH_BLOCK_SIZE 字节
        ota.fileChecksum += CalChecksum(data, FLASH_BLOCK_SIZE);
    }
    else  // 最后一包只统计有效固件长度内的数据
    {
        ota.fileChecksum += CalChecksum(data, (ota.fileBytesNum - ota.bytesCount));

    }

    /**3. 保存接收到的数据到 Flash*/
    addr = APP2_FLASH_START_ADDR + FLASH_BLOCK_SIZE * packageIndex;  // 根据包索引计算写入 Flash 的地址

    if ((addr & (FLASH_PAGE_SIZE - 1)) == 0)  // 页对齐地址，写入前先擦除该页
    {
        flash_erase_page(addr);
    }

    flash_write_buf(addr, data, FLASH_BLOCK_SIZE);  // 写入 Flash

    OTA_APP_PRINTF("write data %d\r\n", ota.lastPktIndex);

}

/**
 * @brief : 结束 APP 端 OTA 接收流程，并保存 Bootloader 升级所需信息至FLASH。
 * @param : 无
 * @return: ERR_SUCCEE 表示 APP 端接收完成；其他值表示校验失败。
 * @note  : 校验通过后会把升级标志、固件长度和 APP2 固件 MD5 写入 FLASH，
 *          Bootloader 重启后据此校验并搬运 APP2 到 APP1。
 */
uint8_t ota_app_end(void)
{
    uint8_t index = 0;
    uint32_t iapFlg = IAP_FLG;
    uint8_t flgData[24] = {0};
    uint8_t md5Result[16] = {0};

    if (ota.firmwareIdFlag == 0)  // 固件信息无效时不再处理，交由上层执行重启流程
    {
        OTA_APP_PRINTF("firmwareId error!!!\r\n");
        return ERR_SUCCEE;
    }

    if (ota.fileRecChecksum != ota.fileChecksum)
    {
        return ERR_IAP_CHECKSUM;
    }

    // 写入升级标志
    memcpy(&flgData[index], &iapFlg, sizeof(iapFlg));
    index += sizeof(iapFlg);

    // 写入固件长度，供 Bootloader 校验和搬运 APP2 备份区内容使用。
    memcpy(&flgData[index], &ota.fileBytesNum, sizeof(ota.fileBytesNum));
    index += sizeof(ota.fileBytesNum);

    // memcpy(&flgData[index], &ota.fileChecksum, sizeof(ota.fileChecksum));
    // index += sizeof(ota.fileChecksum);

    // 计算 APP2 备份区固件 MD5，Bootloader 会再次计算并比对该值。
    md5_flash(APP2_FLASH_START_ADDR, ota.fileBytesNum, md5Result);
    memcpy(&flgData[index], &md5Result, sizeof(md5Result));
    index += 16;

    // 保存升级信息到 FLASH，数据布局为：升级标志 + 固件长度 + MD5。
    flash_write_buf(OTA_FLAG_ADDRESS, flgData, sizeof(flgData));

    OTA_APP_PRINTF("md5:");
    for (int i = 0; i < 16; i++)
    {
        OTA_APP_PRINTF("%02x", flgData[index + i]);
    }
    OTA_APP_PRINTF("\r\n");
    OTA_APP_PRINTF("ota_app_end\r\n");

    return ERR_SUCCEE;
}



