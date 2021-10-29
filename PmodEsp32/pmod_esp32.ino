#include "basic_config.h"
#include "WiFi.h"
#include "HTTPClient.h"
#include "HardwareSerial.h"
#include "menu.h"
#include "at_commands.h"
#include "time.h"



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

    Serial.println("Setup done");

    //Scan for available WiFi connections and print them on UART0 //
    gen.wifi_scan();
    Serial.println("");

    //Connect to a predefined Network for testing purposes //
    gen.wifi_connect(wifi_name,wifi_password);

    if(WiFi.status() == WL_CONNECTED)
    {
        Serial.print("Successfuly connected to Wifi:"); 
        Serial.println(WIFI_NAME);
        Serial.println(WiFi.localIP());
    }
    else
    {
        Serial.print("Connection to Wifi:"); 
        Serial.print(WIFI_NAME);
        Serial.println("FAILED!!");
    } 
    FSYSTEM.begin(true);

    File file = FSYSTEM.open("/nonce.der", FILE_READ);
    if (!IS_OPENED(file))
    {
        file.close();

        file = FSYSTEM.open("/nonce.der", FILE_WRITE);
        file.print("00");
    }
    file.close();

    int args [2];

    Serial.println("Press any key !!");
    while(!Serial.available());
    int value = Serial.parseInt();
    args [0] = value;
    Serial.read();
    Serial.read();
    while(!Serial.available());
    value = Serial.parseInt();
    args [1] = value; 


    at.setup();
    at.create_transaction(args, 2);
    at.send_transaction();
    at.clear_resources();

}

void loop()
{   
    next_menu = menu.main_menu(next_menu);

}

