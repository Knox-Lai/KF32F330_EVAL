#include "system_init.h"

static volatile uint32_t systick_tick_count = 0;

void systick_timer_init(uint32_t Reload)
{
	SYSTICK_Configuration(SYSTICK_SYS_CLOCK_DIV_1, TRUE, Reload);
    SYSTICK_Cmd(TRUE);
    INT_Interrupt_Enable(INT_SysTick, TRUE);
    INT_All_Enable(TRUE);
}

void systick_tick_cnt_up(void)
{
    systick_tick_count++;
}

uint32_t systick_tick_get(void)
{
    /* 返回当前的滴答计数值 */
    /* volatile确保每次都从内存读取最新值，不会被编译器优化 */
    return systick_tick_count;
}

uint8_t fac_us;
uint16_t fac_ms;
/**
 *  @brief : Initialize the systick timer for delay function without interrupt.
 * 			 Must be Initialized before use "systick_delay_us" and "systick_delay_ms".
 *  @param : None
 *  @retval :None
 */
void systick_delay_init(void)
{
	SYSTICK_Cmd(FALSE);
	SYSTICK_Clock_Config(SYSTICK_SYS_CLOCK_DIV_1);
	SFR_CLR_BIT_ASM(ST_CALI, ST_CALII_STCLKREF_POS);
	fac_us = SystemCoreClock / 1000000;
	fac_ms = fac_us * 1000;
}

