#include "ecdsa_functions.h"

#define WIFI_TIMEOUT 20000

class at_commands
{
    char buffer [30];
    char server_ready [10]; 
    char plainTxt [200];
    
   public:
    
//......................Function that scans and displays all the available........................//
//.....................wifi networks as well as some information about them.......................//

    void wifi_scan(Stream &Uart)
    {
        Uart.println("scan start");
    
        // WiFi.scanNetworks will return the number of networks found
        int n = WiFi.scanNetworks();
        Uart.println("scan done");
        if (n == 0) 
        {
            Uart.println("no networks found");
        } 
        else 
        {
            Uart.print(n);
            Uart.println(" networks found");
            for (int i = 0; i < n; ++i) 
            {
                // Print SSID and RSSI for each network found
                Uart.print(i + 1);
                Uart.print(": ");
                Uart.print(WiFi.SSID(i));
                Uart.print(" (");
                Uart.print(WiFi.RSSI(i));
                Uart.print(")");
                Uart.println((WiFi.encryptionType(i) == WIFI_AUTH_OPEN)?" ":"*");
                delay(10);
            }
        }
    }
        
//......................Function that attempts to connect to a specified..........................//
//............................wifi network(requires name, password................................//

    void wifi_connect(Stream &Uart, char * netName,char * password)
    {
         Uart.print("Connecting to wifi");
         WiFi.begin(netName, password);
         unsigned long conStartTime = millis();

         while(WiFi.status() != WL_CONNECTED && millis()-conStartTime < WIFI_TIMEOUT)
         {
            Uart.print(".");
            delay(500); 
         }
         Uart.println("");
    }
    
//......................Function that attempts to connect to a server.............................//
//.............................setting the esp32 as a client......................................//

    WiFiClient server_connect(Stream &Uart, const char * host , int port)
    {
          Uart.println(WiFi.localIP());
          WiFiClient client;
          if(!client.connect(host, port))
          {
              Uart.println("Connection to the server failed");
              return 0;
          }
          Uart.print("Connected to server ");
          Uart.println(host);
          return client;  
    }
    
//......................Function that establishes a chat like environment.........................//
//...................................between host and client......................................//

    void server_communication_mode(Stream &Uart, WiFiClient client)
    {
      char last_letter;
      sprintf(buffer, "");
      
        while(1)
        {
            if (client.available() > 0)
            {
                last_letter = client.read();
                sprintf(buffer, "%s%c", buffer, last_letter);
                if(last_letter == '\n')
                {
                    Uart.print(buffer);
                    sprintf(buffer, "");
                }   
            } 
            if (Uart.available() > 0)
            {
                last_letter = Uart.read();
                sprintf(buffer, "%s%c", buffer, last_letter);
                if(last_letter == '\n')
                {
                    client.print(buffer);  
                    if(!strcmp(buffer, "exit\r\n"))
                    {
                        client.stop();
                        break;  
                    }
                    sprintf(buffer, "");
                }   
            } 
        }  
    }
       
//................Function that reads a certain file and displays it on the.......................//
//......................................Uart monitor............................................//

    bool read_file(Stream &Uart, char file_name [], char file_content [], bool display)
    {   
        File file = SPIFFS.open(file_name, FILE_READ);
        if (!file.available())
        {
            Uart.println("File is empty or doesnt exist!!");
            file.close();
            return false;
        }
        Uart.println(file_name);
        if (display)
        {
            while(file.available())
            {
                Uart.write(file.read());
            }
            Uart.println("");  
        }
        else
        {
            while(file.available())
            {
                sprintf(file_content, "%s%c", file_content, file.read());  
            }
        }
        file.close();
        return true;
    }

//................Function that attempts to send a file to a server. It waits.....................//
//................unti it receives the appropriate response before sending it.....................//

    void send_file(WiFiClient client, char file_name [])
    {
        sprintf(server_ready, "");
        File file = SPIFFS.open(file_name, FILE_READ);
        
        client.print("send_file_request\r\n");
        while (!client.available());
        while (client.available())
        {
            sprintf(server_ready, "%s%c", server_ready, client.read());  
            if (server_ready[strlen(server_ready) - 1] == '\n')
            {
                break;  
            }
        }
        if (!strcmp(server_ready, "OK\r\n"))
        {
            
            client.write(file_name);
        }
        delay(100);
        client.write(file);
        file.close();
    }
     
//..............Function that attempts to receive a file to a server. It waits....................//
//................unti it receives the appropriate response before receiving......................//

    void get_file(WiFiClient client)
    {
        sprintf(buffer, "");
         
        client.print("get_file_request\r\n");
        while (!client.available());
        while (client.available())
        {
            sprintf(buffer, "%s%c", buffer, client.read());  
            if (buffer[strlen(buffer) - 1] == '\n')
            {
                break;  
            }
        }
        if (!strcmp(buffer, "OK\r\n"))
        {
            sprintf(buffer, "/received");
            while (!client.available());
            while (client.available())  
            {
                sprintf(buffer, "%s%c", buffer, client.read());
            }
        }
        File file = SPIFFS.open(buffer, FILE_WRITE);
        sprintf(buffer, "");
        while (!client.available());
        while (client.available())  
        {
            sprintf(buffer, "%c", client.read());
            file.print(buffer);
        }
        file.close();
    }
    
//................Function that calls the appropriate cryptographic function......................//
//..................................according to user input.......................................//
    
    void ecdsa_funct(Stream &Uart, int sel)
    {
        switch(sel)
        {

            int user_input;
            
            case 0:
                Uart.println("Select the private Key for this session:");
                Uart.println(" 0.Set youy own private Key.\r\n 1.Use the default private Key.");
                if(!get_user_input(Uart, NULL, &user_input, INT_IN))
                {
                    break;      
                }
                ecdsa.set_privKey(Uart, user_input == 1);
                break;

            case 1:
                ecdsa.gen_pubKey(ecdsa.get_privKey());
                break;

            case 2:
                sprintf(buffer, "");
                  
                sprintf(plainTxt,"HelloWorld\n"); 
                Uart.println("Select the input of the hash function:");
                Uart.println(" 0.HelloWorld\\n.\r\n 1.Your own text.\r\n 2.Designated Folder.");
                if(!get_user_input(Uart, NULL, &user_input, INT_IN))
                {
                    break;      
                }
                if(user_input == 1)
                {   
                    Uart.println("Enter the text you want to hash.");  
                    if(!get_user_input(Uart, plainTxt, NULL, STR_IN))
                    {
                        break;  
                    }
                }
                else if(user_input == 2)
                {   
                    Uart.println("Enter the name of the file you want to hash.");  
                    if(!get_user_input(Uart, buffer, NULL, STR_IN))
                    {
                        break;  
                    }
                    sprintf(plainTxt, "");
                    if(!read_file(Uart, buffer, plainTxt, false))
                    {
                        break;
                    }
                }
                ecdsa.hash_txt(plainTxt, buffer);
                sprintf(plainTxt, "");

                break;

            case 3: 
                ecdsa.sign_txt(ecdsa.get_hashedTxt(), ecdsa.get_privKey());
                break;

            case 4: 
                bool authenticity;
                authenticity = ecdsa.verify_signature(ecdsa.get_signature(), ecdsa.get_signature_len(), ecdsa.get_hashedTxt(), ecdsa.get_pubKey(), ecdsa.get_pubKey_len());
                if (authenticity)
                {
                    Uart.println("Authenticity Check completed successfully!!");
                    break;
                }
                Uart.println("Authenticity Check failed!!");
                break;

            case 5:
                ecdsa.test_ecdsa();
                break;

            default:
                Uart.println("There is no such function!!");
                break;
             
        } 
         
    }
        
//...............Function that halts the program in order to wait until the...................//
//.............user provides an input (input_type false = int, true = string).................//

    bool get_user_input(Stream &Uart, char user_input [], int * user_input_int, bool input_type)
    {
        char temp;
        
        
        while(!Uart.available());
        if(input_type)
        {
            sprintf(user_input, "");
            while(Uart.available())
            {   
                temp = Uart.read();
                if(temp == '\r') 
                {
                    break;  
                }  
                sprintf(user_input, "%s%c", user_input, temp);
            }
        }
        else
        {
            *user_input_int = Uart.parseInt();
            if(!Uart.read() == '\r')
            {
                Uart.println("Wrong input format !!");  
                return false;      
            }      
        }
        if(!Uart.read() == '\n')
        {
            Uart.println("Wrong input format !!");  
            return false;
        }
        return true;
    }

};

at_commands at;
