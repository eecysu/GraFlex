; ModuleID = '/Zodiac/GraFlex/ArtifactEvaluation/figure8/BFS_Scalability/PE_4/src/hw/ctrl/tmp/bfs_ctrl_v1/solution1/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

; Function Attrs: noinline
define void @apatb_BFS_Ctrl_4X1_VER1_ir(i1* %dummyParam, i32 %N_Vertex, i1* %resWrite, i16* %glblIterIdx, i32* %cnt_scatter_0, i32* %cnt_scatter_1, i32* %cnt_scatter_2, i32* %cnt_scatter_3, i32* %cnt_gather_0, i32* %cnt_gather_1, i32* %cnt_gather_2, i32* %cnt_gather_3, i1* %exist_0, i1* %exist_1, i1* %exist_2, i1* %exist_3) local_unnamed_addr #0 {
entry:
  %dummyParam_copy = alloca i1, align 512
  %resWrite_copy = alloca i1, align 512
  %glblIterIdx_copy = alloca i16, align 512
  %cnt_scatter_0_copy = alloca i32, align 512
  %cnt_scatter_1_copy = alloca i32, align 512
  %cnt_scatter_2_copy = alloca i32, align 512
  %cnt_scatter_3_copy = alloca i32, align 512
  %cnt_gather_0_copy = alloca i32, align 512
  %cnt_gather_1_copy = alloca i32, align 512
  %cnt_gather_2_copy = alloca i32, align 512
  %cnt_gather_3_copy = alloca i32, align 512
  %exist_0_copy = alloca i1, align 512
  %exist_1_copy = alloca i1, align 512
  %exist_2_copy = alloca i1, align 512
  %exist_3_copy = alloca i1, align 512
  call fastcc void @copy_in(i1* %dummyParam, i1* nonnull align 512 %dummyParam_copy, i1* %resWrite, i1* nonnull align 512 %resWrite_copy, i16* %glblIterIdx, i16* nonnull align 512 %glblIterIdx_copy, i32* %cnt_scatter_0, i32* nonnull align 512 %cnt_scatter_0_copy, i32* %cnt_scatter_1, i32* nonnull align 512 %cnt_scatter_1_copy, i32* %cnt_scatter_2, i32* nonnull align 512 %cnt_scatter_2_copy, i32* %cnt_scatter_3, i32* nonnull align 512 %cnt_scatter_3_copy, i32* %cnt_gather_0, i32* nonnull align 512 %cnt_gather_0_copy, i32* %cnt_gather_1, i32* nonnull align 512 %cnt_gather_1_copy, i32* %cnt_gather_2, i32* nonnull align 512 %cnt_gather_2_copy, i32* %cnt_gather_3, i32* nonnull align 512 %cnt_gather_3_copy, i1* %exist_0, i1* nonnull align 512 %exist_0_copy, i1* %exist_1, i1* nonnull align 512 %exist_1_copy, i1* %exist_2, i1* nonnull align 512 %exist_2_copy, i1* %exist_3, i1* nonnull align 512 %exist_3_copy)
  call void @apatb_BFS_Ctrl_4X1_VER1_hw(i1* %dummyParam_copy, i32 %N_Vertex, i1* %resWrite_copy, i16* %glblIterIdx_copy, i32* %cnt_scatter_0_copy, i32* %cnt_scatter_1_copy, i32* %cnt_scatter_2_copy, i32* %cnt_scatter_3_copy, i32* %cnt_gather_0_copy, i32* %cnt_gather_1_copy, i32* %cnt_gather_2_copy, i32* %cnt_gather_3_copy, i1* %exist_0_copy, i1* %exist_1_copy, i1* %exist_2_copy, i1* %exist_3_copy)
  call fastcc void @copy_out(i1* %dummyParam, i1* nonnull align 512 %dummyParam_copy, i1* %resWrite, i1* nonnull align 512 %resWrite_copy, i16* %glblIterIdx, i16* nonnull align 512 %glblIterIdx_copy, i32* %cnt_scatter_0, i32* nonnull align 512 %cnt_scatter_0_copy, i32* %cnt_scatter_1, i32* nonnull align 512 %cnt_scatter_1_copy, i32* %cnt_scatter_2, i32* nonnull align 512 %cnt_scatter_2_copy, i32* %cnt_scatter_3, i32* nonnull align 512 %cnt_scatter_3_copy, i32* %cnt_gather_0, i32* nonnull align 512 %cnt_gather_0_copy, i32* %cnt_gather_1, i32* nonnull align 512 %cnt_gather_1_copy, i32* %cnt_gather_2, i32* nonnull align 512 %cnt_gather_2_copy, i32* %cnt_gather_3, i32* nonnull align 512 %cnt_gather_3_copy, i1* %exist_0, i1* nonnull align 512 %exist_0_copy, i1* %exist_1, i1* nonnull align 512 %exist_1_copy, i1* %exist_2, i1* nonnull align 512 %exist_2_copy, i1* %exist_3, i1* nonnull align 512 %exist_3_copy)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @copy_in(i1* readonly, i1* noalias align 512, i1* readonly, i1* noalias align 512, i16* readonly, i16* noalias align 512, i32* readonly, i32* noalias align 512, i32* readonly, i32* noalias align 512, i32* readonly, i32* noalias align 512, i32* readonly, i32* noalias align 512, i32* readonly, i32* noalias align 512, i32* readonly, i32* noalias align 512, i32* readonly, i32* noalias align 512, i32* readonly, i32* noalias align 512, i1* readonly, i1* noalias align 512, i1* readonly, i1* noalias align 512, i1* readonly, i1* noalias align 512, i1* readonly, i1* noalias align 512) unnamed_addr #1 {
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
  call fastcc void @onebyonecpy_hls.p0i1(i1* align 512 %23, i1* %22)
  call fastcc void @onebyonecpy_hls.p0i1(i1* align 512 %25, i1* %24)
  call fastcc void @onebyonecpy_hls.p0i1(i1* align 512 %27, i1* %26)
  call fastcc void @onebyonecpy_hls.p0i1(i1* align 512 %29, i1* %28)
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
define internal fastcc void @copy_out(i1*, i1* noalias readonly align 512, i1*, i1* noalias readonly align 512, i16*, i16* noalias readonly align 512, i32*, i32* noalias readonly align 512, i32*, i32* noalias readonly align 512, i32*, i32* noalias readonly align 512, i32*, i32* noalias readonly align 512, i32*, i32* noalias readonly align 512, i32*, i32* noalias readonly align 512, i32*, i32* noalias readonly align 512, i32*, i32* noalias readonly align 512, i1*, i1* noalias readonly align 512, i1*, i1* noalias readonly align 512, i1*, i1* noalias readonly align 512, i1*, i1* noalias readonly align 512) unnamed_addr #4 {
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
  call fastcc void @onebyonecpy_hls.p0i1(i1* %22, i1* align 512 %23)
  call fastcc void @onebyonecpy_hls.p0i1(i1* %24, i1* align 512 %25)
  call fastcc void @onebyonecpy_hls.p0i1(i1* %26, i1* align 512 %27)
  call fastcc void @onebyonecpy_hls.p0i1(i1* %28, i1* align 512 %29)
  ret void
}

declare void @apatb_BFS_Ctrl_4X1_VER1_hw(i1*, i32, i1*, i16*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i1*, i1*, i1*, i1*)

define void @BFS_Ctrl_4X1_VER1_hw_stub_wrapper(i1*, i32, i1*, i16*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i1*, i1*, i1*, i1*) #5 {
entry:
  call void @copy_out(i1* null, i1* %0, i1* null, i1* %2, i16* null, i16* %3, i32* null, i32* %4, i32* null, i32* %5, i32* null, i32* %6, i32* null, i32* %7, i32* null, i32* %8, i32* null, i32* %9, i32* null, i32* %10, i32* null, i32* %11, i1* null, i1* %12, i1* null, i1* %13, i1* null, i1* %14, i1* null, i1* %15)
  call void @BFS_Ctrl_4X1_VER1_hw_stub(i1* %0, i32 %1, i1* %2, i16* %3, i32* %4, i32* %5, i32* %6, i32* %7, i32* %8, i32* %9, i32* %10, i32* %11, i1* %12, i1* %13, i1* %14, i1* %15)
  call void @copy_in(i1* null, i1* %0, i1* null, i1* %2, i16* null, i16* %3, i32* null, i32* %4, i32* null, i32* %5, i32* null, i32* %6, i32* null, i32* %7, i32* null, i32* %8, i32* null, i32* %9, i32* null, i32* %10, i32* null, i32* %11, i1* null, i1* %12, i1* null, i1* %13, i1* null, i1* %14, i1* null, i1* %15)
  ret void
}

declare void @BFS_Ctrl_4X1_VER1_hw_stub(i1*, i32, i1*, i16*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i1*, i1*, i1*, i1*)

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
