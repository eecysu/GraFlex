#ifndef BFS_GATHER_H
#define BFS_GATHER_H

#include <stdio.h>
#include <stdint.h>
#include <string.h>
#include "ap_int.h"
#include "ap_fixed.h"
#include "ap_utils.h"

typedef struct {
  ap_uint<8> val_0;
  ap_uint<8> val_1;
  ap_uint<8> val_2;
  ap_uint<8> val_3;
  ap_uint<8> val_4;
  ap_uint<8> val_5;
  ap_uint<8> val_6;
  ap_uint<8> val_7;
} dpkt_t;

void BFS_Gather (const uint8_t peID, volatile uint32_t *sw_data, volatile bool *exist, dpkt_t tmp_dist[4096]);

#endif
