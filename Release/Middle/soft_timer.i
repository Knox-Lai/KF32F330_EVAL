# 1 "../Middle/soft_timer.c"
# 1 "E:\\KF_Workspace\\Project_WorkSpace\\KF32F330_EVAL\\Release//"
# 1 "<command-line>"
# 1 "../Middle/soft_timer.c"
# 12 "../Middle/soft_timer.c"
# 1 "../Middle/soft_timer.h" 1





# 1 "D:/ResearchSoftware/KungFu32/ChipONCC32/include/Sys/stdint.h" 1
# 16 "D:/ResearchSoftware/KungFu32/ChipONCC32/include/Sys/stdint.h"
# 1 "D:/ResearchSoftware/KungFu32/ChipONCC32/include/Sys/stddef.h" 1
# 24 "D:/ResearchSoftware/KungFu32/ChipONCC32/include/Sys/stddef.h"
typedef int ptrdiff_t;





typedef unsigned int size_t;




typedef unsigned short wchar_t;
# 17 "D:/ResearchSoftware/KungFu32/ChipONCC32/include/Sys/stdint.h" 2




typedef signed char int8_t;
typedef unsigned char uint8_t;
typedef short int16_t;
typedef unsigned short uint16_t;
typedef int int32_t;
typedef unsigned int uint32_t;
typedef long long int64_t;
typedef unsigned long long uint64_t;


typedef signed char int_least8_t;
typedef unsigned char uint_least8_t;
typedef short int_least16_t;
typedef unsigned short uint_least16_t;
typedef int int_least32_t;
typedef unsigned int uint_least32_t;
typedef long long int_least64_t;
typedef unsigned long long uint_least64_t;





typedef char int_fast8_t;
typedef unsigned char uint_fast8_t;
typedef short int_fast16_t;
typedef unsigned short uint_fast16_t;
typedef int int_fast32_t;
typedef unsigned int uint_fast32_t;
typedef long long int_fast64_t;
typedef unsigned long long uint_fast64_t;
# 60 "D:/ResearchSoftware/KungFu32/ChipONCC32/include/Sys/stdint.h"
  typedef int intptr_t;
# 69 "D:/ResearchSoftware/KungFu32/ChipONCC32/include/Sys/stdint.h"
  typedef unsigned int uintptr_t;




typedef long long intmax_t;
typedef unsigned long long uintmax_t;
# 7 "../Middle/soft_timer.h" 2
# 1 "D:/ResearchSoftware/KungFu32/ChipONCC32/include/Sys/stdio.h" 1
# 12 "D:/ResearchSoftware/KungFu32/ChipONCC32/include/Sys/stdio.h"
# 1 "D:/ResearchSoftware/KungFu32/ChipONCC32/include/Sys/stdarg.h" 1
# 18 "D:/ResearchSoftware/KungFu32/ChipONCC32/include/Sys/stdarg.h"
typedef unsigned char * va_list;
# 13 "D:/ResearchSoftware/KungFu32/ChipONCC32/include/Sys/stdio.h" 2
# 32 "D:/ResearchSoftware/KungFu32/ChipONCC32/include/Sys/stdio.h"
typedef void *STREAM;
# 74 "D:/ResearchSoftware/KungFu32/ChipONCC32/include/Sys/stdio.h"
extern char getchar (void);
extern char fgetchar (STREAM *stream);

extern int putchar (int c);
extern int fputchar (int c,STREAM *stream);
# 145 "D:/ResearchSoftware/KungFu32/ChipONCC32/include/Sys/stdio.h"
extern int puts (const char *);
extern int fputs(const char *str,STREAM *stream);
extern int fwrite(const char *str,unsigned int Size,unsigned int N, STREAM *stream);




extern char _scanf_buf_[256];

extern char getche(void);






extern char * gets(char * s);
extern char * cgets(char * s);

extern int scanf (const char * fmt, ...);
extern int vscanf (const char * fmt, va_list ap);

extern int fscanf (const char * str,const char * fmt, ...);
extern int sscanf (const char * str,const char * fmt, ...);

extern int vsscanf(const char * str,const char * fmt, va_list ap);




extern int printf (const char *fmt, ...);

extern int fprintf (STREAM *stream, const char *fmt, ...);

extern int sprintf (char *str, const char *fmt, ...);
extern int snprintf (char *str, unsigned int n, const char *format, ...);




extern int vprintf (const char *fmt, va_list ap);
extern int vfprintf (STREAM *stream, const char *fmt, va_list ap);
extern int vsprintf (char *str, const char *fmt, va_list ap);
extern int vsnprintf (char *s, unsigned int n, const char *format, va_list ap);
# 212 "D:/ResearchSoftware/KungFu32/ChipONCC32/include/Sys/stdio.h"
extern void printf_small (const char *fmt, ...);
extern void printf_tiny (const char *fmt, ...);
# 8 "../Middle/soft_timer.h" 2
# 34 "../Middle/soft_timer.h"
typedef void (*TimeoutCallback)(void);


typedef struct
{


    uint32_t tar_day_tick;
    uint32_t period_tick;
    uint16_t tar_day_num;
    uint8_t flg;
    uint8_t repeat;
    TimeoutCallback func;
}timer_handle_t;


typedef struct
{
    uint32_t cur_day_tick;
    uint16_t cur_day_num;
}my_date_t;







uint32_t softtimer_tick_get(void);
void softtimer_tick_cnt_up(void);

uint32_t SOFTTIMER_getTimeoutValue(uint8_t timerIndex);
void SOFTTIMER_setTimeoutValue(uint8_t timerIndex,uint32_t newValue);
void SOFTTIMER_start(uint8_t timerIndex);
void SOFTTIMER_suspend(uint8_t timerIndex);

void SOFTTIMER_unregister(uint8_t * timerIndex);
uint8_t SOFTTIMER_register(uint8_t repeat,uint32_t timeoutValue,TimeoutCallback func);
void SOFTTIMER_Handle(void);
# 13 "../Middle/soft_timer.c" 2
# 21 "../Middle/soft_timer.c"
timer_handle_t timeTable[5];

my_date_t cur_date;
# 36 "../Middle/soft_timer.c"
uint32_t softtimer_tick_get(void)
{
    return cur_date.cur_day_tick;
}





void softtimer_tick_cnt_up(void)
{
    cur_date.cur_day_tick ++;
}





uint32_t SOFTTIMER_getTimeoutValue(uint8_t timerIndex)
{
    return timeTable[timerIndex].tar_day_tick;
}

void SOFTTIMER_setTimeoutValue(uint8_t timerIndex,uint32_t newValue)
{
    timeTable[timerIndex].tar_day_tick = cur_date.cur_day_tick + newValue;
    if(timeTable[timerIndex].tar_day_tick >= 86400000)
    {
        timeTable[timerIndex].tar_day_num = cur_date.cur_day_num + 1;
        timeTable[timerIndex].tar_day_tick = timeTable[timerIndex].tar_day_tick - 86400000;
    }
    else
    {
        timeTable[timerIndex].tar_day_num = cur_date.cur_day_num;
    }
}


void SOFTTIMER_start(uint8_t timerIndex)
{
    timeTable[timerIndex].flg = 1;
}


void SOFTTIMER_suspend(uint8_t timerIndex)
{
    timeTable[timerIndex].flg = 0;
}
# 98 "../Middle/soft_timer.c"
uint8_t SOFTTIMER_register(uint8_t repeat,uint32_t timeoutValue,TimeoutCallback func)
{
    uint8_t i;

    if(timeoutValue > 86400000)
    {
        return 0xff;
    }


    for(i = 0;i < 5;i++)
    {
        if(timeTable[i].flg == 0)
        {
            timeTable[i].repeat = repeat;
            timeTable[i].period_tick = timeoutValue;
            timeTable[i].tar_day_tick = cur_date.cur_day_tick + timeTable[i].period_tick;
            if(timeTable[i].tar_day_tick >= 86400000)
            {
                timeTable[i].tar_day_num = cur_date.cur_day_num + 1;
                timeTable[i].tar_day_tick = timeTable[i].tar_day_tick - 86400000;
            }
            else
            {
                timeTable[i].tar_day_num = cur_date.cur_day_num;
            }

            timeTable[i].func = func;
            timeTable[i].flg = 1;

            fprintf(((STREAM *)0x40000980UL), "register timer%d successfully\r\n",i);
         return i;
        }
    }

    fprintf(((STREAM *)0x40000980UL), "register failed\r\n");
    return 0xff;
}



void SOFTTIMER_unregister(uint8_t * timerIndex)
{
    if(*timerIndex == 0xff)
    {
        return;
    }

    fprintf(((STREAM *)0x40000980UL), "unregister timer%d\r\n",timerIndex);
    timeTable[*timerIndex].repeat = 0;
    timeTable[*timerIndex].tar_day_tick = 0;
    timeTable[*timerIndex].tar_day_num = 0;
    timeTable[*timerIndex].func = 0;
    timeTable[*timerIndex].flg = 0;
    *timerIndex = 0xff;
}


void SOFTTIMER_Handle(void)
{
    uint8_t i;

    if(cur_date.cur_day_tick >= 86400000)
    {
        cur_date.cur_day_tick = cur_date.cur_day_tick - 86400000;
        cur_date.cur_day_num++;
    }

    for(i = 0;i < 5;i++)
    {
        if(timeTable[i].flg == 1)
        {
            if((cur_date.cur_day_num >= timeTable[i].tar_day_num)&&(cur_date.cur_day_tick >= timeTable[i].tar_day_tick))
            {
                if(timeTable[i].func)
                {
                    timeTable[i].func();
                }

                if(timeTable[i].repeat == 0)
                {
                    fprintf(((STREAM *)0x40000980UL), "unregister timer%d\r\n",i);
                    timeTable[i].flg = 0;
                    timeTable[i].repeat = 0;
                    timeTable[i].tar_day_tick = 0;
                    timeTable[i].tar_day_num = 0;
                    timeTable[i].func = 0;
                }
                else
                {
                    timeTable[i].tar_day_tick = cur_date.cur_day_tick + timeTable[i].period_tick;
                    if(timeTable[i].tar_day_tick >= 86400000)
                    {
                        timeTable[i].tar_day_num = cur_date.cur_day_num + 1;
                        timeTable[i].tar_day_tick = timeTable[i].tar_day_tick - 86400000;
                    }
                    else
                    {
                        timeTable[i].tar_day_num = cur_date.cur_day_num;
                    }
                }
            }
        }
    }
}
