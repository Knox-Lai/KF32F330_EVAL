# 1 "../Middle/md5.c"
# 1 "E:\\KF_Workspace\\Project_WorkSpace\\KF32F330_EVAL\\Release//"
# 1 "<command-line>"
# 1 "../Middle/md5.c"
# 1 "../Middle/MD5.h" 1



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
# 5 "../Middle/MD5.h" 2
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
# 6 "../Middle/MD5.h" 2
# 1 "D:/ResearchSoftware/KungFu32/ChipONCC32/include/Sys/string.h" 1
# 26 "D:/ResearchSoftware/KungFu32/ChipONCC32/include/Sys/string.h"
extern int ffs (int);
extern int ffsl (long);
extern int ffsll (long long);
extern void * memchr(const void *, int, size_t);
extern int memcmp(const void *, const void *, size_t);
extern void * memcpy(void *, const void *, size_t);
extern void * memmove(void *, const void *, size_t);
extern void * memset(void *, int, size_t);
extern int strcasecmp (const char *, const char *);
extern char * strcat(char *, const char *);
extern char * strchr(const char *, int);
extern int strcmp(const char *, const char *);
extern int strcoll(const char *, const char *);
extern char * strcpy(char *, const char *);
extern size_t strcspn(const char *, const char *);

extern size_t strlen(const char *);
extern int strncasecmp (const char *, const char *, size_t);
extern char * strncat(char *, const char *, size_t);
extern int strncmp(const char *, const char *, size_t);
extern char * strncpy(char *, const char *, size_t);
extern char * strpbrk(const char *, const char *);
extern char * strrchr(const char *, int);
extern size_t strspn(const char *, const char *);
extern char * strstr(const char *, const char *);
extern char * strtok(char *, const char *);
extern size_t strxfrm(char *, const char *, size_t);


extern char * strdup(const char *);
# 7 "../Middle/MD5.h" 2
# 1 "D:/ResearchSoftware/KungFu32/ChipONCC32/include/Sys/stdlib.h" 1
# 12 "D:/ResearchSoftware/KungFu32/ChipONCC32/include/Sys/stdlib.h"
# 1 "D:/ResearchSoftware/KungFu32/ChipONCC32/include/Sys/malloc.h" 1





extern void *calloc(size_t , size_t );





void *realloc(void *ptr_par,size_t n);




extern void free(void * );







extern void *malloc(size_t );
# 13 "D:/ResearchSoftware/KungFu32/ChipONCC32/include/Sys/stdlib.h" 2
# 40 "D:/ResearchSoftware/KungFu32/ChipONCC32/include/Sys/stdlib.h"
typedef struct
{
  int quot;
  int rem;
} div_t;

typedef struct
{
  long quot;
  long rem;
} ldiv_t;


typedef struct
{
  long long int quot;
  long long int rem;
} lldiv_t;

extern long long llabs ( long long );
extern long long atoll ( const char * );
extern lldiv_t lldiv ( long long, long long );


extern int abs ( int );
extern long labs ( long );
extern void _Exit ( int ) __attribute__((__noreturn__));
extern void exit ( int ) __attribute__((__noreturn__));


extern double atof ( const char * );
extern int atoi ( const char * );
extern long atol ( const char * );



extern void uitoa (unsigned int, char *, unsigned char);
extern void itoa (int, char*, unsigned char);


extern void ultoa (unsigned long, char *, unsigned char);
extern void ltoa (long, char*, unsigned char);
# 100 "D:/ResearchSoftware/KungFu32/ChipONCC32/include/Sys/stdlib.h"
extern void ftoa(float, char*, unsigned char);



extern div_t div ( int, int );
extern ldiv_t ldiv ( long, long );
extern void * bsearch ( const void *, const void *, size_t, size_t,
                                           int (*)( const void *, const void * ) );
extern char * getenv ( const char * );
extern void qsort ( void *, size_t, size_t,
                                           int (*)( const void *, const void * ) );
extern int rand ( void );
extern void srand ( unsigned int );


extern long strtol (const char *st, char **endptr, int base);
extern unsigned long strtoul (const char *st, char **endptr, int base);
extern long long strtoll (const char *st, char **endptr, int base);
extern unsigned long long strtoull (const char *st, char **endptr,int base);
extern float strtof (const char *st, char **endptr);
extern double strtod (const char *st, char **endptr);
# 8 "../Middle/MD5.h" 2



void md5Init(void);
void md5Update(uint8_t *input, size_t input_len);
void md5Finalize(uint8_t *ret_md5_data);
void md5Step(uint32_t *buffer, uint32_t *input);

void md5String(char *input, uint8_t *result);
void md5Flash(uint32_t start_addr, uint32_t size, uint8_t *result);
# 2 "../Middle/md5.c" 2
# 1 "E:\\KF_Workspace\\Project_WorkSpace\\KF32F330_EVAL\\BSP/bsp_flash.h" 1


# 1 "E:\\KF_Workspace\\Project_WorkSpace\\KF32F330_EVAL\\Peripherals\\inc/KF32F_BASIC.h" 1
# 21 "E:\\KF_Workspace\\Project_WorkSpace\\KF32F330_EVAL\\Peripherals\\inc/KF32F_BASIC.h"
# 1 "E:\\KF_Workspace\\Project_WorkSpace\\KF32F330_EVAL\\Peripherals\\inc/KF32F_Config.h" 1
# 15 "E:\\KF_Workspace\\Project_WorkSpace\\KF32F330_EVAL\\Peripherals\\inc/KF32F_Config.h"
# 1 "E:\\KF_Workspace\\Project_WorkSpace\\KF32F330_EVAL/__Kungfu32_chipmodel_define.h" 1
# 16 "E:\\KF_Workspace\\Project_WorkSpace\\KF32F330_EVAL\\Peripherals\\inc/KF32F_Config.h" 2
# 22 "E:\\KF_Workspace\\Project_WorkSpace\\KF32F330_EVAL\\Peripherals\\inc/KF32F_BASIC.h" 2
# 36 "E:\\KF_Workspace\\Project_WorkSpace\\KF32F330_EVAL\\Peripherals\\inc/KF32F_BASIC.h"
typedef enum
{
    FALSE = 0,
    TRUE = !FALSE
} FunctionalState;



typedef enum
{
    RESET = 0,
    SET = !RESET
} FlagStatus, INTStatus;


typedef enum
{
    FAILURE = 0,
    SUCCESS = !FAILURE
} RetStatus;


typedef enum
{
    DISABLE = 0,
    ENABLE = !DISABLE
} AbleStatus;






typedef enum {
    INT_Initial_SP = 0,
    INT_Reset = 1,
    INT_NMI = 2,
    INT_HardFault = 3,
    INT_Reserved4 = 4,
    INT_StackFault = 5,
    INT_AriFault = 6,
    INT_Reserved7 = 7,
    INT_Reserved8 = 8,
    INT_Reserved9 = 9,
    INT_Reserved10 = 10,
    INT_SVCAll = 11,
    INT_Reserved12 = 12,
    INT_Reserved13 = 13,
    INT_SoftSV = 14,
    INT_SysTick = 15,
    INT_WWDT = 16,
    INT_EINT16 = 17,
    INT_EINT0 = 18,
    INT_EINT1 = 19,
    INT_EINT2 = 20,
    INT_EINT3 = 21,
    INT_EINT4 = 22,
    INT_EINT9TO5 = 23,
    INT_EINT15TO10 = 24,
    INT_T1 = 25,
    INT_T3 = 26,
    INT_T5 = 27,
    INT_T6 = 28,
    INT_QEI = 29,
    INT_T7 = INT_QEI,
    INT_T8 = INT_QEI,
    INT_CAN2 = 30,
    INT_CAN3 = 31,
    INT_CAN4 = 32,
    INT_T14 = 33,
    INT_T15 = 34,
    INT_CAN5 = 35,
    INT_EXIC = 36,
    INT_ADC0 = 37,
    INT_ADC1 = 38,
    INT_CFGL = 39,
    INT_LCD = 40,
    INT_T0 = 41,
    INT_DMA0 = 42,
    INT_CMP = 43,
    INT_USART0 = 44,
    INT_USART1 = 45,
    INT_SPI0 = 46,
    INT_SPI1 = 47,
    INT_DMA1 = 48,
    INT_EINT19TO17 = 49,
    INT_CAN0 = 50,
    INT_CAN1 = 51,
    INT_T9 = 52,
    INT_T10 = 53,
    INT_EINT21TO20 = 54,
    INT_EINT31TO22 = 55,
    INT_OSC = 56,
    INT_CLK = INT_OSC,
    INT_I2C0 = 57,
    INT_I2C1 = 58,
    INT_I2C2 = 59,
    INT_USB = 60,
    INT_T2 = 61,
    INT_T4 = 62,
    INT_CTOUCH = 63,
    INT_USART2 = 64,
    INT_USART3 = 65,
    INT_USART4 = 66,
    INT_SPI2 = 67,
    INT_SPI3 = 68,
    INT_ADC2 = 69,
    INT_T18 = 70,
    INT_T19 = 71,
    INT_T22 = 72,
    INT_T23 =INT_T22,
    INT_WKP0 = 73,
    INT_WKP1 =INT_WKP0,
    INT_WKP2 =INT_WKP0,
    INT_WKP3 =INT_WKP0,
    INT_WKP4 =INT_WKP0,
    INT_T20 = 74,
    INT_T21 = 75,
    INT_I2C3 = 76,
    INT_USART5 = 77,
    INT_USART6 = 78,
    INT_USART7 = 79,
} InterruptIndex;
# 171 "E:\\KF_Workspace\\Project_WorkSpace\\KF32F330_EVAL\\Peripherals\\inc/KF32F_BASIC.h"
typedef struct GPIO_MemMap {
    volatile const uint32_t PIR;
    volatile uint32_t POR;
    volatile uint32_t PUR;
    volatile uint32_t PDR;
    volatile uint32_t PODR;
    volatile uint32_t PMOD;
    volatile uint32_t OMOD;
    volatile uint32_t LOCK;
    volatile uint32_t RMP[2];
                uint32_t RESERVED;
    volatile uint32_t CTMDCTL[2];
}GPIO_SFRmap;
# 1127 "E:\\KF_Workspace\\Project_WorkSpace\\KF32F330_EVAL\\Peripherals\\inc/KF32F_BASIC.h"
typedef struct OSC_MemMap {
    volatile uint32_t CTL0;
    volatile uint32_t CTL1;
    volatile uint32_t INT;
    volatile uint32_t CTL2;
    volatile uint32_t HFOSCCAL0;
    volatile uint32_t HFOSCCAL1;
}OSC_SFRmap;


typedef struct PLL_MemMap {
   volatile uint32_t CTL;
}PLL_SFRmap;
# 1450 "E:\\KF_Workspace\\Project_WorkSpace\\KF32F330_EVAL\\Peripherals\\inc/KF32F_BASIC.h"
typedef struct INT_MemMap {
    volatile uint32_t CTL0;
    volatile uint32_t EIE0;
             uint32_t RESERVED1;
    volatile uint32_t EIE1;
             uint32_t RESERVED2;
    volatile uint32_t EIE2;
       uint32_t RESERVED3;
    volatile uint32_t EIF0;
             uint32_t RESERVED4;
    volatile uint32_t EIF1;
             uint32_t RESERVED5;
    volatile uint32_t EIF2;
             uint32_t RESERVED6;
    volatile uint32_t IP0;
    volatile uint32_t IP1;
    volatile uint32_t IP2;
    volatile uint32_t IP3;
    volatile uint32_t IP4;
    volatile uint32_t IP5;
    volatile uint32_t IP6;
    volatile uint32_t IP7;
    volatile uint32_t IP8;
    volatile uint32_t IP9;
    volatile uint32_t IP10;
    volatile uint32_t IP11;
    volatile uint32_t IP12;
    volatile uint32_t IP13;
    volatile uint32_t IP14;
    volatile uint32_t IP15;
    volatile uint32_t IP16;
    volatile uint32_t IP17;
    volatile uint32_t IP18;
    volatile uint32_t EINTMASK;
    volatile uint32_t EINTRISE;
    volatile uint32_t EINTFALL;
    volatile uint32_t EINTF;
             uint32_t RESERVED7;
    volatile uint32_t EINTSS0;
    volatile uint32_t EINTSS1;
    volatile uint32_t CTL1;
}INT_SFRmap;
# 3309 "E:\\KF_Workspace\\Project_WorkSpace\\KF32F330_EVAL\\Peripherals\\inc/KF32F_BASIC.h"
typedef struct SYSCTL_MemMap {
    volatile uint32_t PSW;
    volatile uint32_t MCTL;
    volatile uint32_t ARCTL;
    volatile uint32_t VECTOFF;
          uint32_t RESEVRVE1;
    volatile uint32_t RAMSPA;
    volatile uint32_t MEMCTL;
}SYSCTL_SFRmap;
# 3398 "E:\\KF_Workspace\\Project_WorkSpace\\KF32F330_EVAL\\Peripherals\\inc/KF32F_BASIC.h"
typedef struct ADC_MemMap {
    volatile uint32_t CTL0;
    volatile uint32_t CTL1;
    volatile uint32_t SCANSQ0;
    volatile uint32_t SCANSQ1;
    volatile uint32_t SCANSQ2;
    volatile uint32_t HSCANSQ;
    volatile uint32_t WDH;
    volatile uint32_t WDL;
    volatile const uint32_t DATA;
    volatile const uint32_t HPDATA0;
    volatile const uint32_t HPDATA1;
    volatile const uint32_t HPDATA2;
    volatile const uint32_t HPDATA3;
    volatile uint32_t HPOFF0;
    volatile uint32_t HPOFF1;
    volatile uint32_t HPOFF2;
    volatile uint32_t HPOFF3;
    volatile uint32_t SCANSQ3;
                   uint32_t RESERVED[2];
    volatile uint32_t STATE;
    volatile uint32_t DELAY;
}ADC_SFRmap;

typedef struct ADC_Delay_MemMap
{
    volatile uint32_t DELAY;
}ADC_DELAY_SFRmap;
# 4058 "E:\\KF_Workspace\\Project_WorkSpace\\KF32F330_EVAL\\Peripherals\\inc/KF32F_BASIC.h"
typedef struct DMA_MemMap {
    union {
        struct
        {
            volatile uint32_t CTLR1;
            volatile uint32_t CTLR2;
            volatile uint32_t CTLR3;
            volatile uint32_t CTLR4;
            volatile uint32_t CTLR5;
            volatile uint32_t CTLR6;
            volatile uint32_t CTLR7;
        };
        volatile uint32_t CTLR[7];
    };
                   uint32_t RESERVED1;
    union {
        struct
        {
            volatile uint32_t PADDR1;
            volatile uint32_t PADDR2;
            volatile uint32_t PADDR3;
            volatile uint32_t PADDR4;
            volatile uint32_t PADDR5;
            volatile uint32_t PADDR6;
            volatile uint32_t PADDR7;
        };
        volatile uint32_t PADDR[7];
    };
                   uint32_t RESERVED2;
    union {
        struct
        {
            volatile uint32_t MADDR1;
            volatile uint32_t MADDR2;
            volatile uint32_t MADDR3;
            volatile uint32_t MADDR4;
            volatile uint32_t MADDR5;
            volatile uint32_t MADDR6;
            volatile uint32_t MADDR7;
        };
        volatile uint32_t MADDR[7];
    };
                   uint32_t RESERVED3;
    union {
        struct
        {
            volatile const uint32_t CPAR1;
            volatile const uint32_t CPAR2;
            volatile const uint32_t CPAR3;
            volatile const uint32_t CPAR4;
            volatile const uint32_t CPAR5;
            volatile const uint32_t CPAR6;
            volatile const uint32_t CPAR7;
        };
        volatile const uint32_t CPAR[7];
    };
                   uint32_t RESERVED4;
    union {
        struct
        {
            volatile const uint32_t CMAR1;
            volatile const uint32_t CMAR2;
            volatile const uint32_t CMAR3;
            volatile const uint32_t CMAR4;
            volatile const uint32_t CMAR5;
            volatile const uint32_t CMAR6;
            volatile const uint32_t CMAR7;
        };
        volatile const uint32_t CMAR[7];
    };
                   uint32_t RESERVED5;
    union {
        struct
        {
            volatile const uint32_t NCT1;
            volatile const uint32_t NCT2;
            volatile const uint32_t NCT3;
            volatile const uint32_t NCT4;
            volatile const uint32_t NCT5;
            volatile const uint32_t NCT6;
            volatile const uint32_t NCT7;
        };
        volatile const uint32_t NCT[7];
    };
                   uint32_t RESERVED6;
    volatile uint32_t LIFR;
    volatile uint32_t LIER;
}DMA_SFRmap;
# 4713 "E:\\KF_Workspace\\Project_WorkSpace\\KF32F330_EVAL\\Peripherals\\inc/KF32F_BASIC.h"
typedef struct SYSTICK_MemMap {
    volatile uint32_t CTL;
    volatile uint32_t RELOAD;
    volatile uint32_t CV;
    volatile uint32_t CALI;
}SYSTICK_SFRmap;
# 4767 "E:\\KF_Workspace\\Project_WorkSpace\\KF32F330_EVAL\\Peripherals\\inc/KF32F_BASIC.h"
typedef struct BTIM_MemMap {
    volatile uint32_t CNT;
    volatile uint32_t CTL1;
    volatile uint32_t CTL2;
    volatile uint32_t PRSC;
    volatile uint32_t PPX;
    volatile uint32_t DIER;
    volatile const uint32_t SR;
    volatile uint32_t SRIC;
}BTIM_SFRmap;
# 4955 "E:\\KF_Workspace\\Project_WorkSpace\\KF32F330_EVAL\\Peripherals\\inc/KF32F_BASIC.h"
typedef struct GPTIM_MemMap {
    volatile uint32_t CNT;
    volatile uint32_t CTL1;
    volatile uint32_t CTL2;
    volatile uint32_t PRSC;
    volatile uint32_t PPX;
    volatile uint32_t UDTIM;
                   uint32_t RESERVED1[2];
    volatile const uint32_t CCPXC1;
    volatile const uint32_t CCPXC2;
    volatile const uint32_t CCPXC3;
    volatile const uint32_t CCPXC4;
    volatile uint32_t CCPXSRIC;
    volatile const uint32_t CCPXDF;
                   uint32_t RESERVED2[2];
    volatile uint32_t CCPXCTL1;
    volatile uint32_t CCPXR1;
    volatile uint32_t CCPXR2;
    volatile uint32_t CCPXR3;
    volatile uint32_t CCPXR4;
    volatile uint32_t CCPXCTL2;
    volatile uint32_t CCPXCTL3;
    volatile uint32_t CCPXEGIF;
}GPTIM_SFRmap, CCP_SFRmap;
# 5565 "E:\\KF_Workspace\\Project_WorkSpace\\KF32F330_EVAL\\Peripherals\\inc/KF32F_BASIC.h"
typedef struct ATIM_MemMap {
    volatile uint32_t TXCNT;
    volatile uint32_t TZCNT;
    volatile uint32_t TXPPX;
    volatile uint32_t TZPPZ;
    volatile uint32_t TXPRSC;
    volatile uint32_t TZPRSC;
    volatile uint32_t TXCCR0;
    volatile uint32_t TXCCR1;
    volatile uint32_t TZCCR0;
    volatile uint32_t TXCTL;
    volatile uint32_t TZCTL;
    volatile uint32_t PXPDCTL;
    volatile uint32_t PXASCTL;
          uint32_t RESERVED1[19];
    volatile uint32_t ECCPXCTL1;
    volatile uint32_t ECCPXR1;
    volatile uint32_t ECCPXR2;
    volatile uint32_t ECCPXR3;
    volatile uint32_t ECCPXR4;
    volatile uint32_t PXUDCTL;
    volatile uint32_t ECCPXCTL2;
    volatile uint32_t PXDTCTL;
    volatile uint32_t PWMXOC;
    volatile uint32_t PXATRCTL;
    volatile uint32_t PXASCTL0;
    volatile uint32_t PXASCTL1;
    volatile uint32_t ZPDCTL0;
    volatile uint32_t ZPDCTL1;
    volatile uint32_t ZPDPORT;
    volatile uint32_t ECCPXIE;
    volatile uint32_t ECCPXEGIF;
    volatile uint32_t TXUDTIM;
    volatile uint32_t TZUDTIM;
    volatile const uint32_t ECCPXDF;
    volatile const uint32_t ECCPXC1;
    volatile const uint32_t ECCPXC2;
    volatile const uint32_t ECCPXC3;
    volatile const uint32_t ECCPXC4;
                   uint32_t RESERVED2;
    volatile uint32_t ECCPXDE;
    volatile uint32_t ECCPXSRIC;
    volatile uint32_t ECCPXCTL3;
}ATIM_SFRmap, ECCP_SFRmap;
# 6294 "E:\\KF_Workspace\\Project_WorkSpace\\KF32F330_EVAL\\Peripherals\\inc/KF32F_BASIC.h"
typedef struct QEI_MemMap {
    volatile uint32_t CTL0;
    volatile uint32_t CTL1;
    volatile uint32_t CNT;
    volatile uint32_t PPX;
    volatile uint32_t PRSC;
    volatile uint32_t DIER;
}QEI_SFRmap;
# 6412 "E:\\KF_Workspace\\Project_WorkSpace\\KF32F330_EVAL\\Peripherals\\inc/KF32F_BASIC.h"
typedef struct DAC_MemMap {
    volatile uint32_t CTL;
    volatile uint32_t DAHD;
    volatile const uint32_t DATA;
    volatile uint32_t CTL1;
                   uint32_t RESERVED;
    volatile uint32_t CAL;
}DAC_SFRmap;
# 6565 "E:\\KF_Workspace\\Project_WorkSpace\\KF32F330_EVAL\\Peripherals\\inc/KF32F_BASIC.h"
typedef struct CMP_MemMap {
    volatile uint32_t CTL;





}CMP_SFRmap;
# 8129 "E:\\KF_Workspace\\Project_WorkSpace\\KF32F330_EVAL\\Peripherals\\inc/KF32F_BASIC.h"
typedef struct RTC_MemMap {
    volatile uint32_t CR;
    volatile uint32_t ALRA;
    volatile uint32_t TMR;
    volatile uint32_t DTR;
    volatile uint32_t ALRB;
    volatile uint32_t TMER;
    volatile uint32_t TCR;
    volatile uint32_t IER;
    volatile uint32_t IFR;
    volatile uint32_t TMBR;
    volatile uint32_t DTBR;
}RTC_SFRmap;
# 8672 "E:\\KF_Workspace\\Project_WorkSpace\\KF32F330_EVAL\\Peripherals\\inc/KF32F_BASIC.h"
typedef struct IWDT_MemMap {
    volatile uint32_t CTL;
    volatile uint32_t FD;
}IWDT_SFRmap;
# 8705 "E:\\KF_Workspace\\Project_WorkSpace\\KF32F330_EVAL\\Peripherals\\inc/KF32F_BASIC.h"
typedef struct WWDT_MemMap {
    volatile uint32_t CTL;
    volatile uint32_t CNT;
}WWDT_SFRmap;
# 8745 "E:\\KF_Workspace\\Project_WorkSpace\\KF32F330_EVAL\\Peripherals\\inc/KF32F_BASIC.h"
typedef struct RST_MemMap {
    volatile uint32_t CTL0;
    volatile uint32_t CTL1;
    volatile uint32_t CTL2;
    volatile uint32_t CTL3;
}RST_SFRmap;
# 9121 "E:\\KF_Workspace\\Project_WorkSpace\\KF32F330_EVAL\\Peripherals\\inc/KF32F_BASIC.h"
typedef struct PCLK_MemMap {
    volatile uint32_t CTL0;
    volatile uint32_t CTL1;
    volatile uint32_t CTL2;
    volatile uint32_t CTL3;
}PCLK_SFRmap;
# 9497 "E:\\KF_Workspace\\Project_WorkSpace\\KF32F330_EVAL\\Peripherals\\inc/KF32F_BASIC.h"
typedef struct SPI_MemMap {
    volatile uint32_t BRGR;
    volatile uint32_t CTLR;
    volatile uint32_t BUFR;
    volatile uint32_t STR;
}SPI_SFRmap;
# 9657 "E:\\KF_Workspace\\Project_WorkSpace\\KF32F330_EVAL\\Peripherals\\inc/KF32F_BASIC.h"
typedef struct I2C_MemMap {
    volatile uint32_t CTLR;
    volatile uint32_t SR;
    volatile uint32_t BUFR;
    volatile uint32_t ADDR0;
    volatile uint32_t BRGR;
    volatile uint32_t ADDR1;
    volatile uint32_t ADDR2;
    volatile uint32_t ADDR3;
    volatile uint32_t IER;
    volatile uint32_t TPSR;
}I2C_SFRmap;
# 9936 "E:\\KF_Workspace\\Project_WorkSpace\\KF32F330_EVAL\\Peripherals\\inc/KF32F_BASIC.h"
typedef struct USART_MemMap {
    volatile uint32_t CTLR;
    volatile uint32_t BRGR;
    volatile uint32_t STR;
    union {
        volatile uint32_t TBUFR;
        volatile const uint32_t RBUFR;
    };
    volatile uint32_t U7816R;
    volatile uint32_t IER;
    volatile uint32_t ADM;
}USART_SFRmap;
# 10341 "E:\\KF_Workspace\\Project_WorkSpace\\KF32F330_EVAL\\Peripherals\\inc/KF32F_BASIC.h"
typedef struct USB_MemMap {
    volatile uint32_t UCON;
    volatile const uint32_t USTAT;
    volatile uint32_t UADDR;
    volatile uint32_t UFRM;
    volatile uint32_t UIR;
    volatile uint32_t UIE;
    volatile uint32_t UEP[8];
    volatile uint32_t UDB;
}USB_SFRmap;
# 10589 "E:\\KF_Workspace\\Project_WorkSpace\\KF32F330_EVAL\\Peripherals\\inc/KF32F_BASIC.h"
typedef struct CAN_MemMap {
    volatile uint32_t CTLR;
    volatile uint32_t BRGR;
    volatile const uint32_t RCR;
    volatile uint32_t EROR;
    volatile uint32_t ACRR;
    volatile uint32_t MSKR;
    volatile uint32_t IER;
    volatile uint32_t IFR;
    volatile uint32_t INFR;
    volatile uint32_t TX0R;
    volatile uint32_t TX1R;
    volatile uint32_t TX2R;
    volatile const uint32_t RXDATA0;
    volatile const uint32_t RXDATA1;
    volatile const uint32_t RXDATA2;
    volatile const uint32_t RXDATA3;
}CAN_SFRmap;
# 11691 "E:\\KF_Workspace\\Project_WorkSpace\\KF32F330_EVAL\\Peripherals\\inc/KF32F_BASIC.h"
typedef struct PM_MemMap {
    volatile uint32_t CTL0;
    volatile uint32_t CTL1;
    volatile const uint32_t STA0;
    volatile const uint32_t STA1;
    volatile uint32_t STAC;
    volatile uint32_t CTL2;
    volatile uint32_t CAL0;
    volatile uint32_t CAL1;
    volatile uint32_t CAL2;
}PM_SFRmap;
# 12086 "E:\\KF_Workspace\\Project_WorkSpace\\KF32F330_EVAL\\Peripherals\\inc/KF32F_BASIC.h"
typedef struct BKP_MemMap {
    volatile uint32_t CTL;
    volatile uint32_t INT;
             uint32_t RESERVED[14];
    volatile uint32_t DATA[32];
}BKP_SFRmap;
# 12196 "E:\\KF_Workspace\\Project_WorkSpace\\KF32F330_EVAL\\Peripherals\\inc/KF32F_BASIC.h"
typedef struct FLASH_MemMap {
    volatile uint32_t ISPCON0;
    volatile uint32_t ISPCON1;
    volatile uint32_t ISPCMD;
    volatile uint32_t ISPTRG;
             uint32_t RESERVED1;
    volatile uint32_t CFG;
             uint32_t RESERVED2;
    volatile uint32_t ISPADDR;
    volatile uint32_t STATE;
             uint32_t RESERVED3;
    volatile uint32_t NVMUNLOCK;
    volatile uint32_t PROUNLOCK;
    volatile uint32_t CFGUNLOCK;
             uint32_t RESERVED4;
    volatile uint32_t CSSTART;
    volatile uint32_t CSSTOP;
    volatile uint32_t CSRES[4];
}FLASH_SFRmap;
# 12394 "E:\\KF_Workspace\\Project_WorkSpace\\KF32F330_EVAL\\Peripherals\\inc/KF32F_BASIC.h"
typedef struct CRC_MemMap {
    volatile uint32_t CTL;
    volatile uint32_t DATA;
    volatile uint32_t RSLT;
    volatile uint32_t INIT;
    volatile uint32_t PLN;
    volatile uint32_t RXOR;
    volatile uint32_t IDATA;
    volatile uint32_t TEMP;
}CRC_SFRmap;
# 12444 "E:\\KF_Workspace\\Project_WorkSpace\\KF32F330_EVAL\\Peripherals\\inc/KF32F_BASIC.h"
typedef struct AES_MemMap {
    volatile uint32_t CTL;
       uint32_t RESERVED1;
    volatile uint32_t AES_invMCin;
    volatile uint32_t AES_invMCout;
    volatile uint32_t KEY0;
    volatile uint32_t KEY1;
    volatile uint32_t KEY2;
    volatile uint32_t KEY3;
    volatile uint32_t INPUT0;
    volatile uint32_t INPUT1;
    volatile uint32_t INPUT2;
    volatile uint32_t INPUT3;
    volatile uint32_t OUTPUT0;
    volatile uint32_t OUTPUT1;
    volatile uint32_t OUTPUT2;
    volatile uint32_t OUTPUT3;
}AES_SFRmap;
# 12900 "E:\\KF_Workspace\\Project_WorkSpace\\KF32F330_EVAL\\Peripherals\\inc/KF32F_BASIC.h"
typedef struct EXIC_MemMap {
    volatile uint32_t CTL0;
    volatile uint32_t CTL1;
    volatile uint32_t STATE;
       uint32_t RESERVED1;
    volatile uint32_t WRITEBUF;
    volatile uint32_t READBUF;

}EXIC_SFRmap;
# 12980 "E:\\KF_Workspace\\Project_WorkSpace\\KF32F330_EVAL\\Peripherals\\inc/KF32F_BASIC.h"
typedef struct CFGL_MemMap {
    volatile uint32_t CTL0;
    volatile uint32_t CTL1;
    volatile uint32_t IFR;
}CFGL_SFRmap;
# 13333 "E:\\KF_Workspace\\Project_WorkSpace\\KF32F330_EVAL\\Peripherals\\inc/KF32F_BASIC.h"
static inline uint32_t
SFR_Config (uint32_t SfrMem, uint32_t SfrMask, uint32_t WriteVal)
{
    return ((SfrMem & SfrMask) | (WriteVal));
}
# 4 "E:\\KF_Workspace\\Project_WorkSpace\\KF32F330_EVAL\\BSP/bsp_flash.h" 2
# 65 "E:\\KF_Workspace\\Project_WorkSpace\\KF32F330_EVAL\\BSP/bsp_flash.h"
void flash_erase_page(uint32_t address);
void flash_erase_range(uint32_t start_addr, uint32_t end_addr);


uint32_t flash_read_byte(uint32_t address,uint8_t *p_FlashBuffer);
uint32_t flash_read_halfword(uint32_t address,uint16_t *p_FlashBuffer);
uint32_t flash_read_word(uint32_t address,uint32_t *p_FlashBuffer);
void flash_read_nbyte(uint32_t Address, uint8_t *Buffers, uint32_t Length);
void flash_read_multiple_word(uint32_t address,uint32_t *p_FlashBuffer,uint32_t length);

void flash_write_byte(uint32_t address,uint8_t p_FlashBuffer);
void flash_write_nbyte(uint32_t address,uint8_t *p_FlashBuffer,uint32_t length);
void flash_write_halfword(uint32_t address,uint16_t p_FlashBuffer);
void flash_write_word(uint32_t address,uint32_t p_FlashBuffer);
void flash_write_doubleword(uint32_t address,uint32_t *p_FlashBuffer);
void flash_write_half_page(uint32_t address,uint32_t *p_FlashBuffer,uint32_t length);
void flash_write_page(uint32_t address,uint32_t *p_FlashBuffer,uint8_t length);


void FLASH_WriteCFG_ONE(uint32_t address,uint32_t *p_FlashBuffer);
void FLASH_HALFPAGE_WRITECFG_fun(uint32_t address,uint32_t *p_FlashBuffer,uint32_t length);
void FLASH_PageWrite_CFG_fun(uint32_t address,uint32_t *p_FlashBuffer,uint8_t length);
# 3 "../Middle/md5.c" 2
# 12 "../Middle/md5.c"
static const uint8_t S[] =
{
    7, 12, 17, 22, 7, 12, 17, 22, 7, 12, 17, 22, 7, 12, 17, 22,
    5, 9, 14, 20, 5, 9, 14, 20, 5, 9, 14, 20, 5, 9, 14, 20,
    4, 11, 16, 23, 4, 11, 16, 23, 4, 11, 16, 23, 4, 11, 16, 23,
    6, 10, 15, 21, 6, 10, 15, 21, 6, 10, 15, 21, 6, 10, 15, 21
};

static const uint32_t K[] =
{
    0xd76aa478, 0xe8c7b756, 0x242070db, 0xc1bdceee,
    0xf57c0faf, 0x4787c62a, 0xa8304613, 0xfd469501,
    0x698098d8, 0x8b44f7af, 0xffff5bb1, 0x895cd7be,
    0x6b901122, 0xfd987193, 0xa679438e, 0x49b40821,
    0xf61e2562, 0xc040b340, 0x265e5a51, 0xe9b6c7aa,
    0xd62f105d, 0x02441453, 0xd8a1e681, 0xe7d3fbc8,
    0x21e1cde6, 0xc33707d6, 0xf4d50d87, 0x455a14ed,
    0xa9e3e905, 0xfcefa3f8, 0x676f02d9, 0x8d2a4c8a,
    0xfffa3942, 0x8771f681, 0x6d9d6122, 0xfde5380c,
    0xa4beea44, 0x4bdecfa9, 0xf6bb4b60, 0xbebfbc70,
    0x289b7ec6, 0xeaa127fa, 0xd4ef3085, 0x04881d05,
    0xd9d4d039, 0xe6db99e5, 0x1fa27cf8, 0xc4ac5665,
    0xf4292244, 0x432aff97, 0xab9423a7, 0xfc93a039,
    0x655b59c3, 0x8f0ccc92, 0xffeff47d, 0x85845dd1,
    0x6fa87e4f, 0xfe2ce6e0, 0xa3014314, 0x4e0811a1,
    0xf7537e82, 0xbd3af235, 0x2ad7d2bb, 0xeb86d391
};




static uint8_t PADDING[] =
{
    0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
};
# 63 "../Middle/md5.c"
typedef struct{
    uint64_t size;
    uint32_t buffer[4];
    uint8_t input[64];
    uint8_t digest[16];
}MD5Context;

MD5Context ctx;




uint32_t rotateLeft(uint32_t x, uint32_t n){
    return (x << n) | (x >> (32 - n));
}
# 88 "../Middle/md5.c"
void md5Init(void){
    ctx.size = (uint64_t)0;

    ctx.buffer[0] = (uint32_t)0x67452301;
    ctx.buffer[1] = (uint32_t)0xefcdab89;
    ctx.buffer[2] = (uint32_t)0x98badcfe;
    ctx.buffer[3] = (uint32_t)0x10325476;
}
# 109 "../Middle/md5.c"
void md5Update(uint8_t *input_buffer, size_t input_len){
    uint32_t input[16];
    uint16_t offset = ctx.size % 64;
    ctx.size += (uint64_t)input_len;


    for (uint16_t i = 0; i < input_len; ++i)
    {
        ctx.input[offset++] = (uint8_t)*(input_buffer + i);





        if(offset % 64 == 0){
            for (uint16_t j = 0; j < 16; ++j)
            {



                input[j] = (uint32_t)(ctx.input[(j * 4) + 3]) << 24 |
                           (uint32_t)(ctx.input[(j * 4) + 2]) << 16 |
                           (uint32_t)(ctx.input[(j * 4) + 1]) << 8 |
                           (uint32_t)(ctx.input[(j * 4)]);
            }
            md5Step(ctx.buffer, input);
            offset = 0;
        }
    }
}
# 149 "../Middle/md5.c"
void md5Finalize(uint8_t *ret_md5_data){
    uint32_t input[16];
    uint16_t offset = ctx.size % 64;
    uint16_t padding_length = offset < 56 ? 56 - offset : (56 + 64) - offset;


    md5Update(PADDING, padding_length);
    ctx.size -= (uint64_t)padding_length;



    for (uint16_t j = 0; j < 14; ++j)
    {
        input[j] = (uint32_t)(ctx.input[(j * 4) + 3]) << 24 |
                   (uint32_t)(ctx.input[(j * 4) + 2]) << 16 |
                   (uint32_t)(ctx.input[(j * 4) + 1]) << 8 |
                   (uint32_t)(ctx.input[(j * 4)]);
    }
    input[14] = (uint32_t)(ctx.size * 8);
    input[15] = (uint32_t)((ctx.size * 8) >> 32);

    md5Step(ctx.buffer, input);


    for (uint16_t i = 0; i < 4; ++i)
    {
        ctx.digest[(i * 4) + 0] = (uint8_t)((ctx.buffer[i] & 0x000000FF));
        ctx.digest[(i * 4) + 1] = (uint8_t)((ctx.buffer[i] & 0x0000FF00) >> 8);
        ctx.digest[(i * 4) + 2] = (uint8_t)((ctx.buffer[i] & 0x00FF0000) >> 16);
        ctx.digest[(i * 4) + 3] = (uint8_t)((ctx.buffer[i] & 0xFF000000) >> 24);
    }

    memcpy(ret_md5_data, ctx.digest, 16);
}
# 193 "../Middle/md5.c"
void md5Step(uint32_t *buffer, uint32_t *input){
    uint32_t AA = buffer[0];
    uint32_t BB = buffer[1];
    uint32_t CC = buffer[2];
    uint32_t DD = buffer[3];

    uint32_t E;

    uint16_t j;

    for (uint16_t i = 0; i < 64; ++i)
    {
        switch(i >> 4){
            case 0:
                E = ((BB & CC) | (~BB & DD));
                j = i;
                break;
            case 1:
                E = ((BB & DD) | (CC & ~DD));
                j = ((i * 5) + 1) & 0x0f;
                break;
            case 2:
                E = (BB ^ CC ^ DD);
                j = ((i * 3) + 5) & 0x0f;
                break;
            default:
                E = (CC ^ (BB | ~DD));
                j = (i * 7) & 0x0f;
                break;
        }

        uint32_t temp = DD;
        DD = CC;
        CC = BB;
        BB = BB + rotateLeft(AA + E + K[i] + input[j], S[i]);
        AA = temp;
    }

    buffer[0] += AA;
    buffer[1] += BB;
    buffer[2] += CC;
    buffer[3] += DD;
}
# 247 "../Middle/md5.c"
void md5String(char *input, uint8_t *result){
    md5Init();
    md5Update((uint8_t *)input, strlen(input));
    md5Finalize(result);


}
# 287 "../Middle/md5.c"
void md5Flash(uint32_t start_addr, uint32_t size, uint8_t* result)
{
    uint8_t input_buffer[128];
    uint32_t offset = 0;
    uint32_t read_len = 0;

    md5Init();

    while (offset < size)
    {
        read_len = size - offset;
        if (read_len > sizeof(input_buffer))
        {
            read_len = sizeof(input_buffer);
        }

        flash_read_nbyte(start_addr + offset, input_buffer, read_len);
        md5Update(input_buffer, read_len);

        offset += read_len;
    }

    md5Finalize(result);
}
