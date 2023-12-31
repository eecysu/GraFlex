#ifndef BFS_CTRL_H
#define BFS_CTRL_H

#include <stdint.h>
#include "ap_int.h"
#include "ap_utils.h"

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
  volatile bool *exist_30, volatile bool *exist_31
);

#endif