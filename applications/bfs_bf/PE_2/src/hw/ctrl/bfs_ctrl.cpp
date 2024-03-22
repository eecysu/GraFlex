#include "bfs_ctrl.h"

void BFS_Ctrl_2X1_VER1 (const uint32_t N_Vertex, volatile bool *resWrite, uint16_t *glblIterIdx,
  volatile uint32_t *cnt_scatter_0, volatile uint32_t *cnt_scatter_1,
  volatile uint32_t *cnt_gather_0, volatile uint32_t *cnt_gather_1,
  volatile bool *exist_0, volatile bool *exist_1)
{
#pragma HLS interface ap_none port=N_Vertex
// #pragma HLS interface ap_none port=<> register
#pragma GRAFLEX broadcast port=resWrite
#pragma GRAFLEX broadcast port=glblIterIdx

// #pragma HLS array_partition variable=exist complete dim=0
#pragma GRAFLEX feedback port=cnt_scatter_0
#pragma GRAFLEX feedback port=cnt_scatter_1
#pragma GRAFLEX feedback port=cnt_gather_0
#pragma GRAFLEX feedback port=cnt_gather_1
#pragma GRAFLEX feedback port=exist_0
#pragma GRAFLEX feedback port=exist_1

#pragma GRAFLEX placeholder func=BFS_PE

  static uint16_t iterIdx = 0;
  
  *resWrite = 0;
  
  MainLoop: while (iterIdx < N_Vertex)
  {
    *resWrite = 0;
    *glblIterIdx = iterIdx;
    
    // invoke parallel BFS PEs
    BFS_PE(); // dummyParam
    
    waitId0: while ((*cnt_gather_0+*cnt_gather_1) != (*cnt_scatter_0+*cnt_scatter_1))
    {
      #pragma HLS protocol fixed
      for (int i=0; i<4; ++i)
        ap_wait();
    }

    // judge if go on
    if((*exist_0 || *exist_1) == false)
    {
      break;
    }
    iterIdx += 1;
  } // end while

  *resWrite = 1;
  BFS_PE(); // dummyParam

  return;
}
