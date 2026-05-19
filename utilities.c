#include "utilities.h"

uint32_t uint8_to_uint32(uint8_t* data, uint8_t len)//Little-endian
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

/**
  * 描述   计算数据包的Checksum值
  * 输入   data: 数据包的指针
  * 	 size：数据包的长度
  *	返回   Checksum计算的结果
  */
uint32_t CalChecksum(const uint8_t* data, uint32_t size)
{
    uint32_t sum = 0;
    const uint8_t* dataEnd = data + size;
    while (data < dataEnd)
        sum += *data++;
    return sum;
}