# 1 "../utilities.c"
# 1 "E:\\KF_Workspace\\Project_WorkSpace\\KF32F330_EVAL\\Release//"
# 1 "<command-line>"
# 1 "../utilities.c"
# 1 "../utilities.h" 1



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
# 5 "../utilities.h" 2

uint32_t uint8_to_uint32(uint8_t* data, uint8_t len);
uint32_t CalChecksum(const uint8_t* data, uint32_t size);
# 2 "../utilities.c" 2

uint32_t uint8_to_uint32(uint8_t* data, uint8_t len)
{
    uint32_t ret = 0;
    uint8_t* p_data = (uint8_t*)(&ret);

    if (len <= 4)
    {
        while (len--)
        {
            *p_data++ = *data++;
        }
    }

    return ret;
}







uint32_t CalChecksum(const uint8_t* data, uint32_t size)
{
    uint32_t sum = 0;
    const uint8_t* dataEnd = data + size;
    while (data < dataEnd)
        sum += *data++;
    return sum;
}
