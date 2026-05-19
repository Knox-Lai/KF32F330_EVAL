#ifndef BSP_FLASH_H_
#define BSP_FLASH_H_

#include <stdint.h>

#define FLASH_DRIVER_DEBUG_EN             0

#if (FLASH_DRIVER_DEBUG_EN)
    #define FLASH_PRINTF(fmt, ...)  fprintf(USART0_STREAM, fmt, ##__VA_ARGS__)
#else
    #define FLASH_PRINTF(fmt, ...)
#endif

/*
 * Flash划分:
 * 0x00000000 - 0x00002FFF  Boot区, 12KB
 * 0x00003000 - 0x0001B7FF  APP1区, 98KB
 * 0x0001B800 - 0x00033FFF  APP2备份区, 98KB
 * 0x00034000 - 0x0003FFFF  EEPROM区, 48KB
 */
#define FLASH_1K_SIZE               (0x0400UL)                 // 1KB
#define FLASH_PAGE_SIZE             (FLASH_1K_SIZE * 1UL)      // Flash页大小: 1KB, 也是一次页擦除的大小
#define FLASH_START_ADDR            (0x00000000UL)             // Flash起始地址
#define FLASH_TOTAL_SIZE            (FLASH_1K_SIZE * 256UL)    // Flash总大小: 256KB, 范围 0x00000000 - 0x0003FFFF

#define SRAM_START_ADDR             (0x10000000UL)             // SRAM起始地址
#define SRAM_TOTAL_SIZE             (FLASH_1K_SIZE * 96UL)     // SRAM总大小: 96KB, 范围 0x10000000 - 0x10017FFF
#define SRAM_END_ADDR               (SRAM_START_ADDR + SRAM_TOTAL_SIZE) // SRAM结束地址(开区间): 0x10018000

#define BOOT_FLASH_START_ADDR       FLASH_START_ADDR           // Boot区起始地址: 0x00000000
#define BOOT_FLASH_SIZE             (FLASH_1K_SIZE * 12UL)     // Boot区大小: 12KB, 范围 0x00000000 - 0x00002FFF

#define APP1_FLASH_START_ADDR       (BOOT_FLASH_START_ADDR + BOOT_FLASH_SIZE) // APP1起始地址: 0x00003000
#define APP1_FLASH_SIZE             (FLASH_1K_SIZE * 98UL)     // APP1大小: 98KB, 范围 0x00003000 - 0x0001B7FF

#define APP2_FLASH_START_ADDR       (APP1_FLASH_START_ADDR + APP1_FLASH_SIZE) // APP2备份区起始地址: 0x0001B800
#define APP2_FLASH_SIZE             (FLASH_1K_SIZE * 98UL)     // APP2备份区大小: 98KB, 范围 0x0001B800 - 0x00033FFF

#define EEPROM_FLASH_ADDR           (APP2_FLASH_START_ADDR + APP2_FLASH_SIZE) // EEPROM区起始地址: 0x00034000
#define EEPROM_FLASH_SIZE           (FLASH_1K_SIZE * 48UL)     // EEPROM区大小: 48KB, 范围 0x00034000 - 0x0003FFFF

#define SEC_MAX                 4
#define SEC_RUNTIME_ADDRESS     EEPROM_FLASH_ADDR
#define SEC_FACTORY_ADDRESS     (SEC_RUNTIME_ADDRESS + FLASH_PAGE_SIZE * 42)
#define SEC_CCT_TABLE_ADDRESS   (SEC_FACTORY_ADDRESS + FLASH_PAGE_SIZE * 2)
#define SEC_OTA_FLAG_ADDRESS    (SEC_CCT_TABLE_ADDRESS + FLASH_PAGE_SIZE * 2)

#define BOOT_VERSION                            (0x100) /*!< bootloader版本号 0x100 = V1.0.0 */

#define IAP_FLG 						    0x56AB56AB

#define MAX_PACKET_NUM                      800     //384*128 = 48K
#define FLASH_BLOCK_SIZE                    128     //128个双字=128*8=1024字节

//地址必须为被8整除
void flash_erase_page(uint32_t address);
void flash_erase_range(uint32_t start_addr, uint32_t end_addr);

void flash_read_buf(uint32_t Address, uint8_t *p_FlashBuffer, uint32_t Length);//读多byte

uint8_t flash_write_buf(uint32_t address,const uint8_t *p_FlashBuffer,uint16_t length);
void flash_write_page(uint32_t address,uint32_t *p_FlashBuffer);//写页


#endif
