#ifndef MD5_H
#define MD5_H

#include <stdint.h>

void md5_init(void);
void md5_update(uint8_t *input, size_t input_len);
void md5_finalize(uint8_t *ret_md5_data);
void md5_step(uint32_t *buffer, uint32_t *input);

void md5_string(char *input, uint8_t *result);
void md5_flash(uint32_t start_addr, uint32_t size, uint8_t *result);

#endif
