#ifndef BFS_SCATTER_H
#define BFS_SCATTER_H

#include <stdio.h>
#include <stdint.h>
#include <string.h>
#include "ap_int.h"
#include "ap_utils.h"
#include "ap_axi_sdata.h"
#include "hls_stream.h"

typedef ap_axiu<128, 0,0,0> trans_pkt; // disable side-channels
typedef ap_uint<33> duint33_t;


extern "C" {
void BFS_Scatter (
  const duint33_t CSR_V,
  const duint33_t CSR_E,
  const duint33_t glbl_d,
  volatile uint64_t *rd_baseAddr,
  volatile uint64_t *wr_baseAddr,
  hls::stream<trans_pkt> &rd_port,
  hls::stream<trans_pkt> &wr_port,
  hls::stream<uint32_t> &rd_req,
  volatile uint16_t *wr_len,
  volatile bool *rd_start,
  volatile bool *wr_start,
  const uint32_t N_Vertex,
  const uint32_t root,
  const uint8_t peID,
  hls::stream<uint32_t> &sw_data_0,
  hls::stream<uint32_t> &sw_data_1,
  hls::stream<uint32_t> &sw_data_2,
  hls::stream<uint32_t> &sw_data_3,
  const uint16_t *glblIterIdx,
  volatile uint32_t *cycle_cnt,
  volatile bool *launch_recv,
  volatile bool resWrite,
  ap_uint<64> tmp_dist[64][4096]);
}

#endif
