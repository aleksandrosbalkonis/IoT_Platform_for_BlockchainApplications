#include "ecdsa_for_arty_s7.h"


unsigned char convert_hex_to_uc(char hex_char)
{
    if (hex_char == '0')
    {
        int x = 0;
        return x;   
    }
    else if (hex_char == '1')
    {
        return 1; 
    } 
    else if (hex_char == '2')
    {
        return 2; 
    } 
    else if (hex_char == '3')
    {
        return 3; 
    } 
    else if (hex_char == '4')
    {
        return 4; 
    } 
    else if (hex_char == '5')
    {
        return 5; 
    } 
    else if (hex_char == '6')
    {
        return 6; 
    } 
    else if (hex_char == '7')
    {
        return 7; 
    } 
    else if (hex_char == '8')
    {
        return 8; 
    } 
    else if (hex_char == '9')
    {
        return 9; 
    } 
    else if (hex_char == 'a' | hex_char == 'A')
    {
        return 10; 
    }
    else if (hex_char == 'b' | hex_char == 'B')
    {
        return 11; 
    } 
    else if (hex_char == 'c' | hex_char == 'C')
    {
        return 12; 
    } 
    else if (hex_char == 'd' | hex_char == 'D')
    {
        return 13; 
    } 
    else if (hex_char == 'e' | hex_char == 'E')
    {
        return 14; 
    } 
    else
    {
        return 15; 
    }   

}

/*Method that creates a Public Key and a serialized copy of the public Key for for reading and comparing*/

/*-----------------------------------------Argument Description-----------------------------------------*/

/*Input: privKey, falgs  Output:pubKey, serial_pubKey, len */

void Assign_PrivKey(unsigned char * privKey, char * privKeyIn, bool useDefault)
{
    if (useDefault)
    {
        unsigned char tempKey[32] = {
        0xff, 0x2c, 0x7f, 0x3b, 0xd9, 0xa0, 0x51, 0x6c,
        0x68, 0x66, 0xe6, 0xa5, 0x15, 0x3a, 0xa8, 0x1d,
        0xab, 0xa0, 0xcf, 0x33, 0xf8, 0x34, 0x28, 0x34, 
        0xd1, 0x65, 0x7a, 0x48, 0x50, 0x09, 0x81, 0x8b
        };

        memcpy(privKey, tempKey, 32);
		
    }
    else
    {
        unsigned char temp_num;

        
        int len = strlen(privKeyIn);
        printf("%d",len);
        for (int i = 0; i < len; i++)
        {
            if(i%2==0)
            {
                temp_num = convert_hex_to_uc(privKeyIn[i]);    
                privKey[i/2] =  temp_num * 16;
            }
            else
            {
                temp_num = convert_hex_to_uc(privKeyIn[i]); 
                privKey[i/2] = privKey[i/2] + temp_num;
            }
        }


    }

}






/*Method that creates a Public Key and a serialized copy of the public Key for for reading and comparing*/

/*-----------------------------------------Argument Description-----------------------------------------*/

/*Input: privKey, falgs  Output:pubKey, serial_pubKey, len */

/*serialize_only can be set to true to skip pubKey creation and use only serialization */

/*serialPubKey can be set to NULL to skip serialization*/

/*If serialization is not skipped len cannot be NULL*/

int Create_PubKey(unsigned char * privKey, unsigned char * serial_pubKey, size_t *len, bool compress)
{
	
	static secp256k1_context *ctx = NULL;

    secp256k1_pubkey pubKey;
    ctx = secp256k1_context_create(SECP256K1_CONTEXT_SIGN | SECP256K1_CONTEXT_VERIFY);
    int status;
     

    status = secp256k1_ec_pubkey_create(ctx, &pubKey, privKey);
    if (status != 1)
    {
        printf("Public Key creation Failed !!\r\n");
        secp256k1_context_destroy(ctx);
        return status;
    }

    if (compress)
    {
        status = secp256k1_ec_pubkey_serialize(ctx, serial_pubKey, len, &pubKey, SECP256K1_EC_COMPRESSED);
    }
    else
    {
        status = secp256k1_ec_pubkey_serialize(ctx, serial_pubKey, len, &pubKey, SECP256K1_EC_UNCOMPRESSED);
    }
    if (status != 1)
    {
        printf("Public Key serialization Failed !!\r\n");
        secp256k1_context_destroy(ctx);
        return status;
    }   
    secp256k1_context_destroy(ctx);
    return status;
}


/*Method that creates o public Key object from a serial public key of unsigned characters*/

int Parse_PublicKey(secp256k1_pubkey* pubKey, unsigned char *serial_pubKey, size_t serial_pubKey_len)
{   
    static secp256k1_context *ctx = NULL;
    ctx = secp256k1_context_create(SECP256K1_CONTEXT_SIGN | SECP256K1_CONTEXT_VERIFY);
    int status;

        
    status = secp256k1_ec_pubkey_parse(ctx, pubKey, serial_pubKey, serial_pubKey_len);
    if (status != 1)
    {
        printf("Public Key Parsing Failed!!\r\n");
        secp256k1_context_destroy(ctx);
        return status;
    }


    secp256k1_context_destroy(ctx);
    return status;

}


/*Method that creates Hashed version of a Document necesssary for signing */

/*-----------------------------------------Argument Description-----------------------------------------*/

/*Input: hasher, plain_txt  Output:out */


void Hash_Document(const char * plain_txt, unsigned char * out)
{

    secp256k1_sha256 hasher;

    secp256k1_sha256_initialize(&hasher); 
    secp256k1_sha256_write(&hasher,(const unsigned char *) plain_txt, strlen(plain_txt)); 
    secp256k1_sha256_finalize(&hasher, out);
}


/*------------------------------------------------------------------------------------------------------*/

void Keccak_Hash(unsigned char * plain_txt, unsigned char * out, uint16_t plain_txt_len)
{
    SHA3_CTX ctx;
    keccak_init(&ctx);
    keccak_update(&ctx, plain_txt, plain_txt_len);
    keccak_final(&ctx, out);
}
/*Method that creates a Signed Document and a serialized copy of the signature for reading an comparing */

/*-----------------------------------------Argument Description-----------------------------------------*/

/*Input: privKey, msghash32, noncefp, noncedata  Output:signature, msghash32, serial_sig, len(Input len cannot be NULL overwrites after function) */

/*len and signature cannot be NULL overwrites after function ends*/

/*serialize_only can be set to true to skip pubKey creation and use only serialization */

/*serial_sig can be set to NULL to skip serialization*/

/*If serialization is not skipped len cannot be NULL*/

int Sign_Document(unsigned char * serial_signature, size_t * serial_signature_len, unsigned char * msghash32 , unsigned char * privKey, secp256k1_nonce_function noncefp, void * noncedata)
{
    secp256k1_ecdsa_signature signature;

	static secp256k1_context *ctx = NULL;
    ctx = secp256k1_context_create(SECP256K1_CONTEXT_SIGN | SECP256K1_CONTEXT_VERIFY);
    int status;

    status = secp256k1_ecdsa_sign(ctx , &signature, msghash32, privKey, noncefp, noncedata);
    if (status != 1)
    {
        printf("Signature Failed !!\r\n");
        secp256k1_context_destroy(ctx);
        return status;
    }  
    status = secp256k1_ecdsa_signature_serialize_der(ctx, serial_signature, serial_signature_len, &signature);
    if (status != 1)
    {
        printf("Signature serialization Failed !!\r\n");
        secp256k1_context_destroy(ctx);
        return status;
    }
    secp256k1_context_destroy(ctx);
    return status;

}


int Parse_Signature(secp256k1_ecdsa_signature* signature, unsigned char *serial_signature, size_t serial_signature_len)
{   
    static secp256k1_context *ctx = NULL;
    ctx = secp256k1_context_create(SECP256K1_CONTEXT_SIGN | SECP256K1_CONTEXT_VERIFY);
    int status;

        
    status = secp256k1_ecdsa_signature_parse_der(ctx, signature, serial_signature, serial_signature_len);
    if (status != 1)
    {
        printf("Signature Parsing Failed!!\r\n");
        secp256k1_context_destroy(ctx);
        return status;
    }


    secp256k1_context_destroy(ctx);
    return status;

}

/*Method that verifies the authenticity of a Signed Document*/

/*-----------------------------------------Argument Description-----------------------------------------*/

/*Input: pubKey, msghash32, signature*/

/*Returns 1 if authenticity check is successful*/


int Verify_Signature(unsigned char * serial_signature, size_t serial_signature_len, unsigned char * msghash32 , unsigned char * serial_pubKey, size_t serial_pubKey_len)
{   
    int status;
    secp256k1_pubkey pubKey;
    secp256k1_ecdsa_signature signature;
    status = Parse_PublicKey(&pubKey, serial_pubKey, serial_pubKey_len);
    if (status != 1)
    {
        printf("Public key parsing failed!!\r\n");
        return status;
    }

    status = Parse_Signature(&signature, serial_signature, serial_signature_len);
    if (status != 1)
    {
        printf("Signature parsing failed!!\r\n");
        return status;
    }
    static secp256k1_context *ctx = NULL;
    ctx = secp256k1_context_create(SECP256K1_CONTEXT_SIGN | SECP256K1_CONTEXT_VERIFY);

    status = secp256k1_ecdsa_verify(ctx, &signature, msghash32, &pubKey);
    if (status != 1)
    {
        printf("Signature test Failed !!\r\n");
        secp256k1_context_destroy(ctx);
        return status;
    }


    secp256k1_context_destroy(ctx);
    return status;

}

void ecdsa_for_arty_s7_test(void)
{
/*--------------Testing Public Key generation from specific Private Key!!-------------*/ 

    int status;
    size_t i;

    unsigned char privKey [32];
    Assign_PrivKey(privKey, NULL, true);


    unsigned char serial_pubKey [65];
	
    size_t len = 65;

    status = Create_PubKey(privKey, serial_pubKey, &len, false);
    printf("Public Key: %lu\r\n",len);
    for (i = 0; i < len; i++ )
    {   
        if(serial_pubKey[i] > 15)
        {
            printf("%x ",serial_pubKey[i]);
        }
        else 
        {
            printf("0%x ",serial_pubKey[i]);
        }
    }
    printf("\r\n\n");

/*---------------------------------Hash a document-----------------------------------*/  

    static char plain_txt[32];
    printf("Type the text that you want to sign:\r\n");
    //scanf("%s", &plain_txt[0]);
		sprintf(plain_txt,"Hello1");
    plain_txt[strlen(plain_txt)] = '\n';


    unsigned char out[32];

    Hash_Document(&plain_txt[0], out);

    printf("Hash: %ud\r\n",sizeof(out));
    for (i = 0; i < 32; i++ )
    {   
        if(out[i] > 15)
        {
            printf("%x ",out[i]);
        }
        else 
        {
            printf("0%x ",out[i]);
        }
    }
    printf("\r\n\n");

   
/*---------------------Testing Signing and Signiture validation!!---------------------*/ 
    


    unsigned char serial_signature[100];

    status = Sign_Document(serial_signature, &len, out, privKey, NULL, NULL);
    printf("Signature: %lu\r\n",len);
    for (i = 0; i < 64; i++ )
    {   
         if(serial_signature[i] > 15)
        {
            printf("%x ",serial_signature[i]);
        }
        else 
        {
            printf("0%x ",serial_signature[i]);
        }
    }
    printf("\r\n\n");



    status = Verify_Signature(serial_signature, len, out, serial_pubKey, sizeof(serial_pubKey));
    if (status)
    {
        printf("Signature Verificatin succesfully completed !!\r\n\n");
    }

    printf("no problems found\n");
}


