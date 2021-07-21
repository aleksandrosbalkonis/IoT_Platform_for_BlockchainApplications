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
 * File:     uart.h
 * Release Information : Cortex-M3 DesignStart-r0p1-00rel0
 * ----------------------------------------------------------------
 *
 */
#include "xparameters.h"
#include "xuartlite.h"
#include "xuartlite_l.h"

// Define the UART interrupt handler here
// Already defined in startup_CMSDK_CM1.s
// void ESP32_UART_Handler ( void );
int InitialiseUART( void );
int InitialiseEsp32UART( void );
void DisableUARTInterrupts( void );
void EnableUARTInterrupts( void );
void EspSendHandler(void *CallBackRef, unsigned int EventData);
void EspRecvHandler(void *CallBackRef, unsigned int EventData);
int bufferedUartSend1(u8 * data, int length); 
int CheckUARTRxBytes( void );
int ESP_Send(u8* atCommand, int length, int sendType);
int ESP_Recv(u8* atCommand, int length);
int PC_Recv(u8 * recData, int length);
void SendHandler(void *CallBackRef, unsigned int EventData);
void RecvHandler(void *CallBackRef, unsigned int EventData);
