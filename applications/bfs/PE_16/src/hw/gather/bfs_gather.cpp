#include "bfs_gather.h"

void BFS_Gather(const uint8_t peID, volatile uint32_t *sw_data,
                volatile bool *exist, dpkt_t tmp_dist[4096])
{
#pragma HLS interface ap_none port=peID
#pragma HLS interface ap_none port=sw_data
#pragma HLS interface ap_none port=exist register
// 1 URAM for temp distance
#pragma HLS interface ap_memory port=tmp_dist storage_type=ram_1p

#pragma HLS pipeline II=2

  uint16_t rltDstIdx, rltAddr;
  ap_uint<32> tmpData;
  ap_uint<24> dstVid;
  ap_uint<8> srcDist, dstDist;
  dpkt_t dstVal;

  tmpData = *sw_data;
  srcDist = tmpData.range(31,24);
  dstVid  = tmpData.range(23, 0);

  rltDstIdx= (dstVid-peID) / (16*8); // 8-Banking
  rltAddr  = rltDstIdx / 8; // 8 data packed

  dstVal  = tmp_dist[rltAddr];

  switch (rltDstIdx % 8)
  {
    case 0:
      dstDist = dstVal.val_0;
      if (srcDist+1 < dstDist) {
        tmp_dist[rltAddr].val_0 = srcDist + 1;
        *exist = true;
      } else { *exist = false; }
      break;
    case 1:
      dstDist = dstVal.val_1;
      if (srcDist+1 < dstDist) {
        tmp_dist[rltAddr].val_1 = srcDist + 1;
        *exist = true;
      } else { *exist = false; }
      break;
    case 2:
      dstDist = dstVal.val_2;
      if (srcDist+1 < dstDist) {
        tmp_dist[rltAddr].val_2 = srcDist + 1;
        *exist = true;
      } else { *exist = false; }
      break;
    case 3:
      dstDist = dstVal.val_3;
      if (srcDist+1 < dstDist) {
        tmp_dist[rltAddr].val_3 = srcDist + 1;
        *exist = true;
      } else { *exist = false; }
      break;
    case 4:
      dstDist = dstVal.val_4;
      if (srcDist+1 < dstDist) {
        tmp_dist[rltAddr].val_4 = srcDist + 1;
        *exist = true;
      } else { *exist = false; }
      break;
    case 5:
      dstDist = dstVal.val_5;
      if (srcDist+1 < dstDist) {
        tmp_dist[rltAddr].val_5 = srcDist + 1;
        *exist = true;
      } else { *exist = false; }
      break;
    case 6:
      dstDist = dstVal.val_6;
      if (srcDist+1 < dstDist) {
        tmp_dist[rltAddr].val_6 = srcDist + 1;
        *exist = true;
      } else { *exist = false; }
      break;
    case 7:
      dstDist = dstVal.val_7;
      if (srcDist+1 < dstDist) {
        tmp_dist[rltAddr].val_7 = srcDist + 1;
        *exist = true;
      } else { *exist = false; }
      break;
    default:
      break;
  }

  return;
}
