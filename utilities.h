#ifndef __UTILITIES_H__
#define __UTILITIES_H__

#include <stdint.h>

uint32_t uint8_to_uint32(uint8_t* data, uint8_t len);
uint32_t CalChecksum(const uint8_t* data, uint32_t size);


#endif
