/*
 * Copyright:
 * ----------------------------------------------------------------
 * This confidential and proprietary software may be used only as
 * authorised by a licensing agreement from ARM Limited
 *   (C) COPYRIGHT 2014, 2018 ARM Limited
 *       ALL RIGHTS RESERVED
 * The entire notice above must be reproduced on all authorised
 * copies and copies may only be made to the extent permitted
 * by a licensing agreement from ARM Limited.
 * ----------------------------------------------------------------
 * File:     gpio.h
 * Release Information : Cortex-M3 DesignStart-r0p1-00rel0
 * ----------------------------------------------------------------
 *
 */
 
//#include "xgpio.h"      // Needed for u32 definition
#include "xil_types.h"
#include <stdbool.h>


int InitialiseGPIO( void );
int InitialiseEsp32GPIO( void );
void EnableGPIOInterrupts( void );
void ESP32_GPIO_Cfg ( u32 mode, int enable );
u32 ESP32_GPIO_Read (int channel);
void IncLeds( void );
void ClearLeds (void);
void SetDAPLinkQSPIMode( u32 mode );
bool getUartRecv( void );

// void GPIO0_Handler ( void );
// void GPIO1_Handler ( void );

/* GPIO channel identifiers */
#define ESP_INPUT_CHANNEL 2
#define ESP_OUTPUT_CHANNEL 1
#define ARTY_A7_LED_CHANNEL 1
#define ARTY_A7_DIP_CHANNEL 2
#define ARTY_A7_RGB_CHANNEL 1
#define ARTY_A7_PB_CHANNEL  2
#define ARTY_A7_DAPLINK_GPIO_CHANNEL 1

// GPIO register control
#define QSPI_XIPMODE  0x00                                              // XIP controller mode
#define QSPI_QSPIMODE 0x01                                              // QSPI controller mode

// ESP pin managemenet

#define ESP_UART_RTS 0b00001
#define ESP_GPIO_1	 0b00010
#define ESP_RESET_EN 0b00100
#define ESP_UART_SPI 0b01000
#define ESP_GPIO_2	 0b10000

#define ESP32_UART 	true;
#define PC_UART 		false;
