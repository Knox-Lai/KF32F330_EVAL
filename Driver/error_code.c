#include "error_code.h"



//------------------------------------------------------------------------------
// public variable define
//------------------------------------------------------------------------------


uint8_t eList[1];

//------------------------------------------------------------------------------
// public function define
//------------------------------------------------------------------------------



/**
  * @brief      get the worst error from list.
  * @param      none.
  * @return     the worst error value.
  */

uint8_t ERRLIST_getFirst(void)
{
    return eList[0];
}



/**
  * @brief      get the all error value from list.
  * @param      none.
  * @return     pointer to the error list.
  */

uint8_t* ERRLIST_getAll(void)
{
    return &eList[0];
}



/**
  * @brief      add one error value to error list.
  * @param      none.
  * @return     none.
  */

void ERRLIST_add(uint8_t eValue)
{    
#if (ERROR_DATABASE_ENABLE)
    uint8_t i,j;
    
    /**Sort from large to small******/
    for(i = 0;i < ERROR_LIST_LEN;i++)
    {
        if(eValue > eList[i])
        {
            break;
        }
    }

    for(j = i + 1;j < ERROR_LIST_LEN;j++)
    {
        eList[j] = eList[j - 1];
        if(eList[j] == 0)
        {
            break;
        }
    }
    eList[i] = eValue;
#else
    //if(eValue)
    //{
        //eList[0] = ERR_FAIL;
    //}    
    eList[0] = eValue;        
#endif
}




/**
  * @brief      delete one error value to error list.
  * @param      none.
  * @return     none.
  */

void ERRLIST_delete(uint8_t eValue)
{
#if (ERROR_DATABASE_ENABLE)
    uint8_t i,j;

    /**delete all error value*/
    if(eValue == 0)
    {
        for(i = 0;i < ERROR_LIST_LEN;i++)
        {
            if(eList[i] == 0)
            {
                break;
            }
            else
            {
                eList[i] = 0;
            }
        }
    }
    else
    {
        for(i = 0;i < ERROR_LIST_LEN;i++)
        {
            if(eList[i] == eValue)
            {
                break;
            }
        }
        
        for(;i < (ERROR_LIST_LEN - 1);j++)
        {
            eList[i] = eList[i + 1];
            if(eList[i] == 0)
            {
                break;
            }
        }

    }

#else
    (void)eValue;
    eList[0] = 0;
#endif
}



/**
  * @brief      use the new error value instead of the old one.
  * @param      none.
  * @return     none.
  */

void ERRLIST_modify(uint8_t oldValue,uint8_t newValue)
{
    ERRLIST_delete(oldValue);
    ERRLIST_add(newValue);
}




/**
  * @brief      seek one error value from the error list.
  * @param      none.
  * @return     the index of error value.
  */

int8_t ERRLIST_seek(uint8_t eValue)
{
#if (ERROR_DATABASE_ENABLE)
    uint8_t i;

    for(i = 0;i < ERROR_LIST_LEN;i++)
    {
        if(eList[i] == eValue)
        {
            return i;
        }
    }    
#endif    
    return -1;
}



/************************ end of file*****************************************/
