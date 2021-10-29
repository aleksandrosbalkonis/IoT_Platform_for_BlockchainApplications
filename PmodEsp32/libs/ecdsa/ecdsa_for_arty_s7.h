#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stdint.h>
#include <inttypes.h>
#include <stdbool.h>

#include <time.h>


#include "secp256k1.h"
//#include "secp256k1_preallocated.h"
//#include "util.h"
#include "../keccak/keccak256.h"
#include "hash.h"
#include "hash_impl.h"

unsigned char convert_hex_to_uc(char hex_char);
void Assign_PrivKey(unsigned char * privKey, char * privKeyIn, bool useDefault);

int Create_PubKey(unsigned char * privKey, unsigned char *serial_pubKey, size_t *len, bool compress);

int Parse_PublicKey(secp256k1_pubkey* pubKey, unsigned char *serial_pubKey, size_t serial_pubKey_len);

void Hash_Document(const char * plain_txt, unsigned char * out);

void Keccak_Hash(unsigned char * plain_txt, unsigned char * out, uint16_t plain_txt_len);

int Sign_Document(unsigned char * serial_signature, size_t * serial_signature_len, unsigned char * msghash32 , unsigned char * privKey, secp256k1_nonce_function noncefp, void * noncedata);

int Parse_Signature(secp256k1_ecdsa_signature* signature, unsigned char *serial_signature, size_t serial_signature_len);

int Verify_Signature(unsigned char * serial_signature, size_t serial_signature_len, unsigned char * msghash32 , unsigned char * serial_pubKey, size_t serial_pubKey_len);

void ecdsa_for_arty_s7_test(void);

