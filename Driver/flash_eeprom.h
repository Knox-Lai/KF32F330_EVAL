#ifndef __FLASH_EEPROM_H__
#define __FLASH_EEPROM_H__

#include "KF32F_BASIC.h"

/* EEPROM 模拟页状态标记。Flash 擦除后默认全为 0xFF，因此 PAGE_FREE 表示空页。 */
#define PAGE_FREE               0xFFFFFFFF
#define PAGE_USED               0xAA55BBCC

/* 页头保留长度。当前只写入 4 字节页标记，额外保留 4 字节用于后续扩展和数据对齐。 */
#define PAGE_HEAD_SIZE          8

/* 记录状态标记。记录头未写入前保持 RECORD_FREE，写入记录头后才视为有效记录。 */
#define RECORD_FREE             0xFFFFFFFF
#define RECORD_USED             0x55AA33CC

/* EEPROM 模拟层返回状态码。*/
typedef enum
{
    EEPROM_OK = 0,       // 操作成功
    EEPROM_ERR_PARAM,    // 入参无效，例如空指针或长度为 0
    EEPROM_ERR_SEC,      // 分区编号无效
    EEPROM_ERR_NO_DATA,  // 指定分区内没有匹配的数据记录
    EEPROM_ERR_NO_SPACE, // 分区空间不足，当前实现预留错误码
    EEPROM_ERR_FLASH,    // Flash 擦写失败
} eeprom_status_t;

/* EEPROM 模拟分区编号。*/
typedef enum
{
    EEPROM_SEC_RUNTIME  = 0, // 运行参数分区，42KB
    EEPROM_SEC_FACTORY  = 1, // 出厂默认参数分区，2KB
    EEPROM_SEC_CCT_TABLE = 2, // CCT 表参数分区，2KB
    EEPROM_SEC_OTA_FLAG = 3, // OTA/IAP 升级标志分区，2KB
} eeprom_sec_t;

uint16_t ee_init_boot(void);
uint16_t ee_init_app(void);
uint8_t ee_save(eeprom_sec_t sec, const void *data, uint16_t len);
uint8_t ee_load(eeprom_sec_t sec, void *data, uint16_t len);

#endif
