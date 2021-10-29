#define HOST          "192.168.43.129"  //MOB "192.168.43.129"
#define PORT           6544
#define WIFI_NAME     "POCOPHONE F1"    //MOB "POCOPHONE F1"
#define WIFI_PASSWORD "ballaban"        //MOB "ballaban"
#define RX2            16
#define TX2            17
#define LED            12
#define STR_IN         true
#define INT_IN         false
#define SERIAL0        true
#define SERIAL1        false


#include "WiFi.h"
#include "HardwareSerial.h"
#include "SPIFFS.h"
#include "menu.h"




int next_menu = -1;

void setup()
{
  char wifi_name [20]     = WIFI_NAME;
  char wifi_password [20] = WIFI_PASSWORD;
  
    // Setup Uart0(PC) and Uart1(FPGA) //
    Serial.begin(115200);
    Serial1.begin(115200, SERIAL_8N1, RX2, TX2);

    // Setup led on esp32  // 
    pinMode(LED, OUTPUT);  
    
    // Set WiFi to station mode and disconnect from an AP if it was previously connected //
    WiFi.mode(WIFI_STA);
    WiFi.disconnect();
    delay(100);

    Serial1.println("Setup done");

    //Scan for available WiFi connections and print them on UART0 //
    at.wifi_scan(menu.get_serial());
    Serial1.println("");

    //Connect to a predefined Network for testing purposes //
    at.wifi_connect(menu.get_serial(), wifi_name,wifi_password);

    if(WiFi.status() == WL_CONNECTED)
    {
        Serial1.print("Successfuly connected to Wifi:"); 
        Serial1.println(WIFI_NAME);
        Serial1.println(WiFi.localIP());
    }
    else
    {
        Serial1.print("Connection to Wifi:"); 
        Serial1.print(WIFI_NAME);
        Serial1.println(" FAILED!!");
    } 
    SPIFFS.begin(true);
    for(int i=0; i<5; i++)
    {
        at.ecdsa_funct(menu.get_serial(), i);
        delay(50);  
    }
    
}

void loop()
{   
    next_menu = menu.main_menu(next_menu);
}

