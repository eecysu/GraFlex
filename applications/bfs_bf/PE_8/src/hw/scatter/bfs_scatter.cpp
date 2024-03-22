#include "bfs_scatter.h"

#define BATCH_SIZE 64 // number of vertices scanned in an iteration
#define CHUNK_SIZE 16 // maximum number of AXI beats treated in one transaction


void WrDist (hls::stream<trans_pkt> &wr_port, const ap_uint<64> tmp_dist[16][4096], const uint8_t idx)
{
#pragma HLS inline off

  trans_pkt  wr_pkt;
  uint16_t rd_baseAddr;

  rd_baseAddr = idx*16;
  L5: for (uint8_t i=0; i<16; ++i)
  {
  #pragma HLS pipeline II=8
    L5_1: for (uint8_t j=0; j<8; ++j)
    {
      wr_pkt.data = (tmp_dist[2*j+1][rd_baseAddr+i], tmp_dist[2*j][rd_baseAddr+i]);
      wr_port.write(wr_pkt);
    }
  }

  return;
}


void BuffOfst(hls::stream<trans_pkt> &rd_port, hls::stream<uint32_t> &rd_req, volatile bool *rd_start, 
              ap_uint<64> *ofst_buff, const uint32_t size)
{
#pragma HLS inline off

  uint16_t n_chunk = (size%16==0) ? size/16 : size/16+1; // number of transactions needed
  uint16_t n_iter  = (n_chunk%16==0) ? n_chunk/16 : n_chunk/16+1; // each batch of read requests handle 16 chunks

  trans_pkt rd_pkt;
  uint32_t ofst_buff_ptr = 0;
  ap_uint<128> tmp_rdVal;
  ap_uint<4>   tmp_arlen;

  L4: for (uint16_t i=0; i<n_iter; ++i)
  {
    uint8_t tail = (i==n_iter-1) ? (n_chunk%16==0 ? 16 : n_chunk%16) : 16;
    
    SEND_REQ_TUPLE_L4: for (uint8_t j=0; j<tail; ++j) {
      if (i==n_iter-1 & j==tail-1) {
        tmp_arlen = (size%16==0) ? 15 : (size%16-1);
      } else {
        tmp_arlen = 15;
      }
      rd_req << (tmp_arlen, ap_uint<28>(16*16*(16*i+j)));
    }

    *rd_start = 1;
    // read data from the axis interface
    do {
      rd_pkt = rd_port.read();
      tmp_rdVal = rd_pkt.data;
      
      memcpy(&ofst_buff[2*ofst_buff_ptr], &tmp_rdVal, 16);
      ofst_buff_ptr++;
    } while (rd_pkt.last != 1);

    *rd_start = 0;
  } // end L4

  return;
}


// Generate memory access (read) tuples
void gen_access_tuple(const ap_uint<64>* ofst_buff, const uint32_t rlt_tail_idx,
                      const uint batchIdx, uint16_t *n_mem_tuples, ap_uint<32>* mem_req_buff)
{
#pragma HLS inline off
#pragma HLS stable variable=n_mem_tuples

  uint32_t tmpVid;
  uint16_t vDegree, realDeg;
  uint16_t n_elem_margin, n_rmdr_elem;
  uint16_t n_full_txfr;
  ap_uint<64> curVal, nxtVal;
  ap_uint<32> curOfst, nxtOfst;
  ap_uint<28> ofstAddr, next4K;
  ap_uint<4> padDecr;

  *n_mem_tuples = 0;

  L3: for (uint8_t k=0; k<BATCH_SIZE; k++)
  {
    tmpVid = batchIdx*BATCH_SIZE + k; // Vid in PE's view, considering concatenation factor already
    if (tmpVid > rlt_tail_idx) { return; }

    curVal = ofst_buff[tmpVid/2];
    nxtVal = ofst_buff[tmpVid/2+1];

    curOfst = (tmpVid%2 == 0) ? curVal.range(31, 0) : curVal.range(63,32);
    nxtOfst = (tmpVid%2 == 0) ? curVal.range(63,32) : nxtVal.range(31, 0);

    ofstAddr = curOfst.range(23, 0) *16;
    padDecr  = curOfst.range(31, 28);
    vDegree  = (nxtOfst-curOfst)*4 - padDecr; // ground truth degree

    realDeg  = (vDegree%4 == 0) ? vDegree/4 : (vDegree/4+1); // each CSR_E entry is 32b
    n_full_txfr = realDeg / CHUNK_SIZE;
    n_rmdr_elem = realDeg % CHUNK_SIZE;

    // generate mem_req tuples
    L3_1: for (uint16_t j=0; j<n_full_txfr; j++)
    {
      // cross 4KB check
      next4K = (ofstAddr.range(27,12)+1) *4096;
      n_elem_margin = (next4K-ofstAddr) / 16; // 16 Bytes per elem

      if (n_elem_margin >= CHUNK_SIZE) {
        mem_req_buff[*n_mem_tuples] = (ap_uint<4>(CHUNK_SIZE-1), ofstAddr);
        ofstAddr += CHUNK_SIZE *16;
      } else {
        mem_req_buff[*n_mem_tuples] = (ap_uint<4>(n_elem_margin-1), ofstAddr);
        (*n_mem_tuples)++;
        ofstAddr += n_elem_margin *16;
        mem_req_buff[*n_mem_tuples] = (ap_uint<4>(CHUNK_SIZE-n_elem_margin-1), ofstAddr);
        ofstAddr += (CHUNK_SIZE-n_elem_margin) *16;
      }
      (*n_mem_tuples)++;
    } // end L3_1
    next4K = (ofstAddr.range(27,12)+1) *4096;
    n_elem_margin = (next4K-ofstAddr) / 16;

    if (n_rmdr_elem > 0) {
      if (n_elem_margin >= n_rmdr_elem) {
        mem_req_buff[*n_mem_tuples] = (ap_uint<4>(n_rmdr_elem-1), ofstAddr);
      } else {
        mem_req_buff[*n_mem_tuples] = (ap_uint<4>(n_elem_margin-1), ofstAddr);
        (*n_mem_tuples)++;
        ofstAddr += n_elem_margin *16;
        mem_req_buff[*n_mem_tuples] = (ap_uint<4>(n_rmdr_elem-n_elem_margin-1), ofstAddr);
      }
      (*n_mem_tuples)++;
    }
  } // end L3

  return;
}


void feed_network(hls::stream<trans_pkt> &rd_port, hls::stream<uint32_t> &rd_req,
  volatile bool *rd_start, const uint16_t n_mem_tuples, const ap_uint<32>* mem_req_buff, 
  ap_uint<64> tmp_dist[16][4096], hls::stream<uint32_t> &sw_data_0, hls::stream<uint32_t> &sw_data_1,
  hls::stream<uint32_t> &sw_data_2, hls::stream<uint32_t> &sw_data_3)
{
#pragma HLS inline off
#pragma HLS pipeline

  ap_uint<32> tmp_edge[4];
  ap_uint<24> srcIdx;
  ap_uint<64> srcVal;
  ap_uint<8>  srcDist;

  uint16_t n_iter = (n_mem_tuples%16==0) ? n_mem_tuples/16 : n_mem_tuples/16+1;
  bool     invld_flag = false;

  // loop according to MAX outstanding AXI transactions
  L2: for (uint16_t i=0; i<n_iter; i++)
  {
    trans_pkt rd_pkt;
    uint8_t tail = (i==n_iter-1)? (n_mem_tuples%16==0 ? 16 : n_mem_tuples%16) : 16;

    L2_SEND_REQ_TPL: for (uint8_t j=0; j<tail; j++) {
      rd_req << mem_req_buff[16*i+j];
    }
    *rd_start = 1;
    
    // read data from the axis interface
    L2_FEED_NET: do {
    #pragma HLS pipeline II=1
      rd_pkt = rd_port.read();
      ap_uint<128> dstVar = rd_pkt.data;

      tmp_edge[0] = dstVar.range(31, 0);
      tmp_edge[1] = dstVar.range(63, 32);
      tmp_edge[2] = dstVar.range(95, 64);
      tmp_edge[3] = dstVar.range(127,96);

      if (tmp_edge[0].range(31,24) == ap_uint<8>(0))
      {
        srcIdx = tmp_edge[0].range(23, 0); // using rltIdx when building CSR_V
        srcVal = tmp_dist[srcIdx%16][srcIdx/(16*8)];
        switch ((srcIdx/16) % 8) {
          case 0:
            srcDist = srcVal.range(7, 0); break;
          case 1:
            srcDist = srcVal.range(15,8); break;
          case 2:
            srcDist = srcVal.range(23,16); break;
          case 3:
            srcDist = srcVal.range(31,24); break;
          case 4:
            srcDist = srcVal.range(39,32); break;
          case 5:
            srcDist = srcVal.range(47,40); break;
          case 6:
            srcDist = srcVal.range(55,48); break;
          case 7:
            srcDist = srcVal.range(63,56); break;
        }
        invld_flag = true;
      }

      if (invld_flag==false && srcDist != 0xff) { sw_data_0 << (srcDist, tmp_edge[0].range(23, 0)); } // if edge_weight = 0, it is a header
      if (srcDist != 0xff) { sw_data_1 << (srcDist, tmp_edge[1].range(23, 0)); }
      if (srcDist != 0xff) { sw_data_2 << (srcDist, tmp_edge[2].range(23, 0)); }
      if (srcDist != 0xff) { sw_data_3 << (srcDist, tmp_edge[3].range(23, 0)); }

      invld_flag = false;
    } while (rd_pkt.last != 1);

    *rd_start = 0;
  } // end L2

  return;
}


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
  ap_uint<64> tmp_dist[16][4096])
{
// Global pointers as constant
#pragma HLS interface ap_none port=CSR_V
#pragma HLS interface ap_none port=CSR_E
#pragma HLS interface ap_none port=glbl_d
// memory access related interface
#pragma HLS interface ap_none port=rd_baseAddr
#pragma HLS interface ap_none port=wr_baseAddr
#pragma HLS interface axis    port=rd_port
#pragma HLS interface axis    port=wr_port
#pragma HLS interface ap_fifo port=rd_req
#pragma HLS interface ap_none port=wr_len
#pragma HLS interface ap_none port=rd_start
#pragma HLS interface ap_none port=wr_start
// kernel interface
#pragma HLS interface ap_none port=N_Vertex
#pragma HLS interface ap_none port=root
#pragma HLS interface ap_none port=peID
#pragma HLS interface ap_none port=glblIterIdx
#pragma HLS interface ap_none port=cycle_cnt
#pragma HLS interface ap_none port=launch_recv
#pragma HLS interface ap_none port=resWrite

#pragma HLS interface ap_fifo port=sw_data_0
#pragma HLS interface ap_fifo port=sw_data_1
#pragma HLS interface ap_fifo port=sw_data_2
#pragma HLS interface ap_fifo port=sw_data_3
// 16 URAMs for temporary distance
#pragma HLS array_partition complete dim=1 variable=tmp_dist
#pragma HLS interface ap_memory port=tmp_dist[0] storage_type=ram_1p latency=1
#pragma HLS interface ap_memory port=tmp_dist[1] storage_type=ram_1p latency=1
#pragma HLS interface ap_memory port=tmp_dist[2] storage_type=ram_1p latency=1
#pragma HLS interface ap_memory port=tmp_dist[3] storage_type=ram_1p latency=1
#pragma HLS interface ap_memory port=tmp_dist[4] storage_type=ram_1p latency=1
#pragma HLS interface ap_memory port=tmp_dist[5] storage_type=ram_1p latency=1
#pragma HLS interface ap_memory port=tmp_dist[6] storage_type=ram_1p latency=1
#pragma HLS interface ap_memory port=tmp_dist[7] storage_type=ram_1p latency=1
#pragma HLS interface ap_memory port=tmp_dist[8] storage_type=ram_1p latency=1
#pragma HLS interface ap_memory port=tmp_dist[9] storage_type=ram_1p latency=1
#pragma HLS interface ap_memory port=tmp_dist[10] storage_type=ram_1p latency=1
#pragma HLS interface ap_memory port=tmp_dist[11] storage_type=ram_1p latency=1
#pragma HLS interface ap_memory port=tmp_dist[12] storage_type=ram_1p latency=1
#pragma HLS interface ap_memory port=tmp_dist[13] storage_type=ram_1p latency=1
#pragma HLS interface ap_memory port=tmp_dist[14] storage_type=ram_1p latency=1
#pragma HLS interface ap_memory port=tmp_dist[15] storage_type=ram_1p latency=1

// URAMs as explicit buffers for CSR_V offset
ap_uint<64> ofst_buff[48*4096];
#pragma HLS bind_storage variable=ofst_buff type=ram_2p impl=uram latency=1
// 2 BRAMs for mem_req tuples
ap_uint<32> mem_req_buff[2][2048];
#pragma HLS array_partition complete dim=1 variable=mem_req_buff
#pragma HLS bind_storage variable=mem_req_buff[0] type=ram_2p impl=bram
#pragma HLS bind_storage variable=mem_req_buff[1] type=ram_2p impl=bram

  const  ap_uint<8>  ZERO = 0;
  const  ap_uint<64> MASK = 0xffffffffffffffffULL;

  uint n_vertex_iter = N_Vertex/(8*BATCH_SIZE);
  uint rlt_tail_idx  = N_Vertex/8 + 1;

  *rd_start = 0;
  *wr_start = 0;
  *launch_recv = 0; ////

  trans_pkt wr_pkt;
  
  // 8 partition, 8 bit distance packed as 64 bit, 128bit = 64bit *2, each time write 128 items
  if (resWrite == 1)
  {
    uint16_t n_wr_iter = (N_Vertex%(8*8*2*128)==0) ? N_Vertex/(8*8*2*128) : N_Vertex/(8*8*2*128)+1;

    *wr_len = 128 * n_wr_iter;
    *wr_baseAddr = (uint64_t)glbl_d;
    *wr_start = 1;
    L6: for (uint16_t i=0; i<n_wr_iter; i++)
    {
      WrDist(wr_port, tmp_dist, i); // tmp_dist read only
    }
    *wr_start = 0;

    // for cycle counter
    *wr_len = 1;
    *wr_baseAddr = (uint64_t)(glbl_d +16128*16); // 4K Byte Aligned
    if (peID == 0) {
      // flow control
      L_WAIT: for (uint8_t cnt_oot=0; cnt_oot<64; ++cnt_oot) {
      #pragma HLS pipeline off  
        waitId2: {
        #pragma HLS protocol fixed
          ap_wait();
          ++cnt_oot;
        }
      }  // end nop

      *wr_start = 1;
      wr_pkt.data = (ap_uint<32>(*glblIterIdx), ap_uint<32>(0), ap_uint<32>(0), ap_uint<32>(*cycle_cnt));
      wr_port.write(wr_pkt);
    }

    return;
  } // end if

  /* Distance Initialization */
  if (*glblIterIdx == 0)
  {
    INIT_L0: for (uint16_t i=0; i<4096; ++i)
    {
      INIT_L0_1: for (uint8_t k=0; k<16; ++k) {
      #pragma HLS unroll factor=16
        tmp_dist[k][i] = MASK; // 64-bit MAX
      }
    } // end init for

    // Initialization
    uint32_t rootIdx;
    uint8_t  rootBank, rangeOfst;
    ap_uint<64> wrVal;
    if (root % 8 == peID)
    {
      rootIdx  = (root-peID) / 8;
      rootBank = rootIdx % 16;
      rangeOfst= (rootIdx/16) % 8;

      if (rangeOfst == 0) {
        wrVal = (MASK.range(63, 8), ZERO);
      } else if (rangeOfst == 7) {
        wrVal = (ZERO, MASK.range(55, 0));
      } else {
        wrVal = (MASK.range(63, 8*rangeOfst+8), ZERO, MASK.range(8*rangeOfst-1, 0));
      }
      tmp_dist[rootBank][rootIdx/(16*8)] = wrVal; // dist[root] = 0
    }
  }

  /* Activate Recv PE */
  *launch_recv = 1;

  if (*glblIterIdx == 0) {
    *rd_baseAddr = (uint64_t)CSR_V;
    BuffOfst(rd_port, rd_req, rd_start, ofst_buff, N_Vertex/32+2); // 32=8*4
  }
  *rd_baseAddr = (uint64_t)CSR_E;

  uint16_t n_tuple_0 = 0;
  uint16_t n_tuple_1 = 0;
  // main loop, each L1 iteration traverse BATCH_SIZE*32 vertices
  L1: for (uint i=0; i<n_vertex_iter+2; i++)
  {
    if (i%2 == 0) {
      feed_network (rd_port, rd_req, rd_start, n_tuple_1, mem_req_buff[1], tmp_dist, 
                    sw_data_0, sw_data_1, sw_data_2, sw_data_3);
      gen_access_tuple(ofst_buff, rlt_tail_idx, i, &n_tuple_0, mem_req_buff[0]);
    } else {
      feed_network (rd_port, rd_req, rd_start, n_tuple_0, mem_req_buff[0], tmp_dist, 
                    sw_data_0, sw_data_1, sw_data_2, sw_data_3);
      gen_access_tuple(ofst_buff, rlt_tail_idx, i, &n_tuple_1, mem_req_buff[1]);
    }
  } // end L1
}
