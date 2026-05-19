/*
 * @Author        Knox.Lai Knox.Lai@WACLighting.COM.CN
 * @Date          2026-04-28 11:54:38
 * @LastEditors   Knox.Lai
 * @LastEditTime  2026-05-19 10:22:13
 * @FilePath      \\KF32F330_EVAL\\Driver\\ota_boot.c
 * @Description   
 */
#include "bsp.h"
#include "ota_boot.h"
#include "flash_eeprom.h"
#include "md5.h"
#include "utilities.h"

/*****************************************Bootloader跳转部分代码*****************************************/
typedef void (*pFunction)(void) __attribute__((noreturn));

/**
 * @brief : 获取 App 向量表的首字，即初始 MSP 值
 * @param  app_addr: App 首地址
 * @return * App 的初始主堆栈指针值
 */
static uint32_t get_appstackpointer(uint32_t app_addr)
{
    return (*((volatile uint32_t*)app_addr));
}

/**
 * @brief : 获取 App 向量表中的跳转地址
 * @param  app_addr: App 首地址
 * @return * App 的 Reset_Handler 地址
 */
static uint32_t get_jumpaddress(uint32_t app_addr)
{
    return (*((volatile uint32_t*)(app_addr + 4U)));
}

/**
 * @brief : 校验 App 栈顶地址是否有效，即是否在 SRAM 内部
 * @param  app_addr: App 首地址
 * @return * 1 表示有效，0 表示无效
 * @note   : 校验 App 栈顶地址是否在 SRAM 内部，且是否为偶数地址对齐
 */
uint8_t is_app_valid(uint32_t app_addr)
{
    uint32_t app_stack = get_appstackpointer(app_addr);

    if ((app_stack < SRAM_START_ADDR) || (app_stack > SRAM_END_ADDR) || ((app_stack & 0x3U) != 0U))
    {
        return 0;
    }

    return 1;
}

/**
 * @brief : 跳转到 App 程序执行
 * @param  app_addr: App 首地址
 * @return * 无
 */
__attribute__((noreturn)) void jump_to_app(uint32_t app_addr)
{
    SYS_VECTOFF = app_addr; //设置向量表偏移值，即重映射向量表，这对中断服务函数正确执行至关重要
    uint32_t jump_address = get_jumpaddress(app_addr); //获取APP的startup()入口地址
    pFunction jump_to_app = (pFunction)jump_address; //将startup()入口地址赋值给函数指针

    jump_to_app(); //使用新的函数指针，转向执行APP的startup()函数，这将导致APP程序启动

}



/*****************************************Bootloader 关于OTA升级代码*****************************************/
/* 固件信息结构体，用于存储升级标志、APP2备份区的固件信息、累加和和MD5校验和 */
typedef struct
{
    uint32_t iap_flg;
    uint32_t fw_len;  //固件长度（字节数）
    // uint32_t checksum;
    uint8_t md5[16];
}ota_infor_t;

static ota_infor_t ota_info;

/**
 * @brief : 读取升级标志并校验APP2备份区固件，校验内容包含累加和与MD5
 * @param : 无
 * @return : 无
 */
uint8_t ota_app_verify(void)
{
    uint32_t byte_index = 0;
    uint32_t checksum = 0;
    uint8_t md5_result[16];

    if (ee_load(EEPROM_SEC_OTA_FLAG, &ota_info, sizeof(ota_info)) != EEPROM_OK)
    {
        return 1;
    }

    OTA_BOOT_PRINTF("ota_info.iap_flg:0x%08x, ota_info.fw_len:%d", ota_info.iap_flg, ota_info.fw_len);
    OTA_BOOT_PRINTF("ota_info.md5:");
    for (int i = 0; i < 16; i++)
    {
        OTA_BOOT_PRINTF("%02x", ota_info.md5[i]);
    }
    OTA_BOOT_PRINTF("\r\n");

    if (ota_info.iap_flg != IAP_FLG)
    {
        return 1;
    }

    if ((ota_info.fw_len == 0) || (ota_info.fw_len > APP2_FLASH_SIZE))
    {
        return 1;
    }

    // checksum = CalChecksum((const uint8_t*)APP2_FLASH_START_ADDR, ota_info.fw_len);
    // if (checksum != ota_info.checksum)
    // {
    //     return 1;
    // }

    md5_flash(APP2_FLASH_START_ADDR, ota_info.fw_len, md5_result);

    if (memcmp(md5_result, ota_info.md5, sizeof(md5_result)) != 0)
    {
        return 1;
    }

    return 0;
}

/**
 * @brief : 清除升级信息标志页
 * @param : 无
 * @return : 无
 */
void ota_info_clear(void)
{
    memset(&ota_info, 0, sizeof(ota_info));
    ee_save(EEPROM_SEC_OTA_FLAG, &ota_info, sizeof(ota_info));
}

/**
 * @brief : 将APP2备份区固件内容搬运到APP1
 * @param : 无
 * @return : 无
 */
void ota_app_update(void)
{
    uint32_t buffer[256];
    uint32_t len = ota_info.fw_len;
    uint32_t addr_read = APP2_FLASH_START_ADDR;
    uint32_t addr_write = APP1_FLASH_START_ADDR;

    //擦除APP1区
    flash_erase_range(APP1_FLASH_START_ADDR, APP1_FLASH_START_ADDR + APP1_FLASH_SIZE);

    //搬运APP2备份区固件内容到APP1区，先读出一块数据到 SRAM 中，再写入到 APP1 区，直到全部搬运完成。
    // 这里的缓冲区大小为 1024 字节，即一个 Flash 页的大小，可以根据实际情况调整
    while (len)
    {
        if (len >= sizeof(buffer))
        {
            flash_read_buf(addr_read, (uint8_t*)buffer, sizeof(buffer));

            flash_write_page(addr_write, buffer);

            len -= sizeof(buffer);
            addr_read += sizeof(buffer);
            addr_write += sizeof(buffer);
        }
        else
        {
            flash_read_buf(addr_read, (uint8_t*)buffer, len);

            flash_write_buf(addr_write, (uint8_t*)buffer, len);

            break;
        }
    }
}
