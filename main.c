/*
 * @Author        Knox.Lai Knox.Lai@WACLighting.COM.CN
 * @Date          2026-04-09 15:54:31
 * @LastEditors   Knox.Lai
 * @LastEditTime  2026-05-15 08:50:23
 * @FilePath      \\KF32F330_EVAL\\main.c
 * @Description
 */
#include "system_init.h"
#include "bsp.h"
#include "KF32_EVAL.h"
#include "delay.h"
#include "ota_boot.h"
#include "md5.h"
#include "flash_eeprom.h"


#define MAIN_DEBUG_EN             1
#define RUNTIME_PARAM_TEST_EN     1

#if (MAIN_DEBUG_EN)
    #define MAIN_PRINTF(fmt, ...)  fprintf(USART0_STREAM, fmt, ##__VA_ARGS__)
	// printf(fmt, ##__VA_ARGS__)
	// fprintf(USART0_STREAM, fmt, ##__VA_ARGS__)
#else
    #define MAIN_PRINTF(fmt, ...)
#endif



void md5_flash_test(void)
{
    uint8_t md5_result[16];
    uint8_t i;

    md5_flash(APP1_FLASH_START_ADDR, APP1_FLASH_SIZE, md5_result);

    MAIN_PRINTF("Flash MD5 test\r\n");
    MAIN_PRINTF("addr=0x%08lX, size=%lu bytes\r\n",
                (unsigned long)APP1_FLASH_START_ADDR,
                (unsigned long)APP1_FLASH_SIZE);
    MAIN_PRINTF("md5=");
    for(i = 0; i < 16; i++)
    {
        MAIN_PRINTF("%02X", md5_result[i]);
    }
    MAIN_PRINTF("\r\n");
}

typedef struct
{
    uint32_t run_time;
    uint32_t save_count;
    uint16_t brightness;
    uint8_t mode;
    uint8_t reserve;
} runtime_param_t;

runtime_param_t g_runtime_param;

void runtime_param_set_default(void)
{
    g_runtime_param.run_time = 0;
    g_runtime_param.save_count = 0;
    g_runtime_param.brightness = 10;
    g_runtime_param.mode = 1;
    g_runtime_param.reserve = 0;
}

void runtime_param_test(void)
{
    uint8_t ret;

    MAIN_PRINTF("\r\nruntime param test start\r\n");

    ret = ee_load(EEPROM_SEC_RUNTIME, &g_runtime_param, sizeof(g_runtime_param));
    MAIN_PRINTF("load ret=%d\r\n", ret);
    if (ret == EEPROM_OK)
    {
        MAIN_PRINTF("load: run_time=%lu, save_count=%lu, brightness=%u, mode=%u\r\n",
                    (unsigned long)g_runtime_param.run_time,
                    (unsigned long)g_runtime_param.save_count,
                    g_runtime_param.brightness,
                    g_runtime_param.mode);
    }
    else
    {
        runtime_param_set_default();
        MAIN_PRINTF("use default runtime param\r\n");
    }

    g_runtime_param.run_time += 60;
    g_runtime_param.save_count++;
    g_runtime_param.brightness++;
    g_runtime_param.mode++;

    ret = ee_save(EEPROM_SEC_RUNTIME, &g_runtime_param, sizeof(g_runtime_param));
    MAIN_PRINTF("save ret=%d\r\n", ret);
    MAIN_PRINTF("save: run_time=%lu, save_count=%lu, brightness=%u, mode=%u\r\n",
                (unsigned long)g_runtime_param.run_time,
                (unsigned long)g_runtime_param.save_count,
                g_runtime_param.brightness,
                g_runtime_param.mode);

    MAIN_PRINTF("runtime param test done\r\n");
}

void main()
{
    SystemInit();
    systick_timer_init(SystemCoreClock/1000);

    kf_eval_usart_init(EVAL_COM3);

    kf_eval_led_init(LED1);
    // kf_eval_led_off(LED1);
    kf_eval_led_init(LED2);
    // kf_eval_led_off(LED2);
    kf_eval_led_init(LED3);
    // kf_eval_led_off(LED3);

    MAIN_PRINTF("Bootloader Init!\r\n");

	// flash_erase_range(0x00004400, 0x000047FF);

	uint32_t buf[256];
	uint8_t iap_flg[4] = {0x56,0xAA,0xAA,0x56};
	uint32_t word_test[2] = {0x12345678,0x90765432};
    

	// flash_read_buf(0x00004000, (uint8_t *)word_test, 8);
	// INT_All_Enable(FALSE); 
	// flash_write_doubleword(0x00004400,word_test);
	// INT_All_Enable(TRUE);

    // MAIN_PRINTF("sizeof(buf)=%d\r\n", sizeof(buf));
    // for(uint8_t i = 0; i < 48; i++)
    // {
    //     flash_read_buf(APP1_FLASH_START_ADDR + i * 1024, (uint8_t*)buf, sizeof(buf));
    //     INT_All_Enable(FALSE);   	//禁止中断
        // flash_write_buf(APP2_FLASH_START_ADDR + i * 1024, (uint8_t*)buf, sizeof(buf));
    //     INT_All_Enable(TRUE);    //打开中断
    // }
    // MAIN_PRINTF("copy done\r\n");
    // flash_write_buf(0x20000, (const uint8_t *)iap_flg, sizeof(iap_flg));
    // flash_write_buf(0x20004, (const uint8_t *)word_test, sizeof(word_test));




    // md5_flash_test();

#if (RUNTIME_PARAM_TEST_EN)
    runtime_param_test();
#endif



    while(1)
    {

        if (!ota_app_verify())
        {
            MAIN_PRINTF("app verify ok\r\n");
            MAIN_PRINTF("update fw start\r\n");
            ota_app_update();
            MAIN_PRINTF("update fw done\r\n");
            ota_info_clear();
            MAIN_PRINTF("clear flg\r\n");
        }


        if (is_app_valid(APP1_FLASH_START_ADDR))
        {
            MAIN_PRINTF("jump to app\r\n");
            jump_to_app(APP1_FLASH_START_ADDR);
        }


        // delay_ms(500);
        // kf_eval_led_toggle(LED3);
        // MAIN_PRINTF("tick=%d\r\n", systick_tick_get());

        static uint32_t last_tick = 0;
        uint32_t current_tick = systick_tick_get();
        if (current_tick != last_tick)
        {
            last_tick = current_tick;
            
            static uint16_t cnt1 = 0;
            cnt1++;

            if (cnt1 % 1000 == 0)
            {
                // MAIN_PRINTF("time=%d\r\n", systick_tick_get());
                kf_eval_led_toggle(LED3);
            }
            else if (cnt1 >= 3000)
			{
				cnt1 = 0;
                // MAIN_PRINTF("ledtime=%d\r\n", systick_tick_get());
                
                // SYSCTL_System_Reset_Enable(TRUE);

            }
        }

    }
}
