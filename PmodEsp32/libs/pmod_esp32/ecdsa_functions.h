extern "C"{
#include "ecdsa_for_arty_s7.h"
  } 

class ecdsa_functions
{
  unsigned char privKey [32];
  unsigned char pubKey [65];
  unsigned char hashedTxt[32];
  unsigned char signature[100];
  size_t signature_len = 100;
  unsigned long currentTime;
  char file_content [250];

   public:
   
//......................Function that uses either a preset Private Key............................//
//............................for testing or Uploads a new one....................................//

    void set_privKey(Stream &Uart,bool use_default)
    {
        if(!use_default)
        {
            while(!Uart.available());
            sprintf(file_content, "");
            for (int i=0; i<64; i++)
            {        
                sprintf(file_content, "%s%c", file_content, Uart.read());
            }
            if(!Uart.read() == '\r')
            {
                Uart.println("Wrong Input!!");
                return;
            }
            if(!Uart.read() == '\n')
            {
                Uart.println("Wrong Input!!");
                return;
            }
        }
        Assign_PrivKey(privKey, file_content, use_default);
        
        //.............Creating the appropriate file.........//
        
        sprintf(file_content, "");
        File file =  SPIFFS.open("/privKey.der", FILE_WRITE);
        for(int i = 0; i < 32; i++)
        {
            sprintf(file_content, "%s%02x ", file_content, privKey[i]);
        }
        file.print(file_content);
        file.close();
        sprintf(file_content, "");
    } 
    
    unsigned char * get_privKey()
    {
          return privKey;  
    }
    
//......................Function that generates a public key from the ............................//
//............................private key via ec multiplications..................................//

    void gen_pubKey(unsigned char privKey[])
    {
        size_t keyLen = 65;
        //false = SECP256K1_EC_UNCOMPRESSED or true = SECP256K1_EC_COMPRESSED
        currentTime = millis();
        Create_PubKey(privKey, pubKey, &keyLen, false);
        currentTime = millis() - currentTime;
        Serial.print("Public key creation time:");
        Serial.println(currentTime);
          
        //.............Creating the appropriate file.........//
        
        sprintf(file_content, "");
        File file =  SPIFFS.open("/pubKey.der", FILE_WRITE);
        for(int i = 0; i < sizeof(pubKey); i++)
        {
            sprintf(file_content, "%s%02x ", file_content, pubKey[i]);
        }
        file.print(file_content);
        file.close();
        sprintf(file_content, "");
          
    }

    unsigned char * get_pubKey()
    {
          return pubKey;  
    }
    
    size_t get_pubKey_len()
    {
          return sizeof(pubKey);  
    }
    
//......................Function that hashes a document with the SHA256...........................//
//......................................hash function.............................................//
    
    void hash_txt(char plainTxt[], char file_name [])
    {
        char destination_file [30];

        currentTime = millis();
        Hash_Document(plainTxt, hashedTxt);
        currentTime = millis() - currentTime;
        Serial.print("Public key creation time:");
        Serial.println(currentTime);

        sprintf(destination_file, "/hashes%s", file_name);

        if (!strcmp(destination_file, "/hashes"))
        {
            sprintf(destination_file, "/hashes/tempHash.txt");
        }
          
        //.............Creating the appropriate file.........//
        
        sprintf(file_content, "");
        File file =  SPIFFS.open(destination_file, FILE_WRITE);
        for(int i = 0; i < 32; i++)
        {
            sprintf(file_content, "%s%02x ", file_content, hashedTxt[i]);
        }
        file.print(file_content);
        file.close(); 
        sprintf(file_content, "");
        memcpy(file_name, destination_file, 30);   
           
    }

    unsigned char * get_hashedTxt()
    {
          return hashedTxt;  
    }

//......................Function that signes a hashed document in order...........................//
//........................make the owner of the document identifiable.............................//
    
    void sign_txt(unsigned char hashedTxt[], unsigned char privKey[])
    {
        currentTime = millis();
        Sign_Document(signature, &signature_len, hashedTxt, privKey, NULL, NULL);
        currentTime = millis() - currentTime;
        Serial.print("Signature calculation time:");
        Serial.println(currentTime);

        //.............Creating the appropriate file.........//
        
        sprintf(file_content, "");
        File file =  SPIFFS.open("/signature.der", FILE_WRITE);
        for(int i = 0; i < signature_len; i++)
        {
            sprintf(file_content, "%s%02x ", file_content, signature[i]);
        }
        file.print(file_content);
        file.close(); 
        sprintf(file_content, "");
          
    }

    unsigned char * get_signature()
    {
        return signature;  
    }
    
    size_t get_signature_len()
    {
        return signature_len;  
    }    
   
//......................Function that verifies the authenticity of a user.........................//
//.....................................via his signature..........................................//
  
    bool verify_signature(unsigned char signature[], size_t signature_len, unsigned char hashedTxt[], unsigned char pubKey[], size_t pubKey_len)
    {
        currentTime = millis();
        if (Verify_Signature(signature, signature_len, hashedTxt, pubKey, pubKey_len))      
        {
            currentTime = millis() - currentTime;
            Serial.print("Signature verification time:");
            Serial.println(currentTime);
            return true;
        }   
        return false; 
    }
 
//......................Function that runs a precompiled test of all the..........................//
//.................................functins mentioned above.......................................//
    
    void test_ecdsa()
    {
        ecdsa_for_arty_s7_test();
    } 
    
  
};
ecdsa_functions ecdsa;
