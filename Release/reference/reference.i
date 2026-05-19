# 1 "../reference/reference.c"
# 1 "E:\\KF_Workspace\\Project_WorkSpace\\KF32F330_EVAL\\Release//"
# 1 "<command-line>"
# 1 "../reference/reference.c"
uint32_t get_entry_addr_and_format(uint8_t sec_index)
{

 uint32_t addr_cur,addr_end,temp;
 uint32_t addr_valid_entry = 0;



    addr_cur = sector[sec_index].start_addr + sector[sec_index].total_len - sector[sec_index].entry_len;
    addr_end = sector[sec_index].start_addr;

    while(addr_cur >= addr_end)
    {


        temp = *(uint32_t*)(addr_cur);
        if(temp == FLG_USED)
        {

            EERPOM_DRIVER_PRINTF("find valid entry addr:0x%08x\r\n",addr_cur);
            memset(data_buf,0,sizeof(data_buf));
            FLASH_read_buf(addr_cur, sizeof(data_buf), data_buf);
            addr_valid_entry = addr_cur;
            break;
        }

        addr_cur -= sector[sec_index].entry_len;
    }


    addr_cur = sector[sec_index].start_addr;
    addr_end = sector[sec_index].start_addr + sector[sec_index].total_len;


    if(addr_valid_entry == 0)
    {
        EERPOM_DRIVER_PRINTF("sector:%d can't find any valid entry\r\n",sec_index);

        addr_valid_entry = sector[sec_index].start_addr;


        while(addr_cur < addr_end)
        {
            temp = *(uint32_t*)(addr_cur);
            if(temp != FLG_FREE)
            {
                EERPOM_DRIVER_PRINTF("not free,addr:0x%08x,sentor addr:0x%08x\r\n",addr_cur,get_sect_addr(addr_cur));


                FLASH_erase_sector(get_sect_addr(addr_cur), 1);

                addr_cur = get_sect_addr(addr_cur) + SECTOR_SIZE;
            }
            else
            {
                addr_cur += sector[sec_index].entry_len;
            }
        }
# 79 "../reference/reference.c"
    }

    else
    {

        EERPOM_DRIVER_PRINTF("sector:%d,erase all sector that not be marked as FREE\r\n",sec_index);
        while(addr_cur < addr_end)
        {



            if(get_sect_addr(addr_cur) != get_sect_addr(addr_valid_entry))
            {
                temp = *(uint32_t*)(addr_cur);
                if(temp != FLG_FREE)
                {
                    EERPOM_DRIVER_PRINTF("erase sector,addr0x%08x\r\n",get_sect_addr(addr_cur));


                    FLASH_erase_sector(get_sect_addr(addr_cur), 1);

                    addr_cur = get_sect_addr(addr_cur) + SECTOR_SIZE;
                }
                else
                {

                    addr_cur += sector[sec_index].entry_len;
                }
            }
            else
            {
                addr_cur = get_sect_addr(addr_cur) + SECTOR_SIZE;
            }
        }




        EERPOM_DRIVER_PRINTF("sector:%d,check and handle the sector that valid entry belong to\r\n",sec_index);
        addr_cur = addr_valid_entry + sector[sec_index].entry_len;
        addr_end = get_sect_addr(addr_valid_entry) + SECTOR_SIZE;
        while(addr_cur < addr_end)
        {



            temp = *(uint32_t*)(addr_cur);
            if(temp != FLG_FREE)
            {




                if(sector[sec_index].total_len <= SECTOR_SIZE)
                {
                    EERPOM_DRIVER_PRINTF("warn:there are only one sector!!!\r\n");


                    FLASH_erase_sector(get_sect_addr(addr_cur), 1);


                    FLASH_write_buf(addr_valid_entry, data_buf, sizeof(data_buf));
                }
                else
                {
                    EERPOM_DRIVER_PRINTF("write to next sector and then erase current\r\n");


                    addr_end = (addr_end >= (sector[sec_index].start_addr + sector[sec_index].total_len))?
                                    sector[sec_index].start_addr:addr_end;

                    FLASH_write_buf(addr_end, data_buf, sizeof(data_buf));

                    addr_valid_entry = addr_end;


                    FLASH_erase_sector(get_sect_addr(addr_cur), 1);
                }

                break;
            }

            addr_cur += sector[sec_index].entry_len;
        }
# 185 "../reference/reference.c"
    }


 return addr_valid_entry;
}

void data_mem_init(uint8_t sec_index)
{
    if((sec_table[sec_index][0]&0xFFFFFE00) != sec_table[sec_index][0])
    {
        EERPOM_DRIVER_PRINTF("start address of sector %d not sector_align!!",sec_index);
    }

    if(SECTOR_SIZE%sec_table[sec_index][2] != 0)
    {
        EERPOM_DRIVER_PRINTF("length of data entry set error!!");
    }

    sector[sec_index].start_addr = sec_table[sec_index][0];
    sector[sec_index].total_len = sec_table[sec_index][1];
    sector[sec_index].entry_len = sec_table[sec_index][2];

    sector[sec_index].cur_entry = get_entry_addr_and_format(sec_index);
# 229 "../reference/reference.c"
}
