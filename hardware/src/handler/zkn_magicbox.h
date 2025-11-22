
#ifndef _ZKN_MAGIC_H
#define _ZKN_MAGIC_H
#include <stdint.h>   // uint*_t
#include <stdbool.h>  // bool

#include "buffer.h"

int handler_cmd_blake2b512(buffer_t *cdata);
int handler_cmd_keccakH(buffer_t *cdata);

int handler_cmd_Poseidon_ithRC(buffer_t *cdata);
int handler_cmd_tEdwards(buffer_t *cdata);

int handler_cmd_tEddsaPoseidon(buffer_t *cdata);
int handler_cmd_tEddsaPoseidon_Kpub(buffer_t *cdata);
int handler_cmd_tEddsaPoseidon_Sign(buffer_t *cdata);

int handler_cmd_Poseidon(buffer_t *cdata);//poseidon hash

int handler_cmd_Interpolate(buffer_t *cdata);
int handler_cmd_Split(buffer_t *cdata);
int handler_cmd_frostH(buffer_t *cdata);


int handler_cmd_GroupCommitment(buffer_t *cdata);//tested ok
int handler_cmd_encodeCommitment(buffer_t *cdata);//tested ok

int handler_cmd_BindingFactors(buffer_t *cdata);

int handler_cmd_bolos_stretch();
#endif