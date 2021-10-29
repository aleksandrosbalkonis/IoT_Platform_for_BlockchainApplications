#include "at_commands.h"

class menu
{  
  const char * host1 = HOST;
  const int  port1 = PORT;
  int slave_menu = -1;
  WiFiClient client;
  bool CurrentUart = SERIAL1;
  
  public:
    int main_menu(int menu)
    {
        Stream &Uart = get_serial();
        int user_input;
        if (menu == -1)
        {
            Serial.println("Main menu");
            Uart.println("");
            Uart.println("0:Go to server menu.");
            Uart.println("1:Go to cryptographic functions menu.");
            Uart.println("2:Toggle slave mode.");
            user_input = menu_choice(2);
            return user_input;
        }
        if (menu == 0)
        {
            return server_menu();
        }
        else if (menu == 1)
        {
            return cryptography_menu();  
        }
        else
        {
            CurrentUart = !CurrentUart;
            return -1;
        }
    }
    
    int server_menu()
    {
        Stream &Uart = get_serial();
        int user_input;
        char file_name [30];
        Serial.println("Server menu");
        Uart.println("");
        Uart.println("0:Connect to Server.");
        Uart.println("1:Send file to server.");
        Uart.println("2:Get file from server.");
        Uart.println("3:Read file.");
        Uart.println("4:Go to dialogue mode.");
        Uart.println("5:Back to main menu.");
        user_input = menu_choice(5);
        switch (user_input)
        {
            case 0:
                client = at.server_connect(Uart, host1, port1);
                return 0;       //Remain on this menu 

            case 1:
                Uart.println("Enter the name of the file you want to send to the server");
                if(!at.get_user_input(Uart, file_name, NULL, STR_IN))
                {
                    return 0;
                }
                at.send_file(client, file_name);
                return 0;       //Remain on this menu

            case 2:
                at.get_file(client);
                return 0;       //Remain on this menu

            case 3:
                Uart.println("Enter the name of the file you want to read");
                if(!at.get_user_input(Uart, file_name, NULL, STR_IN))
                {
                    return 0;   //Remain on this menu
                }
                if(!at.read_file(Uart, file_name, NULL, true))
                {
                    return 0;   //Remain on this menu
                }
                return 0;       //Remain on this menu

            case 4:
                at.server_communication_mode(Uart, client);
                return 0;       //Remain on this menu

            case 5:
                return -1;      //Go back to main menu

            default:
                return 0;       //Remain on this menu
        }
      
    }
  
    int cryptography_menu()
    {
        Stream &Uart = get_serial();
        int user_input;
        Serial.println("Cryptogaphy menu");
        Uart.println("");
        Uart.println("0:Create private Key.");
        Uart.println("1:Generate Public Key from Private Key.");
        Uart.println("2:Hash a Document/Text.");
        Uart.println("3:Sign a Hashed/or Plain Text.");
        Uart.println("4:Verify Signature authenticity.");
        Uart.println("5:Run a precompiled test of all the mentioned functions.");
        Uart.println("6:Back to main menu.");
        user_input = menu_choice(6);
        if(user_input == -1)
        {
            return 1;         //Remain on this menu  
        }
        else if(user_input < 6)
        {
            at.ecdsa_funct(Uart, user_input); 
            return 1;        //Remain on this menu
        }
        else
        {
            return -1;        //Go Back to main menu  
        }
    }

    int menu_choice(int choices)
    {
        Stream &Uart = get_serial();
        int user_input;
                
        if(!at.get_user_input(Uart, NULL, &user_input, INT_IN))
        {
            return -1;  
        }
        Uart.println(user_input);
        if(user_input > choices || user_input < 0)
        {
            Uart.print("There is no such command!!");
            return -1;  
        }
        return user_input; 
    }
    
    Stream & get_serial()
    {
        
        if (CurrentUart == SERIAL0)
        {
            digitalWrite(LED, LOW);
            Stream &Uart = Serial;
            return Uart;
        }
        else 
        {
            digitalWrite(LED, HIGH); 
            Stream &Uart = Serial1;
            return Uart;
        }
          
    }
};
menu menu;
