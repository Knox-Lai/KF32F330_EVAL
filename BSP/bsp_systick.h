#ifndef __BSP_SYSTICK_H__
#define __BSP_SYSTICK_H__

#include <stdint.h>


extern uint8_t 	fac_us;
extern uint16_t fac_ms;
void systick_tick_cnt_up(void);
uint32_t systick_tick_get(void);
void systick_timer_init(uint32_t Reload);
void systick_delay_init(void);

#endif
