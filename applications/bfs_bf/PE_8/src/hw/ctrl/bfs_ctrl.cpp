#include "bfs_ctrl.h"

void BFS_Ctrl_8X1_VER1 (
  const uint32_t N_Vertex, volatile bool *resWrite, uint16_t *glblIterIdx,
  volatile uint32_t *cnt_scatter_0, volatile uint32_t *cnt_scatter_1,
  volatile uint32_t *cnt_scatter_2, volatile uint32_t *cnt_scatter_3,
  volatile uint32_t *cnt_scatter_4, volatile uint32_t *cnt_scatter_5,
  volatile uint32_t *cnt_scatter_6, volatile uint32_t *cnt_scatter_7,
  volatile uint32_t *cnt_gather_0, volatile uint32_t *cnt_gather_1,
  volatile uint32_t *cnt_gather_2, volatile uint32_t *cnt_gather_3,
  volatile uint32_t *cnt_gather_4, volatile uint32_t *cnt_gather_5,
  volatile uint32_t *cnt_gather_6, volatile uint32_t *cnt_gather_7,
  volatile bool *exist_0, volatile bool *exist_1,
  volatile bool *exist_2, volatile bool *exist_3,
  volatile bool *exist_4, volatile bool *exist_5,
  volatile bool *exist_6, volatile bool *exist_7)
{
#pragma HLS interface ap_none port=N_Vertex
#pragma GRAFLEX broadcast port=resWrite
#pragma GRAFLEX broadcast port=glblIterIdx

#pragma GRAFLEX feedback port=cnt_scatter_0
#pragma GRAFLEX feedback port=cnt_scatter_1
#pragma GRAFLEX feedback port=cnt_scatter_2
#pragma GRAFLEX feedback port=cnt_scatter_3
#pragma GRAFLEX feedback port=cnt_scatter_4
#pragma GRAFLEX feedback port=cnt_scatter_5
#pragma GRAFLEX feedback port=cnt_scatter_6
#pragma GRAFLEX feedback port=cnt_scatter_7
#pragma GRAFLEX feedback port=cnt_gather_0
#pragma GRAFLEX feedback port=cnt_gather_1
#pragma GRAFLEX feedback port=cnt_gather_2
#pragma GRAFLEX feedback port=cnt_gather_3
#pragma GRAFLEX feedback port=cnt_gather_4
#pragma GRAFLEX feedback port=cnt_gather_5
#pragma GRAFLEX feedback port=cnt_gather_6
#pragma GRAFLEX feedback port=cnt_gather_7
#pragma GRAFLEX feedback port=exist_0
#pragma GRAFLEX feedback port=exist_1
#pragma GRAFLEX feedback port=exist_2
#pragma GRAFLEX feedback port=exist_3
#pragma GRAFLEX feedback port=exist_4
#pragma GRAFLEX feedback port=exist_5
#pragma GRAFLEX feedback port=exist_6
#pragma GRAFLEX feedback port=exist_7

#pragma GRAFLEX placeholder func=BFS_PE

  static uint16_t iterIdx = 0;
  *resWrite = 0;

  MainLoop: while (iterIdx < N_Vertex)
  {
    *resWrite = 0;
    *glblIterIdx = iterIdx;
    
    // invoke parallel BFS PEs
    BFS_PE();
    
    waitId0: while (
      ( *cnt_scatter_0+ *cnt_scatter_1+ *cnt_scatter_2+ *cnt_scatter_3+ *cnt_scatter_4+ *cnt_scatter_5+ *cnt_scatter_6+ *cnt_scatter_7) != 
      ( *cnt_gather_0+ *cnt_gather_1+ *cnt_gather_2+ *cnt_gather_3+ *cnt_gather_4+ *cnt_gather_5+ *cnt_gather_6+ *cnt_gather_7))
    {
      #pragma HLS protocol fixed
      ap_wait();
    }

    // judge if go on
    if((*exist_0 || *exist_1 || *exist_2 || *exist_3 || *exist_4 || *exist_5 || *exist_6 || *exist_7) == false)
    {
      break;
    }
    iterIdx += 1;
  } // end while

  *resWrite = 1;
  BFS_PE();

  return;
}
