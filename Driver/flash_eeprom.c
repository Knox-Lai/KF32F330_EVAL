/*
 * @Author        Knox.Lai Knox.Lai@WACLighting.COM.CN
 * @Date          2026-05-19 10:04:42
 * @LastEditors   Knox.Lai
 * @LastEditTime  2026-05-19 10:13:08
 * @FilePath      \\KF32F330_EVAL\\Driver\\flash_eeprom.c
 * @Description   EEPROM 模拟层实现。
 */
#include "flash_eeprom.h"
#include "bsp_flash.h"


#define SEC_TABLE_ADDRESS_INDEX       0  // 分区表中起始地址数组索引
#define SEC_TABLE_SIZE_INDEX          1  // 分区表中分区大小数组索引

/* 记录总长度按 8 字节对齐，便于下一条记录从对齐地址开始写入。 */
#define RECORD_SIZE(len)        ((uint32_t)sizeof(eeprom_record_head_t) + (((uint32_t)(len) + 7) & ~7))

/* EEPROM 模拟分区表：每个分区由起始地址和分区大小组成。 */
const uint32_t sec_table[SEC_MAX][2] =
{
    {SEC_RUNTIME_ADDRESS,   FLASH_PAGE_SIZE * 42},
    {SEC_FACTORY_ADDRESS,   FLASH_PAGE_SIZE * 2},
    {SEC_CCT_TABLE_ADDRESS, FLASH_PAGE_SIZE * 2},
    {SEC_OTA_FLAG_ADDRESS,  FLASH_PAGE_SIZE * 2},
};

/* EEPROM 模拟记录头。记录头写入后，该条记录才被认为有效。 */
typedef struct
{
    uint32_t record_flg;  // 记录有效标志
    uint16_t seq;         // 记录序号，用于判断同长度数据中的最新记录
    uint16_t len;         // 数据长度，单位：字节
} eeprom_record_head_t;


/* EEPROM 分区运行时管理信息。 */
typedef struct
{
    uint32_t start_addr;        // 分区起始地址
    uint32_t size;              // 分区大小，单位：字节
    uint32_t page_count;        // 分区包含的 Flash 页数

    uint32_t active_page_addr;  // 当前追加写入的有效页起始地址
    uint32_t write_addr;        // 下一条记录的写入地址
    uint16_t next_record_seq;   // 下一条记录序号
} eeprom_sec_info_t;

static eeprom_sec_info_t ee_sec_info[SEC_MAX];

/**
 * @brief : 格式化一个 EEPROM 模拟页。
 * @param  page_addr: 页起始地址。
 * @return: EEPROM_OK 表示成功，其他值表示 Flash 写入失败。
 * @note  : 页头实际只写入 4 字节 PAGE_USED；PAGE_HEAD_SIZE 保留为 8，
 *          是为了让后续记录从 8 字节对齐地址开始写入。
 */
static uint8_t ee_format_page(uint32_t page_addr)
{
    uint32_t page_flg = PAGE_USED;
    uint8_t ret;

    flash_erase_page(page_addr);

    ret = flash_write_buf(page_addr, (const uint8_t *)&page_flg, sizeof(page_flg));
    return ret;
}

/**
 * @brief : 扫描指定页，更新该分区的下一次写入地址和下一条记录序号。
 * @param  sec: EEPROM 分区编号。
 * @param  page_addr: 需要扫描的页起始地址。
 * @return: 无
 * @note  : 该函数只读取 Flash，不擦除也不写入 Flash。
 */
static void ee_scan_page(eeprom_sec_t sec, uint32_t page_addr)
{
    eeprom_sec_info_t *sec_info;
    uint16_t max_seq = 0;
    uint32_t addr_cur = page_addr + PAGE_HEAD_SIZE;
    eeprom_record_head_t record_head;

    sec_info = &ee_sec_info[sec];

    while ((addr_cur + sizeof(record_head)) <= (page_addr + FLASH_PAGE_SIZE))
    {
        flash_read_buf(addr_cur, (uint8_t *)&record_head, sizeof(record_head));

        if (record_head.record_flg == RECORD_FREE)
        {
            sec_info->write_addr = addr_cur;
            sec_info->next_record_seq = (uint16_t)(max_seq + 1);
            return;
        }

        if (record_head.record_flg != RECORD_USED)
        {
            sec_info->write_addr = page_addr + FLASH_PAGE_SIZE;
            sec_info->next_record_seq = (uint16_t)(max_seq + 1);
            return;
        }

        if (record_head.len == 0)
        {
            sec_info->write_addr = page_addr + FLASH_PAGE_SIZE;
            sec_info->next_record_seq = (uint16_t)(max_seq + 1);
            return;
        }

        uint32_t record_size = RECORD_SIZE(record_head.len);
        if ((record_size > (FLASH_PAGE_SIZE - PAGE_HEAD_SIZE)) ||
            ((addr_cur + record_size) > (page_addr + FLASH_PAGE_SIZE)))
        {
            sec_info->write_addr = page_addr + FLASH_PAGE_SIZE;
            sec_info->next_record_seq = (uint16_t)(max_seq + 1);
            return;
        }

        if ((record_head.seq != 0) &&
            (record_head.seq != 0xFFFF) &&
            (record_head.seq > max_seq))
        {
            max_seq = record_head.seq;
        }

        addr_cur += record_size;
    }

    sec_info->write_addr = page_addr + FLASH_PAGE_SIZE;
    sec_info->next_record_seq = (uint16_t)(max_seq + 1);
}

/**
 * @brief : 初始化指定 EEPROM 模拟分区。
 * @param  sec: EEPROM 分区编号。
 * @return: EEPROM_OK 表示成功，其他值表示初始化失败。
 * @note  : 初始化时从分区最后一页向前查找 PAGE_USED，找到后扫描该页作为当前有效写入页。
 *          如果整个分区都没有有效页，则格式化分区起始页作为第一有效页。
 */
static uint8_t ee_init_section(eeprom_sec_t sec)
{
    eeprom_sec_info_t *sec_info;
    uint32_t page_index;

    if (sec >= SEC_MAX)
    {
        return EEPROM_ERR_SEC;
    }

    sec_info = &ee_sec_info[sec];
    sec_info->start_addr = sec_table[sec][SEC_TABLE_ADDRESS_INDEX];
    sec_info->size = sec_table[sec][SEC_TABLE_SIZE_INDEX];
    sec_info->page_count = sec_info->size / FLASH_PAGE_SIZE;
    sec_info->active_page_addr = 0;
    sec_info->write_addr = 0;
    sec_info->next_record_seq = 1;

    for (page_index = sec_info->page_count; page_index > 0; page_index--)
    {
        uint32_t page_addr;
        uint32_t page_flg;

        page_addr = sec_info->start_addr + ((page_index - 1) * FLASH_PAGE_SIZE);
        flash_read_buf(page_addr, (uint8_t *)&page_flg, sizeof(page_flg));

        if (page_flg == PAGE_USED)
        {
            sec_info->active_page_addr = page_addr;
            ee_scan_page(sec, page_addr);
            return EEPROM_OK;
        }
    }

    if (ee_format_page(sec_info->start_addr) != 0)
    {
        return EEPROM_ERR_FLASH;
    }

    sec_info->active_page_addr = sec_info->start_addr;
    sec_info->write_addr = sec_info->start_addr + PAGE_HEAD_SIZE;
    sec_info->next_record_seq = 1;

    return EEPROM_OK;
}

/**
 * @brief : 在当前有效页追加写入一条记录。
 * @param  sec_info: 分区运行时管理信息。
 * @param  data: 需要保存的数据地址，可以是数组或结构体地址。
 * @param  len: 需要保存的数据长度，单位：字节。
 * @return: EEPROM_OK 表示成功，其他值表示 Flash 写入失败。
 * @note  : 先写数据，最后写记录头；如果写数据过程中掉电，记录头仍为 RECORD_FREE，
 *          启动扫描时会忽略这条未完成记录。
 */
static uint8_t ee_write_record(eeprom_sec_info_t *sec_info, const void *data, uint16_t len)
{
    eeprom_record_head_t record_head;
    uint32_t record_addr = sec_info->write_addr;

    record_head.record_flg = RECORD_USED;
    record_head.seq = sec_info->next_record_seq;
    record_head.len = len;

    if (flash_write_buf(record_addr + sizeof(record_head), (const uint8_t *)data, len) != 0)
    {
        return EEPROM_ERR_FLASH;
    }

    if (flash_write_buf(record_addr, (const uint8_t *)&record_head, sizeof(record_head)) != 0)
    {
        return EEPROM_ERR_FLASH;
    }

    sec_info->write_addr += RECORD_SIZE(len);
    sec_info->next_record_seq++;

    return EEPROM_OK;
}

/**
 * @brief : 对指定 EEPROM 模拟分区进行回收整理。
 * @param  sec: EEPROM 分区编号。
 * @param  data: 回收后需要重新保存的数据地址。
 * @param  len: 需要重新保存的数据长度，单位：字节。
 * @return: EEPROM_OK 表示成功，其他值表示失败。
 * @note  : 当前实现会擦除整个分区，然后从第一页重新写入最新数据，记录序号也从 1 重新开始。
 */
static uint8_t ee_gc_section(eeprom_sec_t sec, const void *data, uint16_t len)
{
    eeprom_sec_info_t *sec_info = &ee_sec_info[sec];
    uint8_t ret;

    flash_erase_range(sec_info->start_addr, sec_info->start_addr + sec_info->size);

    if (ee_format_page(sec_info->start_addr) != 0)
    {
        return EEPROM_ERR_FLASH;
    }

    sec_info->active_page_addr = sec_info->start_addr;
    sec_info->write_addr = sec_info->start_addr + PAGE_HEAD_SIZE;
    sec_info->next_record_seq = 1;

    ret = ee_write_record(sec_info, data, len);
    return ret;
}

/**
 * @brief : Bootloader 使用的 EEPROM 分区初始化。
 * @param : 无
 * @return: EEPROM_OK 表示成功，其他值表示初始化失败。
 * @note  : Bootloader 只需要 OTA 标志分区，因此这里只初始化 EEPROM_SEC_OTA_FLAG。
 */
uint16_t ee_init_boot(void)
{
    uint16_t ret;

    ret = ee_init_section(EEPROM_SEC_OTA_FLAG);
    return ret;
}

/**
 * @brief : APP 使用的 EEPROM 分区初始化。
 * @param : 无
 * @return: EEPROM_OK 表示成功，其他值表示初始化失败。
 * @note  : APP 会初始化运行参数、出厂参数、CCT 表和 OTA 标志四个分区。
 */
uint16_t ee_init_app(void)
{
    uint16_t ret;

    ret = ee_init_section(EEPROM_SEC_RUNTIME);
    if (ret != EEPROM_OK)
    {
        return ret;
    }

    ret = ee_init_section(EEPROM_SEC_FACTORY);
    if (ret != EEPROM_OK)
    {
        return ret;
    }

    ret = ee_init_section(EEPROM_SEC_CCT_TABLE);
    if (ret != EEPROM_OK)
    {
        return ret;
    }

    ret = ee_init_section(EEPROM_SEC_OTA_FLAG);
    return ret;
}

/**
 * @brief : 保存一段数据到指定 EEPROM 模拟分区。
 * @param  sec: EEPROM 分区编号。
 * @param  data: 需要保存的数据地址，可以是数组或结构体地址。
 * @param  len: 需要保存的数据长度，单位：字节。
 * @return: EEPROM_OK 表示成功，其他值表示保存失败。
 * @note  : 本函数采用追加写入；当前页空间不足时切换到下一空页，分区写满后触发回收。
 */
uint8_t ee_save(eeprom_sec_t sec, const void *data, uint16_t len)
{
    eeprom_sec_info_t *sec_info;
    uint32_t page_index;
    uint8_t ret;

    if ((data == 0) || (len == 0))
    {
        return EEPROM_ERR_PARAM;
    }

    if ((uint32_t)sec >= SEC_MAX)
    {
        return EEPROM_ERR_SEC;
    }

    sec_info = &ee_sec_info[sec];
    if ((sec_info->page_count == 0) || (sec_info->active_page_addr == 0))
    {
        if (ee_init_section(sec) != EEPROM_OK)
        {
            return EEPROM_ERR_FLASH;
        }
    }

    if (RECORD_SIZE(len) > (FLASH_PAGE_SIZE - PAGE_HEAD_SIZE))
    {
        return EEPROM_ERR_PARAM;
    }

    if ((sec_info->write_addr + RECORD_SIZE(len)) > (sec_info->active_page_addr + FLASH_PAGE_SIZE))
    {
        for (page_index = ((sec_info->active_page_addr - sec_info->start_addr) / FLASH_PAGE_SIZE) + 1;
             page_index < sec_info->page_count;
             page_index++)
        {
            uint32_t page_addr;
            uint32_t page_flg;

            page_addr = sec_info->start_addr + (page_index * FLASH_PAGE_SIZE);
            flash_read_buf(page_addr, (uint8_t *)&page_flg, sizeof(page_flg));

            if (page_flg == PAGE_FREE)
            {
                if (ee_format_page(page_addr) != 0)
                {
                    return EEPROM_ERR_FLASH;
                }

                sec_info->active_page_addr = page_addr;
                sec_info->write_addr = page_addr + PAGE_HEAD_SIZE;
                break;
            }
        }

        if (page_index >= sec_info->page_count)
        {
            ret = ee_gc_section(sec, data, len);
            return ret;
        }
    }

    ret = ee_write_record(sec_info, data, len);
    return ret;
}

/**
 * @brief : 从指定 EEPROM 模拟分区读取最新一条指定长度的数据。
 * @param  sec: EEPROM 分区编号。
 * @param  data: 读取数据的目标缓冲区。
 * @param  len: 需要读取的数据长度，单位：字节。
 * @return: EEPROM_OK 表示成功，其他值表示读取失败。
 * @note  : 当前通过 len 匹配记录，并取 seq 最大的有效记录；如果同一分区保存多种等长结构体，
 *          后续需要增加 key 或 record id 进行区分。
 */
uint8_t ee_load(eeprom_sec_t sec, void *data, uint16_t len)
{
    eeprom_sec_info_t *sec_info;
    uint32_t page_index;
    uint32_t best_data_addr = 0;
    uint16_t best_seq = 0;
    eeprom_record_head_t record_head;

    if ((data == 0) || (len == 0))
    {
        return EEPROM_ERR_PARAM;
    }

    if ((uint32_t)sec >= SEC_MAX)
    {
        return EEPROM_ERR_SEC;
    }

    sec_info = &ee_sec_info[sec];
    if ((sec_info->page_count == 0) || (sec_info->active_page_addr == 0))
    {
        if (ee_init_section(sec) != EEPROM_OK)
        {
            return EEPROM_ERR_FLASH;
        }
    }

    for (page_index = 0; page_index < sec_info->page_count; page_index++)
    {
        uint32_t page_addr;
        uint32_t page_flg;
        uint32_t addr;

        page_addr = sec_info->start_addr + (page_index * FLASH_PAGE_SIZE);
        flash_read_buf(page_addr, (uint8_t *)&page_flg, sizeof(page_flg));

        if (page_flg != PAGE_USED)
        {
            continue;
        }

        addr = page_addr + PAGE_HEAD_SIZE;

        while ((addr + sizeof(record_head)) <= (page_addr + FLASH_PAGE_SIZE))
        {
            flash_read_buf(addr, (uint8_t *)&record_head, sizeof(record_head));

            if (record_head.record_flg == RECORD_FREE)
            {
                break;
            }

            if ((record_head.record_flg != RECORD_USED) ||
                (record_head.len == 0) ||
                (RECORD_SIZE(record_head.len) > (FLASH_PAGE_SIZE - PAGE_HEAD_SIZE)) ||
                ((addr + RECORD_SIZE(record_head.len)) > (page_addr + FLASH_PAGE_SIZE)))
            {
                break;
            }

            if ((record_head.len == len) &&
                (record_head.seq != 0) &&
                (record_head.seq != 0xFFFF) &&
                (record_head.seq > best_seq))
            {
                best_seq = record_head.seq;
                best_data_addr = addr + sizeof(record_head);
            }

            addr += RECORD_SIZE(record_head.len);
        }
    }

    if (best_data_addr == 0)
    {
        return EEPROM_ERR_NO_DATA;
    }

    flash_read_buf(best_data_addr, (uint8_t *)data, len);
    return EEPROM_OK;
}
