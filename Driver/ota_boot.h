#ifndef __OTA_BOOT_H
#define __OTA_BOOT_H

#include <stdint.h>
#include <stdio.h>

#define OTA_BOOT_DEBUG_EN             0

#if (OTA_BOOT_DEBUG_EN)
    #define OTA_BOOT_PRINTF(fmt, ...)  fprintf(USART0_STREAM, fmt, ##__VA_ARGS__)
#else
    #define OTA_BOOT_PRINTF(fmt, ...)
#endif


uint8_t is_app_valid(uint32_t app_addr);
void jump_to_app(uint32_t app_addr);

uint8_t ota_app_verify(void);
void ota_info_clear(void);
void ota_app_update(void);


#endif
