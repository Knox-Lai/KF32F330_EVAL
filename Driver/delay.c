#include "KF32F_BASIC.h"
#include "bsp_systick.h"

#define DELAY_MS_LOOP_COUNT    6050U

static void delay_ms_timer(volatile uint32_t nms);
static void delay_ms_for(volatile uint32_t nms);
static void delay_us_systick(unsigned int nus);
static void delay_ms_systick(unsigned int nms);

void delay_us(volatile uint32_t nus)
{
	delay_us_systick(nus);
}

void delay_ms(volatile uint32_t nms)
{
	delay_ms_timer(nms);
	// delay_ms_systick(nms);
}



/**
 * @brief  毫秒级延时函数，基于SysTick定时器
 * @param  nms: 延时时间，单位：ms
 * @retval None
 */
void delay_ms_timer(volatile uint32_t nms)
{
    uint32_t start_tick = systick_tick_get();  // 记录开始时间
    
    // 等待指定时间，自动处理溢出
    while ((systick_tick_get() - start_tick) < nms)
    {
        // 可以在此处添加低功耗模式或其他任务
    }
}

/**
 * @brief : 延时nms, 死循环空跑实现延时
 * @param  nms: 延时时间，单位：ms
 * @return *
 */
void delay_ms_for(volatile uint32_t nms)
{
	volatile uint32_t i,j;
	for(i=0;i<nms;i++)
	{
		j=DELAY_MS_LOOP_COUNT;
		while(j--);
	}

}

/**
 *  @brief : Using SysTick timer to realize microsecond delay
 * 			 nus<=0xffffff*1000*1000/SYSCLK/2
 *  @param : nus
 * 			 In the following line describe the max time at different frequencies
 * 			 48M： 699050us
 * 			 72M： 466033us
 * 			 96M： 349525us
 * 			 120M：279620us
 *  @retval :None
 */
void delay_us_systick(unsigned int nus)
{
	uint32_t temp;
	SYSTICK_SFR->RELOAD = fac_us * nus;
	SYSTICK_SFR->CV = 0;
	SYSTICK_SFR->CTL |= ST_CTL_STEN;
	do
	{
		temp = ST_CTL;
	} while ((temp & 0x01) && !(temp & (1 << 16)));
	SYSTICK_SFR->CTL &= ~ST_CTL_STEN;
	SYSTICK_SFR->CV = 0;
}

/**
 *  @brief : Using SysTick timer to realize millisecond delay
 * 			 nus<=0xffffff*1000/SYSCLK/2
 *  @param : nus
 * 			 In the following line describe the max time at different frequencies
 * 			 48M： 699ms
 * 			 72M： 466ms
 * 			 96M： 349ms
 * 			 120M：279ms
 *  @retval :None
 */
void delay_ms_systick(unsigned int nms)
{
	uint32_t temp;
	SYSTICK_SFR->RELOAD = (uint32_t)nms * fac_ms;
	SYSTICK_SFR->CV = 0;
	SYSTICK_SFR->CTL |= ST_CTL_STEN;
	do
	{
		temp = ST_CTL;
	} while ((temp & 0x01) && !(temp & (1 << 16)));
	SYSTICK_SFR->CTL &= ~ST_CTL_STEN;
	SYSTICK_SFR->CV = 0;
}


