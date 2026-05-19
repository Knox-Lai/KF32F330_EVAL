# 1 "../Driver/error_code.c"
# 1 "E:\\KF_Workspace\\Project_WorkSpace\\KF32F330_EVAL\\Release//"
# 1 "<command-line>"
# 1 "../Driver/error_code.c"
# 1 "../Driver/error_code.h" 1
# 20 "../Driver/error_code.h"
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
# 21 "../Driver/error_code.h" 2
# 140 "../Driver/error_code.h"
uint8_t ERRLIST_getFirst(void);
uint8_t* ERRLIST_getAll(void);

void ERRLIST_add(uint8_t eValue);
void ERRLIST_delete(uint8_t eValue);
void ERRLIST_modify(uint8_t oldValue,uint8_t newValue);
int8_t ERRLIST_seek(uint8_t eValue);
# 2 "../Driver/error_code.c" 2
# 10 "../Driver/error_code.c"
uint8_t eList[1];
# 24 "../Driver/error_code.c"
uint8_t ERRLIST_getFirst(void)
{
    return eList[0];
}
# 37 "../Driver/error_code.c"
uint8_t* ERRLIST_getAll(void)
{
    return &eList[0];
}
# 50 "../Driver/error_code.c"
void ERRLIST_add(uint8_t eValue)
{
# 78 "../Driver/error_code.c"
    eList[0] = eValue;

}
# 91 "../Driver/error_code.c"
void ERRLIST_delete(uint8_t eValue)
{
# 133 "../Driver/error_code.c"
    (void)eValue;
    eList[0] = 0;

}
# 146 "../Driver/error_code.c"
void ERRLIST_modify(uint8_t oldValue,uint8_t newValue)
{
    ERRLIST_delete(oldValue);
    ERRLIST_add(newValue);
}
# 161 "../Driver/error_code.c"
int8_t ERRLIST_seek(uint8_t eValue)
{
# 174 "../Driver/error_code.c"
    return -1;
}
