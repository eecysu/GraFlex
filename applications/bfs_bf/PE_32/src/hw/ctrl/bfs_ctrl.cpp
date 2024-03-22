#include "bfs_ctrl.h"

void BFS_Ctrl_32X1_VER1 (
  const uint32_t N_Vertex, volatile bool *resWrite, uint16_t *glblIterIdx,
  volatile uint32_t *cnt_scatter_0, volatile uint32_t *cnt_scatter_1,
  volatile uint32_t *cnt_scatter_2, volatile uint32_t *cnt_scatter_3,
  volatile uint32_t *cnt_scatter_4, volatile uint32_t *cnt_scatter_5,
  volatile uint32_t *cnt_scatter_6, volatile uint32_t *cnt_scatter_7,
  volatile uint32_t *cnt_scatter_8, volatile uint32_t *cnt_scatter_9,
  volatile uint32_t *cnt_scatter_10, volatile uint32_t *cnt_scatter_11,
  volatile uint32_t *cnt_scatter_12, volatile uint32_t *cnt_scatter_13,
  volatile uint32_t *cnt_scatter_14, volatile uint32_t *cnt_scatter_15,
  volatile uint32_t *cnt_scatter_16, volatile uint32_t *cnt_scatter_17,
  volatile uint32_t *cnt_scatter_18, volatile uint32_t *cnt_scatter_19,
  volatile uint32_t *cnt_scatter_20, volatile uint32_t *cnt_scatter_21,
  volatile uint32_t *cnt_scatter_22, volatile uint32_t *cnt_scatter_23,
  volatile uint32_t *cnt_scatter_24, volatile uint32_t *cnt_scatter_25,
  volatile uint32_t *cnt_scatter_26, volatile uint32_t *cnt_scatter_27,
  volatile uint32_t *cnt_scatter_28, volatile uint32_t *cnt_scatter_29,
  volatile uint32_t *cnt_scatter_30, volatile uint32_t *cnt_scatter_31,
  volatile uint32_t *cnt_gather_0, volatile uint32_t *cnt_gather_1,
  volatile uint32_t *cnt_gather_2, volatile uint32_t *cnt_gather_3,
  volatile uint32_t *cnt_gather_4, volatile uint32_t *cnt_gather_5,
  volatile uint32_t *cnt_gather_6, volatile uint32_t *cnt_gather_7,
  volatile uint32_t *cnt_gather_8, volatile uint32_t *cnt_gather_9,
  volatile uint32_t *cnt_gather_10, volatile uint32_t *cnt_gather_11,
  volatile uint32_t *cnt_gather_12, volatile uint32_t *cnt_gather_13,
  volatile uint32_t *cnt_gather_14, volatile uint32_t *cnt_gather_15,
  volatile uint32_t *cnt_gather_16, volatile uint32_t *cnt_gather_17,
  volatile uint32_t *cnt_gather_18, volatile uint32_t *cnt_gather_19,
  volatile uint32_t *cnt_gather_20, volatile uint32_t *cnt_gather_21,
  volatile uint32_t *cnt_gather_22, volatile uint32_t *cnt_gather_23,
  volatile uint32_t *cnt_gather_24, volatile uint32_t *cnt_gather_25,
  volatile uint32_t *cnt_gather_26, volatile uint32_t *cnt_gather_27,
  volatile uint32_t *cnt_gather_28, volatile uint32_t *cnt_gather_29,
  volatile uint32_t *cnt_gather_30, volatile uint32_t *cnt_gather_31,
  volatile bool *exist_0, volatile bool *exist_1,
  volatile bool *exist_2, volatile bool *exist_3,
  volatile bool *exist_4, volatile bool *exist_5,
  volatile bool *exist_6, volatile bool *exist_7,
  volatile bool *exist_8, volatile bool *exist_9,
  volatile bool *exist_10, volatile bool *exist_11,
  volatile bool *exist_12, volatile bool *exist_13,
  volatile bool *exist_14, volatile bool *exist_15,
  volatile bool *exist_16, volatile bool *exist_17,
  volatile bool *exist_18, volatile bool *exist_19,
  volatile bool *exist_20, volatile bool *exist_21,
  volatile bool *exist_22, volatile bool *exist_23,
  volatile bool *exist_24, volatile bool *exist_25,
  volatile bool *exist_26, volatile bool *exist_27,
  volatile bool *exist_28, volatile bool *exist_29,
  volatile bool *exist_30, volatile bool *exist_31)
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
#pragma GRAFLEX feedback port=cnt_scatter_8
#pragma GRAFLEX feedback port=cnt_scatter_9
#pragma GRAFLEX feedback port=cnt_scatter_10
#pragma GRAFLEX feedback port=cnt_scatter_11
#pragma GRAFLEX feedback port=cnt_scatter_12
#pragma GRAFLEX feedback port=cnt_scatter_13
#pragma GRAFLEX feedback port=cnt_scatter_14
#pragma GRAFLEX feedback port=cnt_scatter_15
#pragma GRAFLEX feedback port=cnt_scatter_16
#pragma GRAFLEX feedback port=cnt_scatter_17
#pragma GRAFLEX feedback port=cnt_scatter_18
#pragma GRAFLEX feedback port=cnt_scatter_19
#pragma GRAFLEX feedback port=cnt_scatter_20
#pragma GRAFLEX feedback port=cnt_scatter_21
#pragma GRAFLEX feedback port=cnt_scatter_22
#pragma GRAFLEX feedback port=cnt_scatter_23
#pragma GRAFLEX feedback port=cnt_scatter_24
#pragma GRAFLEX feedback port=cnt_scatter_25
#pragma GRAFLEX feedback port=cnt_scatter_26
#pragma GRAFLEX feedback port=cnt_scatter_27
#pragma GRAFLEX feedback port=cnt_scatter_28
#pragma GRAFLEX feedback port=cnt_scatter_29
#pragma GRAFLEX feedback port=cnt_scatter_30
#pragma GRAFLEX feedback port=cnt_scatter_31
#pragma GRAFLEX feedback port=cnt_gather_0
#pragma GRAFLEX feedback port=cnt_gather_1
#pragma GRAFLEX feedback port=cnt_gather_2
#pragma GRAFLEX feedback port=cnt_gather_3
#pragma GRAFLEX feedback port=cnt_gather_4
#pragma GRAFLEX feedback port=cnt_gather_5
#pragma GRAFLEX feedback port=cnt_gather_6
#pragma GRAFLEX feedback port=cnt_gather_7
#pragma GRAFLEX feedback port=cnt_gather_8
#pragma GRAFLEX feedback port=cnt_gather_9
#pragma GRAFLEX feedback port=cnt_gather_10
#pragma GRAFLEX feedback port=cnt_gather_11
#pragma GRAFLEX feedback port=cnt_gather_12
#pragma GRAFLEX feedback port=cnt_gather_13
#pragma GRAFLEX feedback port=cnt_gather_14
#pragma GRAFLEX feedback port=cnt_gather_15
#pragma GRAFLEX feedback port=cnt_gather_16
#pragma GRAFLEX feedback port=cnt_gather_17
#pragma GRAFLEX feedback port=cnt_gather_18
#pragma GRAFLEX feedback port=cnt_gather_19
#pragma GRAFLEX feedback port=cnt_gather_20
#pragma GRAFLEX feedback port=cnt_gather_21
#pragma GRAFLEX feedback port=cnt_gather_22
#pragma GRAFLEX feedback port=cnt_gather_23
#pragma GRAFLEX feedback port=cnt_gather_24
#pragma GRAFLEX feedback port=cnt_gather_25
#pragma GRAFLEX feedback port=cnt_gather_26
#pragma GRAFLEX feedback port=cnt_gather_27
#pragma GRAFLEX feedback port=cnt_gather_28
#pragma GRAFLEX feedback port=cnt_gather_29
#pragma GRAFLEX feedback port=cnt_gather_30
#pragma GRAFLEX feedback port=cnt_gather_31
#pragma GRAFLEX feedback port=exist_0
#pragma GRAFLEX feedback port=exist_1
#pragma GRAFLEX feedback port=exist_2
#pragma GRAFLEX feedback port=exist_3
#pragma GRAFLEX feedback port=exist_4
#pragma GRAFLEX feedback port=exist_5
#pragma GRAFLEX feedback port=exist_6
#pragma GRAFLEX feedback port=exist_7
#pragma GRAFLEX feedback port=exist_8
#pragma GRAFLEX feedback port=exist_9
#pragma GRAFLEX feedback port=exist_10
#pragma GRAFLEX feedback port=exist_11
#pragma GRAFLEX feedback port=exist_12
#pragma GRAFLEX feedback port=exist_13
#pragma GRAFLEX feedback port=exist_14
#pragma GRAFLEX feedback port=exist_15
#pragma GRAFLEX feedback port=exist_16
#pragma GRAFLEX feedback port=exist_17
#pragma GRAFLEX feedback port=exist_18
#pragma GRAFLEX feedback port=exist_19
#pragma GRAFLEX feedback port=exist_20
#pragma GRAFLEX feedback port=exist_21
#pragma GRAFLEX feedback port=exist_22
#pragma GRAFLEX feedback port=exist_23
#pragma GRAFLEX feedback port=exist_24
#pragma GRAFLEX feedback port=exist_25
#pragma GRAFLEX feedback port=exist_26
#pragma GRAFLEX feedback port=exist_27
#pragma GRAFLEX feedback port=exist_28
#pragma GRAFLEX feedback port=exist_29
#pragma GRAFLEX feedback port=exist_30
#pragma GRAFLEX feedback port=exist_31

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
      ( *cnt_scatter_0+ *cnt_scatter_1+ *cnt_scatter_2+ *cnt_scatter_3+ *cnt_scatter_4+ *cnt_scatter_5+ *cnt_scatter_6+ *cnt_scatter_7+
        *cnt_scatter_8+ *cnt_scatter_9+ *cnt_scatter_10+ *cnt_scatter_11+ *cnt_scatter_12+ *cnt_scatter_13+ *cnt_scatter_14+ *cnt_scatter_15+
        *cnt_scatter_16+ *cnt_scatter_17+ *cnt_scatter_18+ *cnt_scatter_19+ *cnt_scatter_20+ *cnt_scatter_21+ *cnt_scatter_22+ *cnt_scatter_23+
        *cnt_scatter_24+ *cnt_scatter_25+ *cnt_scatter_26+ *cnt_scatter_27+ *cnt_scatter_28+ *cnt_scatter_29+ *cnt_scatter_30+ *cnt_scatter_31) != 
      ( *cnt_gather_0+ *cnt_gather_1+ *cnt_gather_2+ *cnt_gather_3+ *cnt_gather_4+ *cnt_gather_5+ *cnt_gather_6+ *cnt_gather_7+
        *cnt_gather_8+ *cnt_gather_9+ *cnt_gather_10+ *cnt_gather_11+ *cnt_gather_12+ *cnt_gather_13+ *cnt_gather_14+ *cnt_gather_15+
        *cnt_gather_16+ *cnt_gather_17+ *cnt_gather_18+ *cnt_gather_19+ *cnt_gather_20+ *cnt_gather_21+ *cnt_gather_22+ *cnt_gather_23+
        *cnt_gather_24+ *cnt_gather_25+ *cnt_gather_26+ *cnt_gather_27+ *cnt_gather_28+ *cnt_gather_29+ *cnt_gather_30+ *cnt_gather_31))
    {
      #pragma HLS protocol fixed
      ap_wait();
    }

    // judge if go on
    if((*exist_0 || *exist_1 || *exist_2 || *exist_3 || *exist_4 || *exist_5 || *exist_6 || *exist_7 ||
        *exist_8 || *exist_9 || *exist_10|| *exist_11|| *exist_12|| *exist_13|| *exist_14|| *exist_15|| 
        *exist_16|| *exist_17|| *exist_18|| *exist_19|| *exist_20|| *exist_21|| *exist_22|| *exist_23||
        *exist_24|| *exist_25|| *exist_26|| *exist_27|| *exist_28|| *exist_29|| *exist_30|| *exist_31) == false)
    {
      break;
    }
    iterIdx += 1;
  } // end while

  *resWrite = 1;
  BFS_PE();

  return;
}
