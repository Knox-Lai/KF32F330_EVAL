/**
  ******************************************************************************
  * @file
  * @author     Amand
  * @version    V1.0
  * @date       12-3-2020
  * @brief      This file contains all the prototypes/macros.
  *
  * Copyright (C) 2020 by WAC Lighting. All rights reserved.
  *
  *
  ******************************************************************************
  */


/** Define to prevent recursive inclusion -------------------------------------*/
#ifndef __ERROR_CODE_H
#define __ERROR_CODE_H

#include  <stdint.h>
//------------------------------------------------------------------------------
// macro
//------------------------------------------------------------------------------

#define  ERROR_CODE_DEBUG_ENABLE  0

#if ( ERROR_CODE_DEBUG_ENABLE)
    #define ERROR_CODE_PRINTF(fmt,...)  Log_print(fmt,##__VA_ARGS__)
#else
    #define ERROR_CODE_PRINTF(fmt,...)
#endif




#define  ERROR_DATABASE_ENABLE  0


#if (ERROR_DATABASE_ENABLE)
    #define ERROR_LIST_LEN  10
#else
    #define ERROR_LIST_LEN  1
#endif

//------------------------------------------------------------------------------
// public types
//------------------------------------------------------------------------------
#if 1
#define ERR_SUCCEE                      0//Success/Yes
#define ERR_FAIL                        1//No
#define ERR_BUSY                        2//Busy
#define ERR_REFUSE                      3//Refuse

#define ERR_IN_FLASH_FAIL               6//Internal flash failure
#define ERR_IN_E2PROM_FAIL              7//Internal eeprom failure
#define ERR_EXT_FLASH_FAIL              8//External flash failure
#define ERR_EXT_E2PROM_FAIL             9//External eeprom failure
#define ERR_OVERFLOW_CURRENT            10//over current
#define ERR_OVERFLOW_VOLTAGE            11//over voltage
#define ERR_MOSFET_OVER_TEMP            12//over temperature for MOSFET



#define ERR_IAP_PACKAGE_INDEX           20//
#define ERR_IAP_CHECKSUM                21//
#define ERR_IAP_FILE_LEN                22//


#define ERR_PACKAGE_SOURCE_ID           30//
#define ERR_PACKAGE_COMMAND             31//
#define ERR_PACKAGE_PAYLOAD             32//
#define ERR_PACKAGE_CHECKSUM            33//


#define ERR_DEVICE_ID                   40//
#define ERR_DEVICE_TYPE                 41//
#define ERR_CUS_BRI_LEV                 42//customize brightness Level.   
#define ERR_ASCII_CODE                  43//

#define ERR_MODE_CODE                   50//

#define ERR_NEED_RESET                  0xff

#else

enum
{
	ERR_SUCCEE = 0,						//Success/Yes
	ERR_FAIL = 1,						//No
	ERR_BUSY = 2,						//Busy
	ERR_REFUSE = 3,						//Refuse
	ERR_IN_FLASH_FAIL = 4,				//Internal flash failure
	ERR_IN_E2PROM_FAIL = 5,				//Internal eeprom failure
	ERR_EXT_FLASH_FAIL = 6,				//External flash failure
	ERR_EXT_E2PROM_FAIL = 7,			//External eeprom failure
	ERR_UNSUPPORT_COMMAND = 8,			//Unsupported command
	ERR_PACKAGE_PAYLOAD = 9,			//Unsupported payload
	ERR_CHECKSUM_FAIL = 10,				//Checksum failure
	ERR_ILLEGAL_DEVICE_COMMAND = 11,	//command from illegal device
	ERR_OVERFLOW_CURRENT = 12,			//over current
	ERR_OVERFLOW_VOLTAGE = 13,			//over voltage
	ERR_MOSFET_HYPERtHERNAL = 14,		//over temperature for MOSFET
	ERR_ENVIRONMENT_HYPERtHERNAL = 15,	//over temperature for environment
	
    ERR_IAP_PACKAGE_INDEX = 16,
    ERR_IAP_CHECKSUM = 17,
    ERR_IAP_FILE_LEN = 18,


	ERR_PACKAGE_LENGTH = 20,
	ERR_PACKAGE_TARGET_ID = 21,
	ERR_PACKAGE_SOURCE_ID = 22,
	ERR_PACKAGE_COMMAND = 23,
	ERR_PACKAGE_PAYLOAD = 24,
	ERR_PACKAGE_CHECKSUM = 25,
    

	ERR_DEVICE_ID = 40,

    ERR_DEVICE_TYPE = 50,    

	ERR_READ_DEVICE_TIMEOUT = 80,
	ERR_WRITE_DEVICE_TIMEOUT = 81,
    ERR_READ_DEVICE_ERROR_RESPON = 85,

    ERR_IN_FLASH_FAIL = 100,
    //ERR_IAP_CHECKSUM = 101,
    //ERR_IAP_PACKAGE_INDEX = 102,
    //ERR_IAP_FILE_LEN = 103,
    
	ERR_ERRLIST_OVERFLOW = 255,
};

#endif

//------------------------------------------------------------------------------
// public function
//------------------------------------------------------------------------------

uint8_t ERRLIST_getFirst(void);
uint8_t* ERRLIST_getAll(void);

void ERRLIST_add(uint8_t eValue);
void ERRLIST_delete(uint8_t eValue);
void ERRLIST_modify(uint8_t oldValue,uint8_t newValue);
int8_t ERRLIST_seek(uint8_t eValue);


#endif

/************************ end of file*****************************************/
