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
 * File:     uart.c
 * Release Information : Cortex-M3 DesignStart-r0p1-00rel0
 * ----------------------------------------------------------------
 *
 */

/*
 * --------Included Headers--------
 */

#include <stdio.h>
#include <ctype.h>
#include <string.h>
#include <stdlib.h>
#include <time.h>


#include "m3_for_arty.h"        // Project specific header
#include "uart.h"
#include "xil_printf.h"
#include "gpio.h"

// #include "uart_stdout.h"

//#include "platform.h"
#include "xparameters.h"
#include "xuartlite.h"
#include "xuartlite_l.h"

static XUartLite UART0_instance;
static XUartLite ESP32_UART_instance;

/*
 * The following counters are used to determine when the entire buffer has
 * been sent and received.
 */
static volatile int TotalReceivedCount;
static volatile int TotalSentCount;
int test = 0;

#define UART_BUFFER_SIZE        256

u8 UARTSendBuffer[UART_BUFFER_SIZE];
u8 UARTReceiveBuffer[UART_BUFFER_SIZE];

int InitialiseUART( void )
{
    int Status;

    /*
    * Initialize the UartLite driver so that it's ready to use.
    */
    Status = XUartLite_Initialize(&UART0_instance, XPAR_AXI_UARTLITE_0_DEVICE_ID);
    if (Status != XST_SUCCESS) {
        return XST_FAILURE;
    }
		
		

    /*
    * Setup the handlers for the UartLite that will be called from the
    * interrupt context when data has been sent and received, specify a
    * pointer to the UartLite driver instance as the callback reference so
    * that the handlers are able to access the instance data.
    */
    XUartLite_SetSendHandler(&UART0_instance, SendHandler, &UART0_instance);
    XUartLite_SetRecvHandler(&UART0_instance, RecvHandler, &UART0_instance);
    /*
    * Start receiving data before sending it since there is a loopback.
    */
    XUartLite_Recv(&UART0_instance, UARTReceiveBuffer, UART_BUFFER_SIZE);
		
    return XST_SUCCESS;
}

//****************************************Arxikopoihsh Uart gia to esp32**********************************************//
int InitialiseEsp32UART( )
{
	int Status;
	XUartLite_Config *ConfigPtr;
	ConfigPtr = XUartLite_LookupConfig(XPAR_AXI_UARTLITE_1_DEVICE_ID);
	Status = XUartLite_CfgInitialize(&ESP32_UART_instance, ConfigPtr , XPAR_UARTLITE_1_BASEADDR);
  if (Status != XST_SUCCESS) {
      return XST_FAILURE;
  }

	
  XUartLite_SetSendHandler(&ESP32_UART_instance, EspSendHandler, &ESP32_UART_instance);
  XUartLite_SetRecvHandler(&ESP32_UART_instance, EspRecvHandler, &ESP32_UART_instance);
	
	ESP32_GPIO_Cfg(ESP_UART_RTS,0);
	
	XUartLite_Recv(&ESP32_UART_instance, UARTReceiveBuffer, UART_BUFFER_SIZE);
	

  return XST_SUCCESS;
}

//***********************Arxikopoihsh Interrupt handler apostolhs dedomenwn gia to esp32********************************//
void EspSendHandler(void *CallBackRef, unsigned int EventData)
{
	//Do nothing
}

//***********************Arxikopoihsh Interrupt handler paralabhs dedomenwn gia to esp32********************************//
void EspRecvHandler(void *CallBackRef, unsigned int EventData)
{
		test = 1;
    TotalReceivedCount = EventData;
}


void SendHandler(void *CallBackRef, unsigned int EventData)
{
	
    TotalSentCount = EventData;
}

void RecvHandler(void *CallBackRef, unsigned int EventData)
{
		test = 2;
    TotalReceivedCount = EventData;
}

int CheckUARTRxBytes( void )
{
    static int  BytesRx;
    int         Diff;
    
    Diff = TotalReceivedCount - BytesRx;
    
    if ( Diff )
        BytesRx = TotalReceivedCount;
    
    return Diff;
}


void EnableUARTInterrupts( void )
{
    XUartLite_EnableInterrupt(&UART0_instance);
		
    XUartLite_EnableInterrupt(&ESP32_UART_instance);
}

void DisableUARTInterrupts( void )
{
    XUartLite_DisableInterrupt(&UART0_instance);
		
    XUartLite_DisableInterrupt(&ESP32_UART_instance);
}

// Define the UART interrupt handler here
void UART0_Handler ( void )
{
    XUartLite_InterruptHandler(&UART0_instance);
    NVIC_ClearPendingIRQ(UART0_IRQn);
		//print("Uart Interrupt\r\n");
    // Test to indicate when the IRQ is called
    // Used to detect received characters
    // IncLeds();

}

//*****************************Interrupt handler ths Uart gia to esp32**************************************//
void ESP32_UART_Handler ( void )
{
    XUartLite_InterruptHandler(&ESP32_UART_instance);
    NVIC_ClearPendingIRQ(ESP32_UART_IRQn);
}

//***********Methodos poy apothikeuei ta dedomena ston kataxwrhth apostolhs ths Uart tou esp32**************//
int ESP_Send( u8 * atCommand ,int length, int sendType)
{
	int bytesSent;	
	
	while(XUartLite_IsSending(&ESP32_UART_instance));
	if (sendType == 0)
	{
		bytesSent = XUartLite_Send(&ESP32_UART_instance,atCommand, length);
	}
	else 
	{
		bytesSent = bufferedUartSend1(atCommand, length);
	}	
	while (XUartLite_IsSending(&ESP32_UART_instance)){}	
		
	return bytesSent;
}
	
//***********Methodos poy diabazei ta dedomena ston kataxwrhth paralabhs ths Uart tou esp32****************//
	int ESP_Recv(u8 * recData, int length)
{
	int recBytesSent;
	if(test != 0)
	{
		xil_printf("Test : %d\r\n",test);
	}
	while(XUartLite_IsSending(&ESP32_UART_instance));
	recBytesSent = XUartLite_Recv(&ESP32_UART_instance, recData, length);
	while(XUartLite_IsSending(&ESP32_UART_instance));
	
	
	return recBytesSent;
}

//***************Methodos poy diabazei ta dedomena ston kataxwrhth paralabhs ths Usb Uart*******************//
//*Den apaiteitai paromoia methodos gia ton kataxwrhth paralbhs kathos diaxeirizetai apo thn methodo print**//
int PC_Recv(u8 * recData, int length)
{
	int recBytesSent;
	
	if(test != 0)
	{
		xil_printf("Test : %d\r\n",test);
	}
	while(XUartLite_IsSending(&UART0_instance));
	recBytesSent = XUartLite_Recv(&UART0_instance, recData, length);
	while(XUartLite_IsSending(&UART0_instance));
	
	
	return recBytesSent;
}




//***********Methodos poy apothikeuei ta dedomena ston kataxwrhth apostolhw ths Uart tou esp32****************//
//*************H sugkekrimenh methodos einai energopoieitai gia apostolh polu megalwn paketwn*q	****************//
int bufferedUartSend1(u8 * data, int length) {
    u8 * cursor = data;
		int bytesSent = 0;
    for(int i = 0; i < length; i++) {
        while(XUartLite_IsSending(&ESP32_UART_instance));
        bytesSent += XUartLite_Send(&ESP32_UART_instance, cursor, 1);
        cursor++;

    }
		cursor = cursor - length;
    return bytesSent;
}
