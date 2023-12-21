#include "bfs_ctrl.h"

void BFS_PE(volatile bool *dummyParam)
{
#pragma HLS inline off
  volatile uint8_t exist;

  if (*dummyParam != true)
    exist = 0;
  else
    exist = 255 - *dummyParam;

  return;
}

void BFS_Ctrl_4X1_VER1 (volatile bool* dummyParam, const uint32_t N_Vertex, volatile bool *resWrite, uint16_t *glblIterIdx,
  volatile uint32_t *cnt_scatter_0, volatile uint32_t *cnt_scatter_1, volatile uint32_t *cnt_scatter_2, volatile uint32_t *cnt_scatter_3,
  volatile uint32_t *cnt_gather_0, volatile uint32_t *cnt_gather_1, volatile uint32_t *cnt_gather_2, volatile uint32_t *cnt_gather_3,
  volatile bool *exist_0, volatile bool *exist_1, volatile bool *exist_2, volatile bool *exist_3)
{
#pragma HLS interface ap_none port=N_Vertex
#pragma HLS interface ap_none port=resWrite register
#pragma HLS interface ap_none port=glblIterIdx register

#pragma HLS interface ap_none port=cnt_scatter_0
#pragma HLS interface ap_none port=cnt_scatter_1
#pragma HLS interface ap_none port=cnt_scatter_2
#pragma HLS interface ap_none port=cnt_scatter_3
#pragma HLS interface ap_none port=cnt_gather_0
#pragma HLS interface ap_none port=cnt_gather_1
#pragma HLS interface ap_none port=cnt_gather_2
#pragma HLS interface ap_none port=cnt_gather_3
#pragma HLS interface ap_none port=exist_0
#pragma HLS interface ap_none port=exist_1
#pragma HLS interface ap_none port=exist_2
#pragma HLS interface ap_none port=exist_3


  static uint16_t iterIdx = 0;
  *resWrite = 0;

  MainLoop: while (iterIdx < N_Vertex)
  {
    *resWrite = 0;
    *glblIterIdx = iterIdx;
    
    // invoke parallel BFS PEs
    BFS_PE(dummyParam);
    
    waitId0: while (
      ( *cnt_scatter_0+ *cnt_scatter_1+ *cnt_scatter_2+ *cnt_scatter_3) != 
      ( *cnt_gather_0+ *cnt_gather_0+ *cnt_gather_0+ *cnt_gather_0))
    {
      #pragma HLS protocol fixed
      ap_wait();
    }

    // judge if go on
    if((*exist_0 || *exist_1 || *exist_2 || *exist_3) == false)
    {
      break;
    }
    iterIdx += 1;
  } // end while

  *resWrite = 1;
  BFS_PE(dummyParam);

  return;
}
