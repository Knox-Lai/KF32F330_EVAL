#ifndef __OTA_BOOT_H
#define __OTA_BOOT_H

#include <stdint.h>
#include <stdio.h>

#define OTA_APP_DEBUG_EN             1

#if (OTA_APP_DEBUG_EN)
    #define OTA_APP_PRINTF(fmt, ...)  fprintf(USART0_STREAM, fmt, ##__VA_ARGS__)
#else
    #define OTA_APP_PRINTF(fmt, ...)
#endif




// typedef struct
// {
//     uint32_t firmware_length;  //固件长度（字节数）
//     uint32_t bytes_count;   //累计接收到的字节数
//     uint32_t firmware_id;  //固件编号
//     uint8_t md5[16];
//     uint16_t version_major;  //主版本号
//     uint16_t version_minor;  //次版本号
//     uint16_t version_patch;  //补丁版本号
//     uint16_t version_major;  //主版本号
// }ota_handle_t;

void ota_app_start(void);
void ota_app_set_info(uint8_t* data);
void ota_app_recvpkg(uint8_t* data);
uint8_t ota_app_end(void);


#endif
