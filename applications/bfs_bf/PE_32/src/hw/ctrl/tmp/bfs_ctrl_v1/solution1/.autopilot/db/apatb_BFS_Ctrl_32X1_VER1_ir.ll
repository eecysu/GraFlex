; ModuleID = '/Orion/BackEnd/ArtifactEvaluation/BFS_BF/PE_32/src/hw/ctrl/tmp/bfs_ctrl_v1/solution1/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

; Function Attrs: noinline
define void @apatb_BFS_Ctrl_32X1_VER1_ir(i1* %dummyParam, i32 %N_Vertex, i1* %resWrite, i16* %glblIterIdx, i32* %cnt_scatter_0, i32* %cnt_scatter_1, i32* %cnt_scatter_2, i32* %cnt_scatter_3, i32* %cnt_scatter_4, i32* %cnt_scatter_5, i32* %cnt_scatter_6, i32* %cnt_scatter_7, i32* %cnt_scatter_8, i32* %cnt_scatter_9, i32* %cnt_scatter_10, i32* %cnt_scatter_11, i32* %cnt_scatter_12, i32* %cnt_scatter_13, i32* %cnt_scatter_14, i32* %cnt_scatter_15, i32* %cnt_scatter_16, i32* %cnt_scatter_17, i32* %cnt_scatter_18, i32* %cnt_scatter_19, i32* %cnt_scatter_20, i32* %cnt_scatter_21, i32* %cnt_scatter_22, i32* %cnt_scatter_23, i32* %cnt_scatter_24, i32* %cnt_scatter_25, i32* %cnt_scatter_26, i32* %cnt_scatter_27, i32* %cnt_scatter_28, i32* %cnt_scatter_29, i32* %cnt_scatter_30, i32* %cnt_scatter_31, i32* %cnt_gather_0, i32* %cnt_gather_1, i32* %cnt_gather_2, i32* %cnt_gather_3, i32* %cnt_gather_4, i32* %cnt_gather_5, i32* %cnt_gather_6, i32* %cnt_gather_7, i32* %cnt_gather_8, i32* %cnt_gather_9, i32* %cnt_gather_10, i32* %cnt_gather_11, i32* %cnt_gather_12, i32* %cnt_gather_13, i32* %cnt_gather_14, i32* %cnt_gather_15, i32* %cnt_gather_16, i32* %cnt_gather_17, i32* %cnt_gather_18, i32* %cnt_gather_19, i32* %cnt_gather_20, i32* %cnt_gather_21, i32* %cnt_gather_22, i32* %cnt_gather_23, i32* %cnt_gather_24, i32* %cnt_gather_25, i32* %cnt_gather_26, i32* %cnt_gather_27, i32* %cnt_gather_28, i32* %cnt_gather_29, i32* %cnt_gather_30, i32* %cnt_gather_31, i1* %exist_0, i1* %exist_1, i1* %exist_2, i1* %exist_3, i1* %exist_4, i1* %exist_5, i1* %exist_6, i1* %exist_7, i1* %exist_8, i1* %exist_9, i1* %exist_10, i1* %exist_11, i1* %exist_12, i1* %exist_13, i1* %exist_14, i1* %exist_15, i1* %exist_16, i1* %exist_17, i1* %exist_18, i1* %exist_19, i1* %exist_20, i1* %exist_21, i1* %exist_22, i1* %exist_23, i1* %exist_24, i1* %exist_25, i1* %exist_26, i1* %exist_27, i1* %exist_28, i1* %exist_29, i1* %exist_30, i1* %exist_31) local_unnamed_addr #0 {
entry:
  %dummyParam_copy = alloca i1, align 512
  %resWrite_copy = alloca i1, align 512
  %glblIterIdx_copy = alloca i16, align 512
  %cnt_scatter_0_copy = alloca i32, align 512
  %cnt_scatter_1_copy = alloca i32, align 512
  %cnt_scatter_2_copy = alloca i32, align 512
  %cnt_scatter_3_copy = alloca i32, align 512
  %cnt_scatter_4_copy = alloca i32, align 512
  %cnt_scatter_5_copy = alloca i32, align 512
  %cnt_scatter_6_copy = alloca i32, align 512
  %cnt_scatter_7_copy = alloca i32, align 512
  %cnt_scatter_8_copy = alloca i32, align 512
  %cnt_scatter_9_copy = alloca i32, align 512
  %cnt_scatter_10_copy = alloca i32, align 512
  %cnt_scatter_11_copy = alloca i32, align 512
  %cnt_scatter_12_copy = alloca i32, align 512
  %cnt_scatter_13_copy = alloca i32, align 512
  %cnt_scatter_14_copy = alloca i32, align 512
  %cnt_scatter_15_copy = alloca i32, align 512
  %cnt_scatter_16_copy = alloca i32, align 512
  %cnt_scatter_17_copy = alloca i32, align 512
  %cnt_scatter_18_copy = alloca i32, align 512
  %cnt_scatter_19_copy = alloca i32, align 512
  %cnt_scatter_20_copy = alloca i32, align 512
  %cnt_scatter_21_copy = alloca i32, align 512
  %cnt_scatter_22_copy = alloca i32, align 512
  %cnt_scatter_23_copy = alloca i32, align 512
  %cnt_scatter_24_copy = alloca i32, align 512
  %cnt_scatter_25_copy = alloca i32, align 512
  %cnt_scatter_26_copy = alloca i32, align 512
  %cnt_scatter_27_copy = alloca i32, align 512
  %cnt_scatter_28_copy = alloca i32, align 512
  %cnt_scatter_29_copy = alloca i32, align 512
  %cnt_scatter_30_copy = alloca i32, align 512
  %cnt_scatter_31_copy = alloca i32, align 512
  %cnt_gather_0_copy = alloca i32, align 512
  %cnt_gather_1_copy = alloca i32, align 512
  %cnt_gather_2_copy = alloca i32, align 512
  %cnt_gather_3_copy = alloca i32, align 512
  %cnt_gather_4_copy = alloca i32, align 512
  %cnt_gather_5_copy = alloca i32, align 512
  %cnt_gather_6_copy = alloca i32, align 512
  %cnt_gather_7_copy = alloca i32, align 512
  %cnt_gather_8_copy = alloca i32, align 512
  %cnt_gather_9_copy = alloca i32, align 512
  %cnt_gather_10_copy = alloca i32, align 512
  %cnt_gather_11_copy = alloca i32, align 512
  %cnt_gather_12_copy = alloca i32, align 512
  %cnt_gather_13_copy = alloca i32, align 512
  %cnt_gather_14_copy = alloca i32, align 512
  %cnt_gather_15_copy = alloca i32, align 512
  %cnt_gather_16_copy = alloca i32, align 512
  %cnt_gather_17_copy = alloca i32, align 512
  %cnt_gather_18_copy = alloca i32, align 512
  %cnt_gather_19_copy = alloca i32, align 512
  %cnt_gather_20_copy = alloca i32, align 512
  %cnt_gather_21_copy = alloca i32, align 512
  %cnt_gather_22_copy = alloca i32, align 512
  %cnt_gather_23_copy = alloca i32, align 512
  %cnt_gather_24_copy = alloca i32, align 512
  %cnt_gather_25_copy = alloca i32, align 512
  %cnt_gather_26_copy = alloca i32, align 512
  %cnt_gather_27_copy = alloca i32, align 512
  %cnt_gather_28_copy = alloca i32, align 512
  %cnt_gather_29_copy = alloca i32, align 512
  %cnt_gather_30_copy = alloca i32, align 512
  %cnt_gather_31_copy = alloca i32, align 512
  %exist_0_copy = alloca i1, align 512
  %exist_1_copy = alloca i1, align 512
  %exist_2_copy = alloca i1, align 512
  %exist_3_copy = alloca i1, align 512
  %exist_4_copy = alloca i1, align 512
  %exist_5_copy = alloca i1, align 512
  %exist_6_copy = alloca i1, align 512
  %exist_7_copy = alloca i1, align 512
  %exist_8_copy = alloca i1, align 512
  %exist_9_copy = alloca i1, align 512
  %exist_10_copy = alloca i1, align 512
  %exist_11_copy = alloca i1, align 512
  %exist_12_copy = alloca i1, align 512
  %exist_13_copy = alloca i1, align 512
  %exist_14_copy = alloca i1, align 512
  %exist_15_copy = alloca i1, align 512
  %exist_16_copy = alloca i1, align 512
  %exist_17_copy = alloca i1, align 512
  %exist_18_copy = alloca i1, align 512
  %exist_19_copy = alloca i1, align 512
  %exist_20_copy = alloca i1, align 512
  %exist_21_copy = alloca i1, align 512
  %exist_22_copy = alloca i1, align 512
  %exist_23_copy = alloca i1, align 512
  %exist_24_copy = alloca i1, align 512
  %exist_25_copy = alloca i1, align 512
  %exist_26_copy = alloca i1, align 512
  %exist_27_copy = alloca i1, align 512
  %exist_28_copy = alloca i1, align 512
  %exist_29_copy = alloca i1, align 512
  %exist_30_copy = alloca i1, align 512
  %exist_31_copy = alloca i1, align 512
  call fastcc void @copy_in(i1* %dummyParam, i1* nonnull align 512 %dummyParam_copy, i1* %resWrite, i1* nonnull align 512 %resWrite_copy, i16* %glblIterIdx, i16* nonnull align 512 %glblIterIdx_copy, i32* %cnt_scatter_0, i32* nonnull align 512 %cnt_scatter_0_copy, i32* %cnt_scatter_1, i32* nonnull align 512 %cnt_scatter_1_copy, i32* %cnt_scatter_2, i32* nonnull align 512 %cnt_scatter_2_copy, i32* %cnt_scatter_3, i32* nonnull align 512 %cnt_scatter_3_copy, i32* %cnt_scatter_4, i32* nonnull align 512 %cnt_scatter_4_copy, i32* %cnt_scatter_5, i32* nonnull align 512 %cnt_scatter_5_copy, i32* %cnt_scatter_6, i32* nonnull align 512 %cnt_scatter_6_copy, i32* %cnt_scatter_7, i32* nonnull align 512 %cnt_scatter_7_copy, i32* %cnt_scatter_8, i32* nonnull align 512 %cnt_scatter_8_copy, i32* %cnt_scatter_9, i32* nonnull align 512 %cnt_scatter_9_copy, i32* %cnt_scatter_10, i32* nonnull align 512 %cnt_scatter_10_copy, i32* %cnt_scatter_11, i32* nonnull align 512 %cnt_scatter_11_copy, i32* %cnt_scatter_12, i32* nonnull align 512 %cnt_scatter_12_copy, i32* %cnt_scatter_13, i32* nonnull align 512 %cnt_scatter_13_copy, i32* %cnt_scatter_14, i32* nonnull align 512 %cnt_scatter_14_copy, i32* %cnt_scatter_15, i32* nonnull align 512 %cnt_scatter_15_copy, i32* %cnt_scatter_16, i32* nonnull align 512 %cnt_scatter_16_copy, i32* %cnt_scatter_17, i32* nonnull align 512 %cnt_scatter_17_copy, i32* %cnt_scatter_18, i32* nonnull align 512 %cnt_scatter_18_copy, i32* %cnt_scatter_19, i32* nonnull align 512 %cnt_scatter_19_copy, i32* %cnt_scatter_20, i32* nonnull align 512 %cnt_scatter_20_copy, i32* %cnt_scatter_21, i32* nonnull align 512 %cnt_scatter_21_copy, i32* %cnt_scatter_22, i32* nonnull align 512 %cnt_scatter_22_copy, i32* %cnt_scatter_23, i32* nonnull align 512 %cnt_scatter_23_copy, i32* %cnt_scatter_24, i32* nonnull align 512 %cnt_scatter_24_copy, i32* %cnt_scatter_25, i32* nonnull align 512 %cnt_scatter_25_copy, i32* %cnt_scatter_26, i32* nonnull align 512 %cnt_scatter_26_copy, i32* %cnt_scatter_27, i32* nonnull align 512 %cnt_scatter_27_copy, i32* %cnt_scatter_28, i32* nonnull align 512 %cnt_scatter_28_copy, i32* %cnt_scatter_29, i32* nonnull align 512 %cnt_scatter_29_copy, i32* %cnt_scatter_30, i32* nonnull align 512 %cnt_scatter_30_copy, i32* %cnt_scatter_31, i32* nonnull align 512 %cnt_scatter_31_copy, i32* %cnt_gather_0, i32* nonnull align 512 %cnt_gather_0_copy, i32* %cnt_gather_1, i32* nonnull align 512 %cnt_gather_1_copy, i32* %cnt_gather_2, i32* nonnull align 512 %cnt_gather_2_copy, i32* %cnt_gather_3, i32* nonnull align 512 %cnt_gather_3_copy, i32* %cnt_gather_4, i32* nonnull align 512 %cnt_gather_4_copy, i32* %cnt_gather_5, i32* nonnull align 512 %cnt_gather_5_copy, i32* %cnt_gather_6, i32* nonnull align 512 %cnt_gather_6_copy, i32* %cnt_gather_7, i32* nonnull align 512 %cnt_gather_7_copy, i32* %cnt_gather_8, i32* nonnull align 512 %cnt_gather_8_copy, i32* %cnt_gather_9, i32* nonnull align 512 %cnt_gather_9_copy, i32* %cnt_gather_10, i32* nonnull align 512 %cnt_gather_10_copy, i32* %cnt_gather_11, i32* nonnull align 512 %cnt_gather_11_copy, i32* %cnt_gather_12, i32* nonnull align 512 %cnt_gather_12_copy, i32* %cnt_gather_13, i32* nonnull align 512 %cnt_gather_13_copy, i32* %cnt_gather_14, i32* nonnull align 512 %cnt_gather_14_copy, i32* %cnt_gather_15, i32* nonnull align 512 %cnt_gather_15_copy, i32* %cnt_gather_16, i32* nonnull align 512 %cnt_gather_16_copy, i32* %cnt_gather_17, i32* nonnull align 512 %cnt_gather_17_copy, i32* %cnt_gather_18, i32* nonnull align 512 %cnt_gather_18_copy, i32* %cnt_gather_19, i32* nonnull align 512 %cnt_gather_19_copy, i32* %cnt_gather_20, i32* nonnull align 512 %cnt_gather_20_copy, i32* %cnt_gather_21, i32* nonnull align 512 %cnt_gather_21_copy, i32* %cnt_gather_22, i32* nonnull align 512 %cnt_gather_22_copy, i32* %cnt_gather_23, i32* nonnull align 512 %cnt_gather_23_copy, i32* %cnt_gather_24, i32* nonnull align 512 %cnt_gather_24_copy, i32* %cnt_gather_25, i32* nonnull align 512 %cnt_gather_25_copy, i32* %cnt_gather_26, i32* nonnull align 512 %cnt_gather_26_copy, i32* %cnt_gather_27, i32* nonnull align 512 %cnt_gather_27_copy, i32* %cnt_gather_28, i32* nonnull align 512 %cnt_gather_28_copy, i32* %cnt_gather_29, i32* nonnull align 512 %cnt_gather_29_copy, i32* %cnt_gather_30, i32* nonnull align 512 %cnt_gather_30_copy, i32* %cnt_gather_31, i32* nonnull align 512 %cnt_gather_31_copy, i1* %exist_0, i1* nonnull align 512 %exist_0_copy, i1* %exist_1, i1* nonnull align 512 %exist_1_copy, i1* %exist_2, i1* nonnull align 512 %exist_2_copy, i1* %exist_3, i1* nonnull align 512 %exist_3_copy, i1* %exist_4, i1* nonnull align 512 %exist_4_copy, i1* %exist_5, i1* nonnull align 512 %exist_5_copy, i1* %exist_6, i1* nonnull align 512 %exist_6_copy, i1* %exist_7, i1* nonnull align 512 %exist_7_copy, i1* %exist_8, i1* nonnull align 512 %exist_8_copy, i1* %exist_9, i1* nonnull align 512 %exist_9_copy, i1* %exist_10, i1* nonnull align 512 %exist_10_copy, i1* %exist_11, i1* nonnull align 512 %exist_11_copy, i1* %exist_12, i1* nonnull align 512 %exist_12_copy, i1* %exist_13, i1* nonnull align 512 %exist_13_copy, i1* %exist_14, i1* nonnull align 512 %exist_14_copy, i1* %exist_15, i1* nonnull align 512 %exist_15_copy, i1* %exist_16, i1* nonnull align 512 %exist_16_copy, i1* %exist_17, i1* nonnull align 512 %exist_17_copy, i1* %exist_18, i1* nonnull align 512 %exist_18_copy, i1* %exist_19, i1* nonnull align 512 %exist_19_copy, i1* %exist_20, i1* nonnull align 512 %exist_20_copy, i1* %exist_21, i1* nonnull align 512 %exist_21_copy, i1* %exist_22, i1* nonnull align 512 %exist_22_copy, i1* %exist_23, i1* nonnull align 512 %exist_23_copy, i1* %exist_24, i1* nonnull align 512 %exist_24_copy, i1* %exist_25, i1* nonnull align 512 %exist_25_copy, i1* %exist_26, i1* nonnull align 512 %exist_26_copy, i1* %exist_27, i1* nonnull align 512 %exist_27_copy, i1* %exist_28, i1* nonnull align 512 %exist_28_copy, i1* %exist_29, i1* nonnull align 512 %exist_29_copy, i1* %exist_30, i1* nonnull align 512 %exist_30_copy, i1* %exist_31, i1* nonnull align 512 %exist_31_copy)
  call void @apatb_BFS_Ctrl_32X1_VER1_hw(i1* %dummyParam_copy, i32 %N_Vertex, i1* %resWrite_copy, i16* %glblIterIdx_copy, i32* %cnt_scatter_0_copy, i32* %cnt_scatter_1_copy, i32* %cnt_scatter_2_copy, i32* %cnt_scatter_3_copy, i32* %cnt_scatter_4_copy, i32* %cnt_scatter_5_copy, i32* %cnt_scatter_6_copy, i32* %cnt_scatter_7_copy, i32* %cnt_scatter_8_copy, i32* %cnt_scatter_9_copy, i32* %cnt_scatter_10_copy, i32* %cnt_scatter_11_copy, i32* %cnt_scatter_12_copy, i32* %cnt_scatter_13_copy, i32* %cnt_scatter_14_copy, i32* %cnt_scatter_15_copy, i32* %cnt_scatter_16_copy, i32* %cnt_scatter_17_copy, i32* %cnt_scatter_18_copy, i32* %cnt_scatter_19_copy, i32* %cnt_scatter_20_copy, i32* %cnt_scatter_21_copy, i32* %cnt_scatter_22_copy, i32* %cnt_scatter_23_copy, i32* %cnt_scatter_24_copy, i32* %cnt_scatter_25_copy, i32* %cnt_scatter_26_copy, i32* %cnt_scatter_27_copy, i32* %cnt_scatter_28_copy, i32* %cnt_scatter_29_copy, i32* %cnt_scatter_30_copy, i32* %cnt_scatter_31_copy, i32* %cnt_gather_0_copy, i32* %cnt_gather_1_copy, i32* %cnt_gather_2_copy, i32* %cnt_gather_3_copy, i32* %cnt_gather_4_copy, i32* %cnt_gather_5_copy, i32* %cnt_gather_6_copy, i32* %cnt_gather_7_copy, i32* %cnt_gather_8_copy, i32* %cnt_gather_9_copy, i32* %cnt_gather_10_copy, i32* %cnt_gather_11_copy, i32* %cnt_gather_12_copy, i32* %cnt_gather_13_copy, i32* %cnt_gather_14_copy, i32* %cnt_gather_15_copy, i32* %cnt_gather_16_copy, i32* %cnt_gather_17_copy, i32* %cnt_gather_18_copy, i32* %cnt_gather_19_copy, i32* %cnt_gather_20_copy, i32* %cnt_gather_21_copy, i32* %cnt_gather_22_copy, i32* %cnt_gather_23_copy, i32* %cnt_gather_24_copy, i32* %cnt_gather_25_copy, i32* %cnt_gather_26_copy, i32* %cnt_gather_27_copy, i32* %cnt_gather_28_copy, i32* %cnt_gather_29_copy, i32* %cnt_gather_30_copy, i32* %cnt_gather_31_copy, i1* %exist_0_copy, i1* %exist_1_copy, i1* %exist_2_copy, i1* %exist_3_copy, i1* %exist_4_copy, i1* %exist_5_copy, i1* %exist_6_copy, i1* %exist_7_copy, i1* %exist_8_copy, i1* %exist_9_copy, i1* %exist_10_copy, i1* %exist_11_copy, i1* %exist_12_copy, i1* %exist_13_copy, i1* %exist_14_copy, i1* %exist_15_copy, i1* %exist_16_copy, i1* %exist_17_copy, i1* %exist_18_copy, i1* %exist_19_copy, i1* %exist_20_copy, i1* %exist_21_copy, i1* %exist_22_copy, i1* %exist_23_copy, i1* %exist_24_copy, i1* %exist_25_copy, i1* %exist_26_copy, i1* %exist_27_copy, i1* %exist_28_copy, i1* %exist_29_copy, i1* %exist_30_copy, i1* %exist_31_copy)
  call fastcc void @copy_out(i1* %dummyParam, i1* nonnull align 512 %dummyParam_copy, i1* %resWrite, i1* nonnull align 512 %resWrite_copy, i16* %glblIterIdx, i16* nonnull align 512 %glblIterIdx_copy, i32* %cnt_scatter_0, i32* nonnull align 512 %cnt_scatter_0_copy, i32* %cnt_scatter_1, i32* nonnull align 512 %cnt_scatter_1_copy, i32* %cnt_scatter_2, i32* nonnull align 512 %cnt_scatter_2_copy, i32* %cnt_scatter_3, i32* nonnull align 512 %cnt_scatter_3_copy, i32* %cnt_scatter_4, i32* nonnull align 512 %cnt_scatter_4_copy, i32* %cnt_scatter_5, i32* nonnull align 512 %cnt_scatter_5_copy, i32* %cnt_scatter_6, i32* nonnull align 512 %cnt_scatter_6_copy, i32* %cnt_scatter_7, i32* nonnull align 512 %cnt_scatter_7_copy, i32* %cnt_scatter_8, i32* nonnull align 512 %cnt_scatter_8_copy, i32* %cnt_scatter_9, i32* nonnull align 512 %cnt_scatter_9_copy, i32* %cnt_scatter_10, i32* nonnull align 512 %cnt_scatter_10_copy, i32* %cnt_scatter_11, i32* nonnull align 512 %cnt_scatter_11_copy, i32* %cnt_scatter_12, i32* nonnull align 512 %cnt_scatter_12_copy, i32* %cnt_scatter_13, i32* nonnull align 512 %cnt_scatter_13_copy, i32* %cnt_scatter_14, i32* nonnull align 512 %cnt_scatter_14_copy, i32* %cnt_scatter_15, i32* nonnull align 512 %cnt_scatter_15_copy, i32* %cnt_scatter_16, i32* nonnull align 512 %cnt_scatter_16_copy, i32* %cnt_scatter_17, i32* nonnull align 512 %cnt_scatter_17_copy, i32* %cnt_scatter_18, i32* nonnull align 512 %cnt_scatter_18_copy, i32* %cnt_scatter_19, i32* nonnull align 512 %cnt_scatter_19_copy, i32* %cnt_scatter_20, i32* nonnull align 512 %cnt_scatter_20_copy, i32* %cnt_scatter_21, i32* nonnull align 512 %cnt_scatter_21_copy, i32* %cnt_scatter_22, i32* nonnull align 512 %cnt_scatter_22_copy, i32* %cnt_scatter_23, i32* nonnull align 512 %cnt_scatter_23_copy, i32* %cnt_scatter_24, i32* nonnull align 512 %cnt_scatter_24_copy, i32* %cnt_scatter_25, i32* nonnull align 512 %cnt_scatter_25_copy, i32* %cnt_scatter_26, i32* nonnull align 512 %cnt_scatter_26_copy, i32* %cnt_scatter_27, i32* nonnull align 512 %cnt_scatter_27_copy, i32* %cnt_scatter_28, i32* nonnull align 512 %cnt_scatter_28_copy, i32* %cnt_scatter_29, i32* nonnull align 512 %cnt_scatter_29_copy, i32* %cnt_scatter_30, i32* nonnull align 512 %cnt_scatter_30_copy, i32* %cnt_scatter_31, i32* nonnull align 512 %cnt_scatter_31_copy, i32* %cnt_gather_0, i32* nonnull align 512 %cnt_gather_0_copy, i32* %cnt_gather_1, i32* nonnull align 512 %cnt_gather_1_copy, i32* %cnt_gather_2, i32* nonnull align 512 %cnt_gather_2_copy, i32* %cnt_gather_3, i32* nonnull align 512 %cnt_gather_3_copy, i32* %cnt_gather_4, i32* nonnull align 512 %cnt_gather_4_copy, i32* %cnt_gather_5, i32* nonnull align 512 %cnt_gather_5_copy, i32* %cnt_gather_6, i32* nonnull align 512 %cnt_gather_6_copy, i32* %cnt_gather_7, i32* nonnull align 512 %cnt_gather_7_copy, i32* %cnt_gather_8, i32* nonnull align 512 %cnt_gather_8_copy, i32* %cnt_gather_9, i32* nonnull align 512 %cnt_gather_9_copy, i32* %cnt_gather_10, i32* nonnull align 512 %cnt_gather_10_copy, i32* %cnt_gather_11, i32* nonnull align 512 %cnt_gather_11_copy, i32* %cnt_gather_12, i32* nonnull align 512 %cnt_gather_12_copy, i32* %cnt_gather_13, i32* nonnull align 512 %cnt_gather_13_copy, i32* %cnt_gather_14, i32* nonnull align 512 %cnt_gather_14_copy, i32* %cnt_gather_15, i32* nonnull align 512 %cnt_gather_15_copy, i32* %cnt_gather_16, i32* nonnull align 512 %cnt_gather_16_copy, i32* %cnt_gather_17, i32* nonnull align 512 %cnt_gather_17_copy, i32* %cnt_gather_18, i32* nonnull align 512 %cnt_gather_18_copy, i32* %cnt_gather_19, i32* nonnull align 512 %cnt_gather_19_copy, i32* %cnt_gather_20, i32* nonnull align 512 %cnt_gather_20_copy, i32* %cnt_gather_21, i32* nonnull align 512 %cnt_gather_21_copy, i32* %cnt_gather_22, i32* nonnull align 512 %cnt_gather_22_copy, i32* %cnt_gather_23, i32* nonnull align 512 %cnt_gather_23_copy, i32* %cnt_gather_24, i32* nonnull align 512 %cnt_gather_24_copy, i32* %cnt_gather_25, i32* nonnull align 512 %cnt_gather_25_copy, i32* %cnt_gather_26, i32* nonnull align 512 %cnt_gather_26_copy, i32* %cnt_gather_27, i32* nonnull align 512 %cnt_gather_27_copy, i32* %cnt_gather_28, i32* nonnull align 512 %cnt_gather_28_copy, i32* %cnt_gather_29, i32* nonnull align 512 %cnt_gather_29_copy, i32* %cnt_gather_30, i32* nonnull align 512 %cnt_gather_30_copy, i32* %cnt_gather_31, i32* nonnull align 512 %cnt_gather_31_copy, i1* %exist_0, i1* nonnull align 512 %exist_0_copy, i1* %exist_1, i1* nonnull align 512 %exist_1_copy, i1* %exist_2, i1* nonnull align 512 %exist_2_copy, i1* %exist_3, i1* nonnull align 512 %exist_3_copy, i1* %exist_4, i1* nonnull align 512 %exist_4_copy, i1* %exist_5, i1* nonnull align 512 %exist_5_copy, i1* %exist_6, i1* nonnull align 512 %exist_6_copy, i1* %exist_7, i1* nonnull align 512 %exist_7_copy, i1* %exist_8, i1* nonnull align 512 %exist_8_copy, i1* %exist_9, i1* nonnull align 512 %exist_9_copy, i1* %exist_10, i1* nonnull align 512 %exist_10_copy, i1* %exist_11, i1* nonnull align 512 %exist_11_copy, i1* %exist_12, i1* nonnull align 512 %exist_12_copy, i1* %exist_13, i1* nonnull align 512 %exist_13_copy, i1* %exist_14, i1* nonnull align 512 %exist_14_copy, i1* %exist_15, i1* nonnull align 512 %exist_15_copy, i1* %exist_16, i1* nonnull align 512 %exist_16_copy, i1* %exist_17, i1* nonnull align 512 %exist_17_copy, i1* %exist_18, i1* nonnull align 512 %exist_18_copy, i1* %exist_19, i1* nonnull align 512 %exist_19_copy, i1* %exist_20, i1* nonnull align 512 %exist_20_copy, i1* %exist_21, i1* nonnull align 512 %exist_21_copy, i1* %exist_22, i1* nonnull align 512 %exist_22_copy, i1* %exist_23, i1* nonnull align 512 %exist_23_copy, i1* %exist_24, i1* nonnull align 512 %exist_24_copy, i1* %exist_25, i1* nonnull align 512 %exist_25_copy, i1* %exist_26, i1* nonnull align 512 %exist_26_copy, i1* %exist_27, i1* nonnull align 512 %exist_27_copy, i1* %exist_28, i1* nonnull align 512 %exist_28_copy, i1* %exist_29, i1* nonnull align 512 %exist_29_copy, i1* %exist_30, i1* nonnull align 512 %exist_30_copy, i1* %exist_31, i1* nonnull align 512 %exist_31_copy)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @copy_in(i1* readonly, i1* noalias align 512, i1* readonly, i1* noalias align 512, i16* readonly, i16* noalias align 512, i32* readonly, i32* noalias align 512, i32* readonly, i32* noalias align 512, i32* readonly, i32* noalias align 512, i32* readonly, i32* noalias align 512, i32* readonly, i32* noalias align 512, i32* readonly, i32* noalias align 512, i32* readonly, i32* noalias align 512, i32* readonly, i32* noalias align 512, i32* readonly, i32* noalias align 512, i32* readonly, i32* noalias align 512, i32* readonly, i32* noalias align 512, i32* readonly, i32* noalias align 512, i32* readonly, i32* noalias align 512, i32* readonly, i32* noalias align 512, i32* readonly, i32* noalias align 512, i32* readonly, i32* noalias align 512, i32* readonly, i32* noalias align 512, i32* readonly, i32* noalias align 512, i32* readonly, i32* noalias align 512, i32* readonly, i32* noalias align 512, i32* readonly, i32* noalias align 512, i32* readonly, i32* noalias align 512, i32* readonly, i32* noalias align 512, i32* readonly, i32* noalias align 512, i32* readonly, i32* noalias align 512, i32* readonly, i32* noalias align 512, i32* readonly, i32* noalias align 512, i32* readonly, i32* noalias align 512, i32* readonly, i32* noalias align 512, i32* readonly, i32* noalias align 512, i32* readonly, i32* noalias align 512, i32* readonly, i32* noalias align 512, i32* readonly, i32* noalias align 512, i32* readonly, i32* noalias align 512, i32* readonly, i32* noalias align 512, i32* readonly, i32* noalias align 512, i32* readonly, i32* noalias align 512, i32* readonly, i32* noalias align 512, i32* readonly, i32* noalias align 512, i32* readonly, i32* noalias align 512, i32* readonly, i32* noalias align 512, i32* readonly, i32* noalias align 512, i32* readonly, i32* noalias align 512, i32* readonly, i32* noalias align 512, i32* readonly, i32* noalias align 512, i32* readonly, i32* noalias align 512, i32* readonly, i32* noalias align 512, i32* readonly, i32* noalias align 512, i32* readonly, i32* noalias align 512, i32* readonly, i32* noalias align 512, i32* readonly, i32* noalias align 512, i32* readonly, i32* noalias align 512, i32* readonly, i32* noalias align 512, i32* readonly, i32* noalias align 512, i32* readonly, i32* noalias align 512, i32* readonly, i32* noalias align 512, i32* readonly, i32* noalias align 512, i32* readonly, i32* noalias align 512, i32* readonly, i32* noalias align 512, i32* readonly, i32* noalias align 512, i32* readonly, i32* noalias align 512, i32* readonly, i32* noalias align 512, i32* readonly, i32* noalias align 512, i32* readonly, i32* noalias align 512, i1* readonly, i1* noalias align 512, i1* readonly, i1* noalias align 512, i1* readonly, i1* noalias align 512, i1* readonly, i1* noalias align 512, i1* readonly, i1* noalias align 512, i1* readonly, i1* noalias align 512, i1* readonly, i1* noalias align 512, i1* readonly, i1* noalias align 512, i1* readonly, i1* noalias align 512, i1* readonly, i1* noalias align 512, i1* readonly, i1* noalias align 512, i1* readonly, i1* noalias align 512, i1* readonly, i1* noalias align 512, i1* readonly, i1* noalias align 512, i1* readonly, i1* noalias align 512, i1* readonly, i1* noalias align 512, i1* readonly, i1* noalias align 512, i1* readonly, i1* noalias align 512, i1* readonly, i1* noalias align 512, i1* readonly, i1* noalias align 512, i1* readonly, i1* noalias align 512, i1* readonly, i1* noalias align 512, i1* readonly, i1* noalias align 512, i1* readonly, i1* noalias align 512, i1* readonly, i1* noalias align 512, i1* readonly, i1* noalias align 512, i1* readonly, i1* noalias align 512, i1* readonly, i1* noalias align 512, i1* readonly, i1* noalias align 512, i1* readonly, i1* noalias align 512, i1* readonly, i1* noalias align 512, i1* readonly, i1* noalias align 512) unnamed_addr #1 {
entry:
  call fastcc void @onebyonecpy_hls.p0i1(i1* align 512 %1, i1* %0)
  call fastcc void @onebyonecpy_hls.p0i1(i1* align 512 %3, i1* %2)
  call fastcc void @onebyonecpy_hls.p0i16(i16* align 512 %5, i16* %4)
  call fastcc void @onebyonecpy_hls.p0i32(i32* align 512 %7, i32* %6)
  call fastcc void @onebyonecpy_hls.p0i32(i32* align 512 %9, i32* %8)
  call fastcc void @onebyonecpy_hls.p0i32(i32* align 512 %11, i32* %10)
  call fastcc void @onebyonecpy_hls.p0i32(i32* align 512 %13, i32* %12)
  call fastcc void @onebyonecpy_hls.p0i32(i32* align 512 %15, i32* %14)
  call fastcc void @onebyonecpy_hls.p0i32(i32* align 512 %17, i32* %16)
  call fastcc void @onebyonecpy_hls.p0i32(i32* align 512 %19, i32* %18)
  call fastcc void @onebyonecpy_hls.p0i32(i32* align 512 %21, i32* %20)
  call fastcc void @onebyonecpy_hls.p0i32(i32* align 512 %23, i32* %22)
  call fastcc void @onebyonecpy_hls.p0i32(i32* align 512 %25, i32* %24)
  call fastcc void @onebyonecpy_hls.p0i32(i32* align 512 %27, i32* %26)
  call fastcc void @onebyonecpy_hls.p0i32(i32* align 512 %29, i32* %28)
  call fastcc void @onebyonecpy_hls.p0i32(i32* align 512 %31, i32* %30)
  call fastcc void @onebyonecpy_hls.p0i32(i32* align 512 %33, i32* %32)
  call fastcc void @onebyonecpy_hls.p0i32(i32* align 512 %35, i32* %34)
  call fastcc void @onebyonecpy_hls.p0i32(i32* align 512 %37, i32* %36)
  call fastcc void @onebyonecpy_hls.p0i32(i32* align 512 %39, i32* %38)
  call fastcc void @onebyonecpy_hls.p0i32(i32* align 512 %41, i32* %40)
  call fastcc void @onebyonecpy_hls.p0i32(i32* align 512 %43, i32* %42)
  call fastcc void @onebyonecpy_hls.p0i32(i32* align 512 %45, i32* %44)
  call fastcc void @onebyonecpy_hls.p0i32(i32* align 512 %47, i32* %46)
  call fastcc void @onebyonecpy_hls.p0i32(i32* align 512 %49, i32* %48)
  call fastcc void @onebyonecpy_hls.p0i32(i32* align 512 %51, i32* %50)
  call fastcc void @onebyonecpy_hls.p0i32(i32* align 512 %53, i32* %52)
  call fastcc void @onebyonecpy_hls.p0i32(i32* align 512 %55, i32* %54)
  call fastcc void @onebyonecpy_hls.p0i32(i32* align 512 %57, i32* %56)
  call fastcc void @onebyonecpy_hls.p0i32(i32* align 512 %59, i32* %58)
  call fastcc void @onebyonecpy_hls.p0i32(i32* align 512 %61, i32* %60)
  call fastcc void @onebyonecpy_hls.p0i32(i32* align 512 %63, i32* %62)
  call fastcc void @onebyonecpy_hls.p0i32(i32* align 512 %65, i32* %64)
  call fastcc void @onebyonecpy_hls.p0i32(i32* align 512 %67, i32* %66)
  call fastcc void @onebyonecpy_hls.p0i32(i32* align 512 %69, i32* %68)
  call fastcc void @onebyonecpy_hls.p0i32(i32* align 512 %71, i32* %70)
  call fastcc void @onebyonecpy_hls.p0i32(i32* align 512 %73, i32* %72)
  call fastcc void @onebyonecpy_hls.p0i32(i32* align 512 %75, i32* %74)
  call fastcc void @onebyonecpy_hls.p0i32(i32* align 512 %77, i32* %76)
  call fastcc void @onebyonecpy_hls.p0i32(i32* align 512 %79, i32* %78)
  call fastcc void @onebyonecpy_hls.p0i32(i32* align 512 %81, i32* %80)
  call fastcc void @onebyonecpy_hls.p0i32(i32* align 512 %83, i32* %82)
  call fastcc void @onebyonecpy_hls.p0i32(i32* align 512 %85, i32* %84)
  call fastcc void @onebyonecpy_hls.p0i32(i32* align 512 %87, i32* %86)
  call fastcc void @onebyonecpy_hls.p0i32(i32* align 512 %89, i32* %88)
  call fastcc void @onebyonecpy_hls.p0i32(i32* align 512 %91, i32* %90)
  call fastcc void @onebyonecpy_hls.p0i32(i32* align 512 %93, i32* %92)
  call fastcc void @onebyonecpy_hls.p0i32(i32* align 512 %95, i32* %94)
  call fastcc void @onebyonecpy_hls.p0i32(i32* align 512 %97, i32* %96)
  call fastcc void @onebyonecpy_hls.p0i32(i32* align 512 %99, i32* %98)
  call fastcc void @onebyonecpy_hls.p0i32(i32* align 512 %101, i32* %100)
  call fastcc void @onebyonecpy_hls.p0i32(i32* align 512 %103, i32* %102)
  call fastcc void @onebyonecpy_hls.p0i32(i32* align 512 %105, i32* %104)
  call fastcc void @onebyonecpy_hls.p0i32(i32* align 512 %107, i32* %106)
  call fastcc void @onebyonecpy_hls.p0i32(i32* align 512 %109, i32* %108)
  call fastcc void @onebyonecpy_hls.p0i32(i32* align 512 %111, i32* %110)
  call fastcc void @onebyonecpy_hls.p0i32(i32* align 512 %113, i32* %112)
  call fastcc void @onebyonecpy_hls.p0i32(i32* align 512 %115, i32* %114)
  call fastcc void @onebyonecpy_hls.p0i32(i32* align 512 %117, i32* %116)
  call fastcc void @onebyonecpy_hls.p0i32(i32* align 512 %119, i32* %118)
  call fastcc void @onebyonecpy_hls.p0i32(i32* align 512 %121, i32* %120)
  call fastcc void @onebyonecpy_hls.p0i32(i32* align 512 %123, i32* %122)
  call fastcc void @onebyonecpy_hls.p0i32(i32* align 512 %125, i32* %124)
  call fastcc void @onebyonecpy_hls.p0i32(i32* align 512 %127, i32* %126)
  call fastcc void @onebyonecpy_hls.p0i32(i32* align 512 %129, i32* %128)
  call fastcc void @onebyonecpy_hls.p0i32(i32* align 512 %131, i32* %130)
  call fastcc void @onebyonecpy_hls.p0i32(i32* align 512 %133, i32* %132)
  call fastcc void @onebyonecpy_hls.p0i1(i1* align 512 %135, i1* %134)
  call fastcc void @onebyonecpy_hls.p0i1(i1* align 512 %137, i1* %136)
  call fastcc void @onebyonecpy_hls.p0i1(i1* align 512 %139, i1* %138)
  call fastcc void @onebyonecpy_hls.p0i1(i1* align 512 %141, i1* %140)
  call fastcc void @onebyonecpy_hls.p0i1(i1* align 512 %143, i1* %142)
  call fastcc void @onebyonecpy_hls.p0i1(i1* align 512 %145, i1* %144)
  call fastcc void @onebyonecpy_hls.p0i1(i1* align 512 %147, i1* %146)
  call fastcc void @onebyonecpy_hls.p0i1(i1* align 512 %149, i1* %148)
  call fastcc void @onebyonecpy_hls.p0i1(i1* align 512 %151, i1* %150)
  call fastcc void @onebyonecpy_hls.p0i1(i1* align 512 %153, i1* %152)
  call fastcc void @onebyonecpy_hls.p0i1(i1* align 512 %155, i1* %154)
  call fastcc void @onebyonecpy_hls.p0i1(i1* align 512 %157, i1* %156)
  call fastcc void @onebyonecpy_hls.p0i1(i1* align 512 %159, i1* %158)
  call fastcc void @onebyonecpy_hls.p0i1(i1* align 512 %161, i1* %160)
  call fastcc void @onebyonecpy_hls.p0i1(i1* align 512 %163, i1* %162)
  call fastcc void @onebyonecpy_hls.p0i1(i1* align 512 %165, i1* %164)
  call fastcc void @onebyonecpy_hls.p0i1(i1* align 512 %167, i1* %166)
  call fastcc void @onebyonecpy_hls.p0i1(i1* align 512 %169, i1* %168)
  call fastcc void @onebyonecpy_hls.p0i1(i1* align 512 %171, i1* %170)
  call fastcc void @onebyonecpy_hls.p0i1(i1* align 512 %173, i1* %172)
  call fastcc void @onebyonecpy_hls.p0i1(i1* align 512 %175, i1* %174)
  call fastcc void @onebyonecpy_hls.p0i1(i1* align 512 %177, i1* %176)
  call fastcc void @onebyonecpy_hls.p0i1(i1* align 512 %179, i1* %178)
  call fastcc void @onebyonecpy_hls.p0i1(i1* align 512 %181, i1* %180)
  call fastcc void @onebyonecpy_hls.p0i1(i1* align 512 %183, i1* %182)
  call fastcc void @onebyonecpy_hls.p0i1(i1* align 512 %185, i1* %184)
  call fastcc void @onebyonecpy_hls.p0i1(i1* align 512 %187, i1* %186)
  call fastcc void @onebyonecpy_hls.p0i1(i1* align 512 %189, i1* %188)
  call fastcc void @onebyonecpy_hls.p0i1(i1* align 512 %191, i1* %190)
  call fastcc void @onebyonecpy_hls.p0i1(i1* align 512 %193, i1* %192)
  call fastcc void @onebyonecpy_hls.p0i1(i1* align 512 %195, i1* %194)
  call fastcc void @onebyonecpy_hls.p0i1(i1* align 512 %197, i1* %196)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @onebyonecpy_hls.p0i1(i1* noalias align 512, i1* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq i1* %0, null
  %3 = icmp eq i1* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  %5 = bitcast i1* %0 to i8*
  %6 = bitcast i1* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %5, i8* align 1 %6, i64 1, i1 false)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #3

; Function Attrs: argmemonly noinline
define internal fastcc void @onebyonecpy_hls.p0i16(i16* noalias align 512, i16* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq i16* %0, null
  %3 = icmp eq i16* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  %5 = bitcast i16* %0 to i8*
  %6 = bitcast i16* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %5, i8* align 1 %6, i64 2, i1 false)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @onebyonecpy_hls.p0i32(i32* noalias align 512, i32* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq i32* %0, null
  %3 = icmp eq i32* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  %5 = bitcast i32* %0 to i8*
  %6 = bitcast i32* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %5, i8* align 1 %6, i64 4, i1 false)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @copy_out(i1*, i1* noalias readonly align 512, i1*, i1* noalias readonly align 512, i16*, i16* noalias readonly align 512, i32*, i32* noalias readonly align 512, i32*, i32* noalias readonly align 512, i32*, i32* noalias readonly align 512, i32*, i32* noalias readonly align 512, i32*, i32* noalias readonly align 512, i32*, i32* noalias readonly align 512, i32*, i32* noalias readonly align 512, i32*, i32* noalias readonly align 512, i32*, i32* noalias readonly align 512, i32*, i32* noalias readonly align 512, i32*, i32* noalias readonly align 512, i32*, i32* noalias readonly align 512, i32*, i32* noalias readonly align 512, i32*, i32* noalias readonly align 512, i32*, i32* noalias readonly align 512, i32*, i32* noalias readonly align 512, i32*, i32* noalias readonly align 512, i32*, i32* noalias readonly align 512, i32*, i32* noalias readonly align 512, i32*, i32* noalias readonly align 512, i32*, i32* noalias readonly align 512, i32*, i32* noalias readonly align 512, i32*, i32* noalias readonly align 512, i32*, i32* noalias readonly align 512, i32*, i32* noalias readonly align 512, i32*, i32* noalias readonly align 512, i32*, i32* noalias readonly align 512, i32*, i32* noalias readonly align 512, i32*, i32* noalias readonly align 512, i32*, i32* noalias readonly align 512, i32*, i32* noalias readonly align 512, i32*, i32* noalias readonly align 512, i32*, i32* noalias readonly align 512, i32*, i32* noalias readonly align 512, i32*, i32* noalias readonly align 512, i32*, i32* noalias readonly align 512, i32*, i32* noalias readonly align 512, i32*, i32* noalias readonly align 512, i32*, i32* noalias readonly align 512, i32*, i32* noalias readonly align 512, i32*, i32* noalias readonly align 512, i32*, i32* noalias readonly align 512, i32*, i32* noalias readonly align 512, i32*, i32* noalias readonly align 512, i32*, i32* noalias readonly align 512, i32*, i32* noalias readonly align 512, i32*, i32* noalias readonly align 512, i32*, i32* noalias readonly align 512, i32*, i32* noalias readonly align 512, i32*, i32* noalias readonly align 512, i32*, i32* noalias readonly align 512, i32*, i32* noalias readonly align 512, i32*, i32* noalias readonly align 512, i32*, i32* noalias readonly align 512, i32*, i32* noalias readonly align 512, i32*, i32* noalias readonly align 512, i32*, i32* noalias readonly align 512, i32*, i32* noalias readonly align 512, i32*, i32* noalias readonly align 512, i32*, i32* noalias readonly align 512, i32*, i32* noalias readonly align 512, i32*, i32* noalias readonly align 512, i32*, i32* noalias readonly align 512, i32*, i32* noalias readonly align 512, i1*, i1* noalias readonly align 512, i1*, i1* noalias readonly align 512, i1*, i1* noalias readonly align 512, i1*, i1* noalias readonly align 512, i1*, i1* noalias readonly align 512, i1*, i1* noalias readonly align 512, i1*, i1* noalias readonly align 512, i1*, i1* noalias readonly align 512, i1*, i1* noalias readonly align 512, i1*, i1* noalias readonly align 512, i1*, i1* noalias readonly align 512, i1*, i1* noalias readonly align 512, i1*, i1* noalias readonly align 512, i1*, i1* noalias readonly align 512, i1*, i1* noalias readonly align 512, i1*, i1* noalias readonly align 512, i1*, i1* noalias readonly align 512, i1*, i1* noalias readonly align 512, i1*, i1* noalias readonly align 512, i1*, i1* noalias readonly align 512, i1*, i1* noalias readonly align 512, i1*, i1* noalias readonly align 512, i1*, i1* noalias readonly align 512, i1*, i1* noalias readonly align 512, i1*, i1* noalias readonly align 512, i1*, i1* noalias readonly align 512, i1*, i1* noalias readonly align 512, i1*, i1* noalias readonly align 512, i1*, i1* noalias readonly align 512, i1*, i1* noalias readonly align 512, i1*, i1* noalias readonly align 512, i1*, i1* noalias readonly align 512) unnamed_addr #4 {
entry:
  call fastcc void @onebyonecpy_hls.p0i1(i1* %0, i1* align 512 %1)
  call fastcc void @onebyonecpy_hls.p0i1(i1* %2, i1* align 512 %3)
  call fastcc void @onebyonecpy_hls.p0i16(i16* %4, i16* align 512 %5)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %6, i32* align 512 %7)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %8, i32* align 512 %9)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %10, i32* align 512 %11)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %12, i32* align 512 %13)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %14, i32* align 512 %15)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %16, i32* align 512 %17)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %18, i32* align 512 %19)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %20, i32* align 512 %21)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %22, i32* align 512 %23)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %24, i32* align 512 %25)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %26, i32* align 512 %27)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %28, i32* align 512 %29)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %30, i32* align 512 %31)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %32, i32* align 512 %33)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %34, i32* align 512 %35)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %36, i32* align 512 %37)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %38, i32* align 512 %39)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %40, i32* align 512 %41)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %42, i32* align 512 %43)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %44, i32* align 512 %45)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %46, i32* align 512 %47)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %48, i32* align 512 %49)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %50, i32* align 512 %51)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %52, i32* align 512 %53)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %54, i32* align 512 %55)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %56, i32* align 512 %57)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %58, i32* align 512 %59)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %60, i32* align 512 %61)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %62, i32* align 512 %63)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %64, i32* align 512 %65)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %66, i32* align 512 %67)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %68, i32* align 512 %69)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %70, i32* align 512 %71)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %72, i32* align 512 %73)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %74, i32* align 512 %75)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %76, i32* align 512 %77)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %78, i32* align 512 %79)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %80, i32* align 512 %81)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %82, i32* align 512 %83)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %84, i32* align 512 %85)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %86, i32* align 512 %87)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %88, i32* align 512 %89)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %90, i32* align 512 %91)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %92, i32* align 512 %93)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %94, i32* align 512 %95)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %96, i32* align 512 %97)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %98, i32* align 512 %99)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %100, i32* align 512 %101)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %102, i32* align 512 %103)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %104, i32* align 512 %105)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %106, i32* align 512 %107)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %108, i32* align 512 %109)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %110, i32* align 512 %111)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %112, i32* align 512 %113)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %114, i32* align 512 %115)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %116, i32* align 512 %117)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %118, i32* align 512 %119)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %120, i32* align 512 %121)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %122, i32* align 512 %123)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %124, i32* align 512 %125)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %126, i32* align 512 %127)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %128, i32* align 512 %129)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %130, i32* align 512 %131)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %132, i32* align 512 %133)
  call fastcc void @onebyonecpy_hls.p0i1(i1* %134, i1* align 512 %135)
  call fastcc void @onebyonecpy_hls.p0i1(i1* %136, i1* align 512 %137)
  call fastcc void @onebyonecpy_hls.p0i1(i1* %138, i1* align 512 %139)
  call fastcc void @onebyonecpy_hls.p0i1(i1* %140, i1* align 512 %141)
  call fastcc void @onebyonecpy_hls.p0i1(i1* %142, i1* align 512 %143)
  call fastcc void @onebyonecpy_hls.p0i1(i1* %144, i1* align 512 %145)
  call fastcc void @onebyonecpy_hls.p0i1(i1* %146, i1* align 512 %147)
  call fastcc void @onebyonecpy_hls.p0i1(i1* %148, i1* align 512 %149)
  call fastcc void @onebyonecpy_hls.p0i1(i1* %150, i1* align 512 %151)
  call fastcc void @onebyonecpy_hls.p0i1(i1* %152, i1* align 512 %153)
  call fastcc void @onebyonecpy_hls.p0i1(i1* %154, i1* align 512 %155)
  call fastcc void @onebyonecpy_hls.p0i1(i1* %156, i1* align 512 %157)
  call fastcc void @onebyonecpy_hls.p0i1(i1* %158, i1* align 512 %159)
  call fastcc void @onebyonecpy_hls.p0i1(i1* %160, i1* align 512 %161)
  call fastcc void @onebyonecpy_hls.p0i1(i1* %162, i1* align 512 %163)
  call fastcc void @onebyonecpy_hls.p0i1(i1* %164, i1* align 512 %165)
  call fastcc void @onebyonecpy_hls.p0i1(i1* %166, i1* align 512 %167)
  call fastcc void @onebyonecpy_hls.p0i1(i1* %168, i1* align 512 %169)
  call fastcc void @onebyonecpy_hls.p0i1(i1* %170, i1* align 512 %171)
  call fastcc void @onebyonecpy_hls.p0i1(i1* %172, i1* align 512 %173)
  call fastcc void @onebyonecpy_hls.p0i1(i1* %174, i1* align 512 %175)
  call fastcc void @onebyonecpy_hls.p0i1(i1* %176, i1* align 512 %177)
  call fastcc void @onebyonecpy_hls.p0i1(i1* %178, i1* align 512 %179)
  call fastcc void @onebyonecpy_hls.p0i1(i1* %180, i1* align 512 %181)
  call fastcc void @onebyonecpy_hls.p0i1(i1* %182, i1* align 512 %183)
  call fastcc void @onebyonecpy_hls.p0i1(i1* %184, i1* align 512 %185)
  call fastcc void @onebyonecpy_hls.p0i1(i1* %186, i1* align 512 %187)
  call fastcc void @onebyonecpy_hls.p0i1(i1* %188, i1* align 512 %189)
  call fastcc void @onebyonecpy_hls.p0i1(i1* %190, i1* align 512 %191)
  call fastcc void @onebyonecpy_hls.p0i1(i1* %192, i1* align 512 %193)
  call fastcc void @onebyonecpy_hls.p0i1(i1* %194, i1* align 512 %195)
  call fastcc void @onebyonecpy_hls.p0i1(i1* %196, i1* align 512 %197)
  ret void
}

declare void @apatb_BFS_Ctrl_32X1_VER1_hw(i1*, i32, i1*, i16*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i1*, i1*, i1*, i1*, i1*, i1*, i1*, i1*, i1*, i1*, i1*, i1*, i1*, i1*, i1*, i1*, i1*, i1*, i1*, i1*, i1*, i1*, i1*, i1*, i1*, i1*, i1*, i1*, i1*, i1*, i1*, i1*)

define void @BFS_Ctrl_32X1_VER1_hw_stub_wrapper(i1*, i32, i1*, i16*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i1*, i1*, i1*, i1*, i1*, i1*, i1*, i1*, i1*, i1*, i1*, i1*, i1*, i1*, i1*, i1*, i1*, i1*, i1*, i1*, i1*, i1*, i1*, i1*, i1*, i1*, i1*, i1*, i1*, i1*, i1*, i1*) #5 {
entry:
  call void @copy_out(i1* null, i1* %0, i1* null, i1* %2, i16* null, i16* %3, i32* null, i32* %4, i32* null, i32* %5, i32* null, i32* %6, i32* null, i32* %7, i32* null, i32* %8, i32* null, i32* %9, i32* null, i32* %10, i32* null, i32* %11, i32* null, i32* %12, i32* null, i32* %13, i32* null, i32* %14, i32* null, i32* %15, i32* null, i32* %16, i32* null, i32* %17, i32* null, i32* %18, i32* null, i32* %19, i32* null, i32* %20, i32* null, i32* %21, i32* null, i32* %22, i32* null, i32* %23, i32* null, i32* %24, i32* null, i32* %25, i32* null, i32* %26, i32* null, i32* %27, i32* null, i32* %28, i32* null, i32* %29, i32* null, i32* %30, i32* null, i32* %31, i32* null, i32* %32, i32* null, i32* %33, i32* null, i32* %34, i32* null, i32* %35, i32* null, i32* %36, i32* null, i32* %37, i32* null, i32* %38, i32* null, i32* %39, i32* null, i32* %40, i32* null, i32* %41, i32* null, i32* %42, i32* null, i32* %43, i32* null, i32* %44, i32* null, i32* %45, i32* null, i32* %46, i32* null, i32* %47, i32* null, i32* %48, i32* null, i32* %49, i32* null, i32* %50, i32* null, i32* %51, i32* null, i32* %52, i32* null, i32* %53, i32* null, i32* %54, i32* null, i32* %55, i32* null, i32* %56, i32* null, i32* %57, i32* null, i32* %58, i32* null, i32* %59, i32* null, i32* %60, i32* null, i32* %61, i32* null, i32* %62, i32* null, i32* %63, i32* null, i32* %64, i32* null, i32* %65, i32* null, i32* %66, i32* null, i32* %67, i1* null, i1* %68, i1* null, i1* %69, i1* null, i1* %70, i1* null, i1* %71, i1* null, i1* %72, i1* null, i1* %73, i1* null, i1* %74, i1* null, i1* %75, i1* null, i1* %76, i1* null, i1* %77, i1* null, i1* %78, i1* null, i1* %79, i1* null, i1* %80, i1* null, i1* %81, i1* null, i1* %82, i1* null, i1* %83, i1* null, i1* %84, i1* null, i1* %85, i1* null, i1* %86, i1* null, i1* %87, i1* null, i1* %88, i1* null, i1* %89, i1* null, i1* %90, i1* null, i1* %91, i1* null, i1* %92, i1* null, i1* %93, i1* null, i1* %94, i1* null, i1* %95, i1* null, i1* %96, i1* null, i1* %97, i1* null, i1* %98, i1* null, i1* %99)
  call void @BFS_Ctrl_32X1_VER1_hw_stub(i1* %0, i32 %1, i1* %2, i16* %3, i32* %4, i32* %5, i32* %6, i32* %7, i32* %8, i32* %9, i32* %10, i32* %11, i32* %12, i32* %13, i32* %14, i32* %15, i32* %16, i32* %17, i32* %18, i32* %19, i32* %20, i32* %21, i32* %22, i32* %23, i32* %24, i32* %25, i32* %26, i32* %27, i32* %28, i32* %29, i32* %30, i32* %31, i32* %32, i32* %33, i32* %34, i32* %35, i32* %36, i32* %37, i32* %38, i32* %39, i32* %40, i32* %41, i32* %42, i32* %43, i32* %44, i32* %45, i32* %46, i32* %47, i32* %48, i32* %49, i32* %50, i32* %51, i32* %52, i32* %53, i32* %54, i32* %55, i32* %56, i32* %57, i32* %58, i32* %59, i32* %60, i32* %61, i32* %62, i32* %63, i32* %64, i32* %65, i32* %66, i32* %67, i1* %68, i1* %69, i1* %70, i1* %71, i1* %72, i1* %73, i1* %74, i1* %75, i1* %76, i1* %77, i1* %78, i1* %79, i1* %80, i1* %81, i1* %82, i1* %83, i1* %84, i1* %85, i1* %86, i1* %87, i1* %88, i1* %89, i1* %90, i1* %91, i1* %92, i1* %93, i1* %94, i1* %95, i1* %96, i1* %97, i1* %98, i1* %99)
  call void @copy_in(i1* null, i1* %0, i1* null, i1* %2, i16* null, i16* %3, i32* null, i32* %4, i32* null, i32* %5, i32* null, i32* %6, i32* null, i32* %7, i32* null, i32* %8, i32* null, i32* %9, i32* null, i32* %10, i32* null, i32* %11, i32* null, i32* %12, i32* null, i32* %13, i32* null, i32* %14, i32* null, i32* %15, i32* null, i32* %16, i32* null, i32* %17, i32* null, i32* %18, i32* null, i32* %19, i32* null, i32* %20, i32* null, i32* %21, i32* null, i32* %22, i32* null, i32* %23, i32* null, i32* %24, i32* null, i32* %25, i32* null, i32* %26, i32* null, i32* %27, i32* null, i32* %28, i32* null, i32* %29, i32* null, i32* %30, i32* null, i32* %31, i32* null, i32* %32, i32* null, i32* %33, i32* null, i32* %34, i32* null, i32* %35, i32* null, i32* %36, i32* null, i32* %37, i32* null, i32* %38, i32* null, i32* %39, i32* null, i32* %40, i32* null, i32* %41, i32* null, i32* %42, i32* null, i32* %43, i32* null, i32* %44, i32* null, i32* %45, i32* null, i32* %46, i32* null, i32* %47, i32* null, i32* %48, i32* null, i32* %49, i32* null, i32* %50, i32* null, i32* %51, i32* null, i32* %52, i32* null, i32* %53, i32* null, i32* %54, i32* null, i32* %55, i32* null, i32* %56, i32* null, i32* %57, i32* null, i32* %58, i32* null, i32* %59, i32* null, i32* %60, i32* null, i32* %61, i32* null, i32* %62, i32* null, i32* %63, i32* null, i32* %64, i32* null, i32* %65, i32* null, i32* %66, i32* null, i32* %67, i1* null, i1* %68, i1* null, i1* %69, i1* null, i1* %70, i1* null, i1* %71, i1* null, i1* %72, i1* null, i1* %73, i1* null, i1* %74, i1* null, i1* %75, i1* null, i1* %76, i1* null, i1* %77, i1* null, i1* %78, i1* null, i1* %79, i1* null, i1* %80, i1* null, i1* %81, i1* null, i1* %82, i1* null, i1* %83, i1* null, i1* %84, i1* null, i1* %85, i1* null, i1* %86, i1* null, i1* %87, i1* null, i1* %88, i1* null, i1* %89, i1* null, i1* %90, i1* null, i1* %91, i1* null, i1* %92, i1* null, i1* %93, i1* null, i1* %94, i1* null, i1* %95, i1* null, i1* %96, i1* null, i1* %97, i1* null, i1* %98, i1* null, i1* %99)
  ret void
}

declare void @BFS_Ctrl_32X1_VER1_hw_stub(i1*, i32, i1*, i16*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i1*, i1*, i1*, i1*, i1*, i1*, i1*, i1*, i1*, i1*, i1*, i1*, i1*, i1*, i1*, i1*, i1*, i1*, i1*, i1*, i1*, i1*, i1*, i1*, i1*, i1*, i1*, i1*, i1*, i1*, i1*, i1*)

attributes #0 = { noinline "fpga.wrapper.func"="wrapper" }
attributes #1 = { argmemonly noinline "fpga.wrapper.func"="copyin" }
attributes #2 = { argmemonly noinline "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #3 = { argmemonly nounwind }
attributes #4 = { argmemonly noinline "fpga.wrapper.func"="copyout" }
attributes #5 = { "fpga.wrapper.func"="stub" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
