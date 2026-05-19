#ifndef __KF32_EVAL_H
#define __KF32_EVAL_H

#include "KF32F_BASIC.h"

typedef enum
{
  LED1 = 0,
  LED2 = 1,
  LED3 = 2,

} led_typedef;

typedef enum
{
  EVAL_COM1 = 0,
  EVAL_COM2 = 1,
  EVAL_COM3 = 2,
  EVAL_COM4 = 3,

} usart_typedef;

#define LEDn                             3

#define LED1_PIN                         GPIO_PIN_MASK_5
#define LED1_GPIO_PORT                   GPIOH_SFR

#define LED2_PIN                         GPIO_PIN_MASK_6
#define LED2_GPIO_PORT                   GPIOH_SFR

#define LED3_PIN                         GPIO_PIN_MASK_13
#define LED3_GPIO_PORT                   GPIOD_SFR

#define EVAL_COMn                             4

#define EVAL_COM1_USART                  USART3_SFR
#define EVAL_COM1_GPIO_PORT              GPIOA_SFR
#define EVAL_COM1_TX_PIN_NUM             GPIO_Pin_Num_3
#define EVAL_COM1_RX_PIN_NUM             GPIO_Pin_Num_2
#define EVAL_COM1_TX_PIN                 GPIO_PIN_MASK_3
#define EVAL_COM1_RX_PIN                 GPIO_PIN_MASK_2
#define EVAL_COM1_TX_PIN_RMP             GPIO_RMP_AF6_USART3
#define EVAL_COM1_RX_PIN_RMP             GPIO_RMP_AF6_USART3
#define EVAL_COM1_INT                    INT_USART3
#define EVAL_COM1_BAUDRATE               115200

#define EVAL_COM2_USART                  USART5_SFR
#define EVAL_COM2_GPIO_PORT              GPIOA_SFR
#define EVAL_COM2_TX_PIN_NUM             GPIO_Pin_Num_6
#define EVAL_COM2_RX_PIN_NUM             GPIO_Pin_Num_5
#define EVAL_COM2_TX_PIN                 GPIO_PIN_MASK_6
#define EVAL_COM2_RX_PIN                 GPIO_PIN_MASK_5
#define EVAL_COM2_TX_PIN_RMP             GPIO_RMP_AF6_USART5
#define EVAL_COM2_RX_PIN_RMP             GPIO_RMP_AF6_USART5
#define EVAL_COM2_INT                    INT_USART5
#define EVAL_COM2_BAUDRATE               115200

#define EVAL_COM3_USART                  USART0_SFR
#define EVAL_COM3_GPIO_PORT              GPIOA_SFR
#define EVAL_COM3_TX_PIN_NUM             GPIO_Pin_Num_1
#define EVAL_COM3_RX_PIN_NUM             GPIO_Pin_Num_0
#define EVAL_COM3_TX_PIN                 GPIO_PIN_MASK_1
#define EVAL_COM3_RX_PIN                 GPIO_PIN_MASK_0
#define EVAL_COM3_TX_PIN_RMP             GPIO_RMP_AF5_USART0
#define EVAL_COM3_RX_PIN_RMP             GPIO_RMP_AF5_USART0
#define EVAL_COM3_INT                    INT_USART0
#define EVAL_COM3_BAUDRATE               115200

#define EVAL_COM4_USART                  USART1_SFR
#define EVAL_COM4_GPIO_PORT              GPIOC_SFR
#define EVAL_COM4_TX_PIN_NUM             GPIO_Pin_Num_11
#define EVAL_COM4_RX_PIN_NUM             GPIO_Pin_Num_10
#define EVAL_COM4_TX_PIN                 GPIO_PIN_MASK_11
#define EVAL_COM4_RX_PIN                 GPIO_PIN_MASK_10
#define EVAL_COM4_TX_PIN_RMP             GPIO_RMP_AF5_USART1
#define EVAL_COM4_RX_PIN_RMP             GPIO_RMP_AF11_USART
#define EVAL_COM4_INT                    INT_USART1
#define EVAL_COM4_BAUDRATE               115200

void kf_eval_usart_init(usart_typedef com_id);

void kf_eval_led_init(led_typedef Led);
void kf_eval_led_on(led_typedef Led);
void kf_eval_led_off(led_typedef Led);
void kf_eval_led_toggle(led_typedef Led);


#endif
