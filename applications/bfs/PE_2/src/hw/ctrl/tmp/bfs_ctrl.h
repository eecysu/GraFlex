#ifndef BFS_CTRL_H
#define BFS_CTRL_H

#include <stdint.h>
#include "ap_int.h"
#include "ap_utils.h"

void BFS_Ctrl_2X1_VER1 (volatile bool* dummyParam, const uint32_t N_Vertex, volatile bool *resWrite, uint16_t *glblIterIdx,
  volatile uint32_t *cnt_scatter_0, volatile uint32_t *cnt_scatter_1,
  volatile uint32_t *cnt_gather_0, volatile uint32_t *cnt_gather_1,
  volatile bool *exist_0, volatile bool *exist_1
  );

#endif
