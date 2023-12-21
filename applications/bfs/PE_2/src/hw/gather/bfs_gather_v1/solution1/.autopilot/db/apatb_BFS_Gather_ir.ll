; ModuleID = '/Zodiac/GraFlex/ArtifactEvaluation/figure8/BFS_Scalability/PE_2/src/hw/gather/bfs_gather_v1/solution1/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%struct.dpkt_t = type { %struct.ap_uint, %struct.ap_uint, %struct.ap_uint, %struct.ap_uint, %struct.ap_uint, %struct.ap_uint, %struct.ap_uint, %struct.ap_uint }
%struct.ap_uint = type { %struct.ap_int_base }
%struct.ap_int_base = type { %struct.ssdm_int }
%struct.ssdm_int = type { i8 }

; Function Attrs: noinline
define void @apatb_BFS_Gather_ir(i8 %peID, i32* %sw_data, i1* %exist, [4096 x %struct.dpkt_t]* %tmp_dist) local_unnamed_addr #0 {
entry:
  %sw_data_copy = alloca i32, align 512
  %exist_copy = alloca i1, align 512
  %malloccall_0 = call i8* @malloc(i64 32768)
  %malloccall_1 = call i8* @malloc(i64 32768)
  %malloccall_2 = call i8* @malloc(i64 32768)
  %malloccall_3 = call i8* @malloc(i64 32768)
  %malloccall_4 = call i8* @malloc(i64 32768)
  %malloccall_5 = call i8* @malloc(i64 32768)
  %malloccall_6 = call i8* @malloc(i64 32768)
  %malloccall_7 = call i8* @malloc(i64 32768)
  %tmp_dist_copy_0 = bitcast i8* %malloccall_0 to [4096 x %struct.dpkt_t]*
  %tmp_dist_copy_1 = bitcast i8* %malloccall_1 to [4096 x %struct.dpkt_t]*
  %tmp_dist_copy_2 = bitcast i8* %malloccall_2 to [4096 x %struct.dpkt_t]*
  %tmp_dist_copy_3 = bitcast i8* %malloccall_3 to [4096 x %struct.dpkt_t]*
  %tmp_dist_copy_4 = bitcast i8* %malloccall_4 to [4096 x %struct.dpkt_t]*
  %tmp_dist_copy_5 = bitcast i8* %malloccall_5 to [4096 x %struct.dpkt_t]*
  %tmp_dist_copy_6 = bitcast i8* %malloccall_6 to [4096 x %struct.dpkt_t]*
  %tmp_dist_copy_7 = bitcast i8* %malloccall_7 to [4096 x %struct.dpkt_t]*
  %0 = bitcast [4096 x %struct.dpkt_t]* %tmp_dist to [8 x [4096 x %struct.dpkt_t]]*
  call void @copy_in(i32* %sw_data, i32* nonnull align 512 %sw_data_copy, i1* %exist, i1* nonnull align 512 %exist_copy, [8 x [4096 x %struct.dpkt_t]]* %0, [4096 x %struct.dpkt_t]* %tmp_dist_copy_0, [4096 x %struct.dpkt_t]* %tmp_dist_copy_1, [4096 x %struct.dpkt_t]* %tmp_dist_copy_2, [4096 x %struct.dpkt_t]* %tmp_dist_copy_3, [4096 x %struct.dpkt_t]* %tmp_dist_copy_4, [4096 x %struct.dpkt_t]* %tmp_dist_copy_5, [4096 x %struct.dpkt_t]* %tmp_dist_copy_6, [4096 x %struct.dpkt_t]* %tmp_dist_copy_7)
  call void @apatb_BFS_Gather_hw(i8 %peID, i32* %sw_data_copy, i1* %exist_copy, [4096 x %struct.dpkt_t]* %tmp_dist_copy_0, [4096 x %struct.dpkt_t]* %tmp_dist_copy_1, [4096 x %struct.dpkt_t]* %tmp_dist_copy_2, [4096 x %struct.dpkt_t]* %tmp_dist_copy_3, [4096 x %struct.dpkt_t]* %tmp_dist_copy_4, [4096 x %struct.dpkt_t]* %tmp_dist_copy_5, [4096 x %struct.dpkt_t]* %tmp_dist_copy_6, [4096 x %struct.dpkt_t]* %tmp_dist_copy_7)
  call void @copy_out(i32* %sw_data, i32* nonnull align 512 %sw_data_copy, i1* %exist, i1* nonnull align 512 %exist_copy, [8 x [4096 x %struct.dpkt_t]]* %0, [4096 x %struct.dpkt_t]* %tmp_dist_copy_0, [4096 x %struct.dpkt_t]* %tmp_dist_copy_1, [4096 x %struct.dpkt_t]* %tmp_dist_copy_2, [4096 x %struct.dpkt_t]* %tmp_dist_copy_3, [4096 x %struct.dpkt_t]* %tmp_dist_copy_4, [4096 x %struct.dpkt_t]* %tmp_dist_copy_5, [4096 x %struct.dpkt_t]* %tmp_dist_copy_6, [4096 x %struct.dpkt_t]* %tmp_dist_copy_7)
  call void @free(i8* %malloccall_0)
  call void @free(i8* %malloccall_1)
  call void @free(i8* %malloccall_2)
  call void @free(i8* %malloccall_3)
  call void @free(i8* %malloccall_4)
  call void @free(i8* %malloccall_5)
  call void @free(i8* %malloccall_6)
  call void @free(i8* %malloccall_7)
  ret void
}

declare noalias i8* @malloc(i64) local_unnamed_addr

; Function Attrs: argmemonly noinline
define internal fastcc void @onebyonecpy_hls.p0i32(i32* noalias align 512, i32* noalias readonly) unnamed_addr #1 {
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

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #2

; Function Attrs: argmemonly noinline
define internal fastcc void @onebyonecpy_hls.p0i1(i1* noalias align 512, i1* noalias readonly) unnamed_addr #1 {
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

declare i1 @fpga_fifo_exist_1(i8*) local_unnamed_addr

declare void @free(i8*) local_unnamed_addr

; Function Attrs: argmemonly noinline
define internal void @streamcpy_hls.p0struct.ap_uint.4.5(%struct.ap_uint* noalias nocapture "orig.arg.no"="0", %struct.ap_uint* noalias nocapture "orig.arg.no"="1") #3 {
entry:
  %2 = alloca %struct.ap_uint
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %struct.ap_uint* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_1(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %struct.ap_uint* %2 to i8*
  %6 = bitcast %struct.ap_uint* %1 to i8*
  call void @fpga_fifo_pop_1(i8* %5, i8* %6)
  %7 = load volatile %struct.ap_uint, %struct.ap_uint* %2
  %8 = bitcast %struct.ap_uint* %2 to i8*
  %9 = bitcast %struct.ap_uint* %0 to i8*
  call void @fpga_fifo_push_1(i8* %8, i8* %9)
  br label %empty, !llvm.loop !5

ret:                                              ; preds = %empty
  %10 = getelementptr inbounds %struct.ap_uint, %struct.ap_uint* %1, i32 0, i32 0, i32 0, i32 0
  %11 = getelementptr %struct.ap_uint, %struct.ap_uint* %0, i32 0, i32 0, i32 0, i32 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 1, i1 false)
  ret void
}

; Function Attrs: argmemonly noinline
define internal void @streamcpy_hls.p0struct.ap_int_base.6.7(%struct.ap_int_base* noalias nocapture "orig.arg.no"="0", %struct.ap_int_base* noalias nocapture "orig.arg.no"="1") #3 {
entry:
  %2 = alloca %struct.ap_int_base
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %struct.ap_int_base* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_1(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %struct.ap_int_base* %2 to i8*
  %6 = bitcast %struct.ap_int_base* %1 to i8*
  call void @fpga_fifo_pop_1(i8* %5, i8* %6)
  %7 = load volatile %struct.ap_int_base, %struct.ap_int_base* %2
  %8 = bitcast %struct.ap_int_base* %2 to i8*
  %9 = bitcast %struct.ap_int_base* %0 to i8*
  call void @fpga_fifo_push_1(i8* %8, i8* %9)
  br label %empty, !llvm.loop !7

ret:                                              ; preds = %empty
  %10 = getelementptr inbounds %struct.ap_int_base, %struct.ap_int_base* %1, i32 0, i32 0, i32 0
  %11 = getelementptr %struct.ap_int_base, %struct.ap_int_base* %0, i32 0, i32 0, i32 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 1, i1 false)
  ret void
}

; Function Attrs: argmemonly noinline
define internal void @streamcpy_hls.p0struct.ssdm_int.8.9(%struct.ssdm_int* noalias nocapture "orig.arg.no"="0", %struct.ssdm_int* noalias nocapture "orig.arg.no"="1") #3 {
entry:
  %2 = alloca %struct.ssdm_int
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %struct.ssdm_int* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_1(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %struct.ssdm_int* %2 to i8*
  %6 = bitcast %struct.ssdm_int* %1 to i8*
  call void @fpga_fifo_pop_1(i8* %5, i8* %6)
  %7 = load volatile %struct.ssdm_int, %struct.ssdm_int* %2
  %8 = bitcast %struct.ssdm_int* %2 to i8*
  %9 = bitcast %struct.ssdm_int* %0 to i8*
  call void @fpga_fifo_push_1(i8* %8, i8* %9)
  br label %empty, !llvm.loop !8

ret:                                              ; preds = %empty
  %10 = getelementptr inbounds %struct.ssdm_int, %struct.ssdm_int* %1, i32 0, i32 0
  %11 = getelementptr %struct.ssdm_int, %struct.ssdm_int* %0, i32 0, i32 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 1, i1 false)
  ret void
}

; Function Attrs: noinline
define internal void @onebyonecpy_hls.p0a8a4096struct.dpkt_t.3.10([4096 x %struct.dpkt_t]* noalias "orig.arg.no"="0" %_0, [4096 x %struct.dpkt_t]* noalias "orig.arg.no"="0" %_1, [4096 x %struct.dpkt_t]* noalias "orig.arg.no"="0" %_2, [4096 x %struct.dpkt_t]* noalias "orig.arg.no"="0" %_3, [4096 x %struct.dpkt_t]* noalias "orig.arg.no"="0" %_4, [4096 x %struct.dpkt_t]* noalias "orig.arg.no"="0" %_5, [4096 x %struct.dpkt_t]* noalias "orig.arg.no"="0" %_6, [4096 x %struct.dpkt_t]* noalias "orig.arg.no"="0" %_7, [8 x [4096 x %struct.dpkt_t]]* noalias "orig.arg.no"="1") #4 {
entry:
  %1 = icmp eq [4096 x %struct.dpkt_t]* %_0, null
  %2 = icmp eq [8 x [4096 x %struct.dpkt_t]]* %0, null
  %3 = or i1 %1, %2
  br i1 %3, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop.split, %copy
  %for.loop.idx74 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop.split ]
  br label %for.loop2

for.loop2:                                        ; preds = %for.loop.head1, %for.loop
  %for.loop.idx373 = phi i64 [ 0, %for.loop ], [ %for.loop.idx3.next, %for.loop.head1 ]
  %src.addr6.09 = getelementptr [8 x [4096 x %struct.dpkt_t]], [8 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 %for.loop.idx74, i64 %for.loop.idx373, i32 0
  %dst.addr5.010_0 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_0, i64 0, i64 %for.loop.idx373, i32 0
  %dst.addr5.010_1 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_1, i64 0, i64 %for.loop.idx373, i32 0
  %dst.addr5.010_2 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_2, i64 0, i64 %for.loop.idx373, i32 0
  %dst.addr5.010_3 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_3, i64 0, i64 %for.loop.idx373, i32 0
  %dst.addr5.010_4 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_4, i64 0, i64 %for.loop.idx373, i32 0
  %dst.addr5.010_5 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_5, i64 0, i64 %for.loop.idx373, i32 0
  %dst.addr5.010_6 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_6, i64 0, i64 %for.loop.idx373, i32 0
  %dst.addr5.010_7 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_7, i64 0, i64 %for.loop.idx373, i32 0
  %4 = getelementptr [8 x [4096 x %struct.dpkt_t]], [8 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 %for.loop.idx74, i64 %for.loop.idx373, i32 0, i32 0, i32 0, i32 0
  %5 = call i1 @fpga_fifo_exist_1(i8* %4)
  br i1 %5, label %6, label %7

; <label>:6:                                      ; preds = %for.loop2
  switch i64 %for.loop.idx74, label %dst.addr5.010.default [
    i64 0, label %dst.addr5.010.case.0
    i64 1, label %dst.addr5.010.case.1
    i64 2, label %dst.addr5.010.case.2
    i64 3, label %dst.addr5.010.case.3
    i64 4, label %dst.addr5.010.case.4
    i64 5, label %dst.addr5.010.case.5
    i64 6, label %dst.addr5.010.case.6
    i64 7, label %dst.addr5.010.case.7
  ]

dst.addr5.010.default:                            ; preds = %6
  unreachable

dst.addr5.010.case.0:                             ; preds = %6
  call void @streamcpy_hls.p0struct.ap_uint.4.5(%struct.ap_uint* %dst.addr5.010_0, %struct.ap_uint* %src.addr6.09)
  br label %dst.addr5.010.exit

dst.addr5.010.case.1:                             ; preds = %6
  call void @streamcpy_hls.p0struct.ap_uint.4.5(%struct.ap_uint* %dst.addr5.010_1, %struct.ap_uint* %src.addr6.09)
  br label %dst.addr5.010.exit

dst.addr5.010.case.2:                             ; preds = %6
  call void @streamcpy_hls.p0struct.ap_uint.4.5(%struct.ap_uint* %dst.addr5.010_2, %struct.ap_uint* %src.addr6.09)
  br label %dst.addr5.010.exit

dst.addr5.010.case.3:                             ; preds = %6
  call void @streamcpy_hls.p0struct.ap_uint.4.5(%struct.ap_uint* %dst.addr5.010_3, %struct.ap_uint* %src.addr6.09)
  br label %dst.addr5.010.exit

dst.addr5.010.case.4:                             ; preds = %6
  call void @streamcpy_hls.p0struct.ap_uint.4.5(%struct.ap_uint* %dst.addr5.010_4, %struct.ap_uint* %src.addr6.09)
  br label %dst.addr5.010.exit

dst.addr5.010.case.5:                             ; preds = %6
  call void @streamcpy_hls.p0struct.ap_uint.4.5(%struct.ap_uint* %dst.addr5.010_5, %struct.ap_uint* %src.addr6.09)
  br label %dst.addr5.010.exit

dst.addr5.010.case.6:                             ; preds = %6
  call void @streamcpy_hls.p0struct.ap_uint.4.5(%struct.ap_uint* %dst.addr5.010_6, %struct.ap_uint* %src.addr6.09)
  br label %dst.addr5.010.exit

dst.addr5.010.case.7:                             ; preds = %6
  call void @streamcpy_hls.p0struct.ap_uint.4.5(%struct.ap_uint* %dst.addr5.010_7, %struct.ap_uint* %src.addr6.09)
  br label %dst.addr5.010.exit

; <label>:7:                                      ; preds = %for.loop2
  %src.addr6.0.011 = getelementptr [8 x [4096 x %struct.dpkt_t]], [8 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 %for.loop.idx74, i64 %for.loop.idx373, i32 0, i32 0
  %dst.addr5.0.012_0 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_0, i64 0, i64 %for.loop.idx373, i32 0, i32 0
  %dst.addr5.0.012_1 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_1, i64 0, i64 %for.loop.idx373, i32 0, i32 0
  %dst.addr5.0.012_2 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_2, i64 0, i64 %for.loop.idx373, i32 0, i32 0
  %dst.addr5.0.012_3 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_3, i64 0, i64 %for.loop.idx373, i32 0, i32 0
  %dst.addr5.0.012_4 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_4, i64 0, i64 %for.loop.idx373, i32 0, i32 0
  %dst.addr5.0.012_5 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_5, i64 0, i64 %for.loop.idx373, i32 0, i32 0
  %dst.addr5.0.012_6 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_6, i64 0, i64 %for.loop.idx373, i32 0, i32 0
  %dst.addr5.0.012_7 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_7, i64 0, i64 %for.loop.idx373, i32 0, i32 0
  %8 = call i1 @fpga_fifo_exist_1(i8* %4)
  br i1 %8, label %9, label %10

; <label>:9:                                      ; preds = %7
  switch i64 %for.loop.idx74, label %dst.addr5.0.012.default [
    i64 0, label %dst.addr5.0.012.case.0
    i64 1, label %dst.addr5.0.012.case.1
    i64 2, label %dst.addr5.0.012.case.2
    i64 3, label %dst.addr5.0.012.case.3
    i64 4, label %dst.addr5.0.012.case.4
    i64 5, label %dst.addr5.0.012.case.5
    i64 6, label %dst.addr5.0.012.case.6
    i64 7, label %dst.addr5.0.012.case.7
  ]

dst.addr5.0.012.default:                          ; preds = %9
  unreachable

dst.addr5.0.012.case.0:                           ; preds = %9
  call void @streamcpy_hls.p0struct.ap_int_base.6.7(%struct.ap_int_base* %dst.addr5.0.012_0, %struct.ap_int_base* %src.addr6.0.011)
  br label %dst.addr5.010.exit

dst.addr5.0.012.case.1:                           ; preds = %9
  call void @streamcpy_hls.p0struct.ap_int_base.6.7(%struct.ap_int_base* %dst.addr5.0.012_1, %struct.ap_int_base* %src.addr6.0.011)
  br label %dst.addr5.010.exit

dst.addr5.0.012.case.2:                           ; preds = %9
  call void @streamcpy_hls.p0struct.ap_int_base.6.7(%struct.ap_int_base* %dst.addr5.0.012_2, %struct.ap_int_base* %src.addr6.0.011)
  br label %dst.addr5.010.exit

dst.addr5.0.012.case.3:                           ; preds = %9
  call void @streamcpy_hls.p0struct.ap_int_base.6.7(%struct.ap_int_base* %dst.addr5.0.012_3, %struct.ap_int_base* %src.addr6.0.011)
  br label %dst.addr5.010.exit

dst.addr5.0.012.case.4:                           ; preds = %9
  call void @streamcpy_hls.p0struct.ap_int_base.6.7(%struct.ap_int_base* %dst.addr5.0.012_4, %struct.ap_int_base* %src.addr6.0.011)
  br label %dst.addr5.010.exit

dst.addr5.0.012.case.5:                           ; preds = %9
  call void @streamcpy_hls.p0struct.ap_int_base.6.7(%struct.ap_int_base* %dst.addr5.0.012_5, %struct.ap_int_base* %src.addr6.0.011)
  br label %dst.addr5.010.exit

dst.addr5.0.012.case.6:                           ; preds = %9
  call void @streamcpy_hls.p0struct.ap_int_base.6.7(%struct.ap_int_base* %dst.addr5.0.012_6, %struct.ap_int_base* %src.addr6.0.011)
  br label %dst.addr5.010.exit

dst.addr5.0.012.case.7:                           ; preds = %9
  call void @streamcpy_hls.p0struct.ap_int_base.6.7(%struct.ap_int_base* %dst.addr5.0.012_7, %struct.ap_int_base* %src.addr6.0.011)
  br label %dst.addr5.010.exit

; <label>:10:                                     ; preds = %7
  %src.addr6.0.0.013 = getelementptr [8 x [4096 x %struct.dpkt_t]], [8 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 %for.loop.idx74, i64 %for.loop.idx373, i32 0, i32 0, i32 0
  %dst.addr5.0.0.014_0 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_0, i64 0, i64 %for.loop.idx373, i32 0, i32 0, i32 0
  %dst.addr5.0.0.014_1 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_1, i64 0, i64 %for.loop.idx373, i32 0, i32 0, i32 0
  %dst.addr5.0.0.014_2 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_2, i64 0, i64 %for.loop.idx373, i32 0, i32 0, i32 0
  %dst.addr5.0.0.014_3 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_3, i64 0, i64 %for.loop.idx373, i32 0, i32 0, i32 0
  %dst.addr5.0.0.014_4 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_4, i64 0, i64 %for.loop.idx373, i32 0, i32 0, i32 0
  %dst.addr5.0.0.014_5 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_5, i64 0, i64 %for.loop.idx373, i32 0, i32 0, i32 0
  %dst.addr5.0.0.014_6 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_6, i64 0, i64 %for.loop.idx373, i32 0, i32 0, i32 0
  %dst.addr5.0.0.014_7 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_7, i64 0, i64 %for.loop.idx373, i32 0, i32 0, i32 0
  %11 = call i1 @fpga_fifo_exist_1(i8* %4)
  br i1 %11, label %12, label %13

; <label>:12:                                     ; preds = %10
  switch i64 %for.loop.idx74, label %dst.addr5.0.0.014.default [
    i64 0, label %dst.addr5.0.0.014.case.0
    i64 1, label %dst.addr5.0.0.014.case.1
    i64 2, label %dst.addr5.0.0.014.case.2
    i64 3, label %dst.addr5.0.0.014.case.3
    i64 4, label %dst.addr5.0.0.014.case.4
    i64 5, label %dst.addr5.0.0.014.case.5
    i64 6, label %dst.addr5.0.0.014.case.6
    i64 7, label %dst.addr5.0.0.014.case.7
  ]

dst.addr5.0.0.014.default:                        ; preds = %12
  unreachable

dst.addr5.0.0.014.case.0:                         ; preds = %12
  call void @streamcpy_hls.p0struct.ssdm_int.8.9(%struct.ssdm_int* %dst.addr5.0.0.014_0, %struct.ssdm_int* %src.addr6.0.0.013)
  br label %dst.addr5.010.exit

dst.addr5.0.0.014.case.1:                         ; preds = %12
  call void @streamcpy_hls.p0struct.ssdm_int.8.9(%struct.ssdm_int* %dst.addr5.0.0.014_1, %struct.ssdm_int* %src.addr6.0.0.013)
  br label %dst.addr5.010.exit

dst.addr5.0.0.014.case.2:                         ; preds = %12
  call void @streamcpy_hls.p0struct.ssdm_int.8.9(%struct.ssdm_int* %dst.addr5.0.0.014_2, %struct.ssdm_int* %src.addr6.0.0.013)
  br label %dst.addr5.010.exit

dst.addr5.0.0.014.case.3:                         ; preds = %12
  call void @streamcpy_hls.p0struct.ssdm_int.8.9(%struct.ssdm_int* %dst.addr5.0.0.014_3, %struct.ssdm_int* %src.addr6.0.0.013)
  br label %dst.addr5.010.exit

dst.addr5.0.0.014.case.4:                         ; preds = %12
  call void @streamcpy_hls.p0struct.ssdm_int.8.9(%struct.ssdm_int* %dst.addr5.0.0.014_4, %struct.ssdm_int* %src.addr6.0.0.013)
  br label %dst.addr5.010.exit

dst.addr5.0.0.014.case.5:                         ; preds = %12
  call void @streamcpy_hls.p0struct.ssdm_int.8.9(%struct.ssdm_int* %dst.addr5.0.0.014_5, %struct.ssdm_int* %src.addr6.0.0.013)
  br label %dst.addr5.010.exit

dst.addr5.0.0.014.case.6:                         ; preds = %12
  call void @streamcpy_hls.p0struct.ssdm_int.8.9(%struct.ssdm_int* %dst.addr5.0.0.014_6, %struct.ssdm_int* %src.addr6.0.0.013)
  br label %dst.addr5.010.exit

dst.addr5.0.0.014.case.7:                         ; preds = %12
  call void @streamcpy_hls.p0struct.ssdm_int.8.9(%struct.ssdm_int* %dst.addr5.0.0.014_7, %struct.ssdm_int* %src.addr6.0.0.013)
  br label %dst.addr5.010.exit

; <label>:13:                                     ; preds = %10
  %dst.addr5.0.0.0.016_0 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_0, i64 0, i64 %for.loop.idx373, i32 0, i32 0, i32 0, i32 0
  %dst.addr5.0.0.0.016_1 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_1, i64 0, i64 %for.loop.idx373, i32 0, i32 0, i32 0, i32 0
  %dst.addr5.0.0.0.016_2 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_2, i64 0, i64 %for.loop.idx373, i32 0, i32 0, i32 0, i32 0
  %dst.addr5.0.0.0.016_3 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_3, i64 0, i64 %for.loop.idx373, i32 0, i32 0, i32 0, i32 0
  %dst.addr5.0.0.0.016_4 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_4, i64 0, i64 %for.loop.idx373, i32 0, i32 0, i32 0, i32 0
  %dst.addr5.0.0.0.016_5 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_5, i64 0, i64 %for.loop.idx373, i32 0, i32 0, i32 0, i32 0
  %dst.addr5.0.0.0.016_6 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_6, i64 0, i64 %for.loop.idx373, i32 0, i32 0, i32 0, i32 0
  %dst.addr5.0.0.0.016_7 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_7, i64 0, i64 %for.loop.idx373, i32 0, i32 0, i32 0, i32 0
  switch i64 %for.loop.idx74, label %dst.addr5.0.0.0.016.default [
    i64 0, label %dst.addr5.0.0.0.016.case.0
    i64 1, label %dst.addr5.0.0.0.016.case.1
    i64 2, label %dst.addr5.0.0.0.016.case.2
    i64 3, label %dst.addr5.0.0.0.016.case.3
    i64 4, label %dst.addr5.0.0.0.016.case.4
    i64 5, label %dst.addr5.0.0.0.016.case.5
    i64 6, label %dst.addr5.0.0.0.016.case.6
    i64 7, label %dst.addr5.0.0.0.016.case.7
  ]

dst.addr5.0.0.0.016.default:                      ; preds = %13
  unreachable

dst.addr5.0.0.0.016.case.0:                       ; preds = %13
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr5.0.0.0.016_0, i8* align 1 %4, i64 1, i1 false)
  br label %dst.addr5.010.exit

dst.addr5.0.0.0.016.case.1:                       ; preds = %13
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr5.0.0.0.016_1, i8* align 1 %4, i64 1, i1 false)
  br label %dst.addr5.010.exit

dst.addr5.0.0.0.016.case.2:                       ; preds = %13
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr5.0.0.0.016_2, i8* align 1 %4, i64 1, i1 false)
  br label %dst.addr5.010.exit

dst.addr5.0.0.0.016.case.3:                       ; preds = %13
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr5.0.0.0.016_3, i8* align 1 %4, i64 1, i1 false)
  br label %dst.addr5.010.exit

dst.addr5.0.0.0.016.case.4:                       ; preds = %13
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr5.0.0.0.016_4, i8* align 1 %4, i64 1, i1 false)
  br label %dst.addr5.010.exit

dst.addr5.0.0.0.016.case.5:                       ; preds = %13
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr5.0.0.0.016_5, i8* align 1 %4, i64 1, i1 false)
  br label %dst.addr5.010.exit

dst.addr5.0.0.0.016.case.6:                       ; preds = %13
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr5.0.0.0.016_6, i8* align 1 %4, i64 1, i1 false)
  br label %dst.addr5.010.exit

dst.addr5.0.0.0.016.case.7:                       ; preds = %13
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr5.0.0.0.016_7, i8* align 1 %4, i64 1, i1 false)
  br label %dst.addr5.010.exit

dst.addr5.010.exit:                               ; preds = %dst.addr5.0.0.0.016.case.7, %dst.addr5.0.0.0.016.case.6, %dst.addr5.0.0.0.016.case.5, %dst.addr5.0.0.0.016.case.4, %dst.addr5.0.0.0.016.case.3, %dst.addr5.0.0.0.016.case.2, %dst.addr5.0.0.0.016.case.1, %dst.addr5.0.0.0.016.case.0, %dst.addr5.0.0.014.case.7, %dst.addr5.0.0.014.case.6, %dst.addr5.0.0.014.case.5, %dst.addr5.0.0.014.case.4, %dst.addr5.0.0.014.case.3, %dst.addr5.0.0.014.case.2, %dst.addr5.0.0.014.case.1, %dst.addr5.0.0.014.case.0, %dst.addr5.0.012.case.7, %dst.addr5.0.012.case.6, %dst.addr5.0.012.case.5, %dst.addr5.0.012.case.4, %dst.addr5.0.012.case.3, %dst.addr5.0.012.case.2, %dst.addr5.0.012.case.1, %dst.addr5.0.012.case.0, %dst.addr5.010.case.7, %dst.addr5.010.case.6, %dst.addr5.010.case.5, %dst.addr5.010.case.4, %dst.addr5.010.case.3, %dst.addr5.010.case.2, %dst.addr5.010.case.1, %dst.addr5.010.case.0
  %src.addr6.117 = getelementptr [8 x [4096 x %struct.dpkt_t]], [8 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 %for.loop.idx74, i64 %for.loop.idx373, i32 1
  %dst.addr5.118_0 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_0, i64 0, i64 %for.loop.idx373, i32 1
  %dst.addr5.118_1 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_1, i64 0, i64 %for.loop.idx373, i32 1
  %dst.addr5.118_2 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_2, i64 0, i64 %for.loop.idx373, i32 1
  %dst.addr5.118_3 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_3, i64 0, i64 %for.loop.idx373, i32 1
  %dst.addr5.118_4 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_4, i64 0, i64 %for.loop.idx373, i32 1
  %dst.addr5.118_5 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_5, i64 0, i64 %for.loop.idx373, i32 1
  %dst.addr5.118_6 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_6, i64 0, i64 %for.loop.idx373, i32 1
  %dst.addr5.118_7 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_7, i64 0, i64 %for.loop.idx373, i32 1
  %14 = getelementptr [8 x [4096 x %struct.dpkt_t]], [8 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 %for.loop.idx74, i64 %for.loop.idx373, i32 1, i32 0, i32 0, i32 0
  %15 = call i1 @fpga_fifo_exist_1(i8* %14)
  br i1 %15, label %16, label %17

; <label>:16:                                     ; preds = %dst.addr5.010.exit
  switch i64 %for.loop.idx74, label %dst.addr5.118.default [
    i64 0, label %dst.addr5.118.case.0
    i64 1, label %dst.addr5.118.case.1
    i64 2, label %dst.addr5.118.case.2
    i64 3, label %dst.addr5.118.case.3
    i64 4, label %dst.addr5.118.case.4
    i64 5, label %dst.addr5.118.case.5
    i64 6, label %dst.addr5.118.case.6
    i64 7, label %dst.addr5.118.case.7
  ]

dst.addr5.118.default:                            ; preds = %16
  unreachable

dst.addr5.118.case.0:                             ; preds = %16
  call void @streamcpy_hls.p0struct.ap_uint.4.5(%struct.ap_uint* %dst.addr5.118_0, %struct.ap_uint* %src.addr6.117)
  br label %dst.addr5.118.exit

dst.addr5.118.case.1:                             ; preds = %16
  call void @streamcpy_hls.p0struct.ap_uint.4.5(%struct.ap_uint* %dst.addr5.118_1, %struct.ap_uint* %src.addr6.117)
  br label %dst.addr5.118.exit

dst.addr5.118.case.2:                             ; preds = %16
  call void @streamcpy_hls.p0struct.ap_uint.4.5(%struct.ap_uint* %dst.addr5.118_2, %struct.ap_uint* %src.addr6.117)
  br label %dst.addr5.118.exit

dst.addr5.118.case.3:                             ; preds = %16
  call void @streamcpy_hls.p0struct.ap_uint.4.5(%struct.ap_uint* %dst.addr5.118_3, %struct.ap_uint* %src.addr6.117)
  br label %dst.addr5.118.exit

dst.addr5.118.case.4:                             ; preds = %16
  call void @streamcpy_hls.p0struct.ap_uint.4.5(%struct.ap_uint* %dst.addr5.118_4, %struct.ap_uint* %src.addr6.117)
  br label %dst.addr5.118.exit

dst.addr5.118.case.5:                             ; preds = %16
  call void @streamcpy_hls.p0struct.ap_uint.4.5(%struct.ap_uint* %dst.addr5.118_5, %struct.ap_uint* %src.addr6.117)
  br label %dst.addr5.118.exit

dst.addr5.118.case.6:                             ; preds = %16
  call void @streamcpy_hls.p0struct.ap_uint.4.5(%struct.ap_uint* %dst.addr5.118_6, %struct.ap_uint* %src.addr6.117)
  br label %dst.addr5.118.exit

dst.addr5.118.case.7:                             ; preds = %16
  call void @streamcpy_hls.p0struct.ap_uint.4.5(%struct.ap_uint* %dst.addr5.118_7, %struct.ap_uint* %src.addr6.117)
  br label %dst.addr5.118.exit

; <label>:17:                                     ; preds = %dst.addr5.010.exit
  %src.addr6.1.019 = getelementptr [8 x [4096 x %struct.dpkt_t]], [8 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 %for.loop.idx74, i64 %for.loop.idx373, i32 1, i32 0
  %dst.addr5.1.020_0 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_0, i64 0, i64 %for.loop.idx373, i32 1, i32 0
  %dst.addr5.1.020_1 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_1, i64 0, i64 %for.loop.idx373, i32 1, i32 0
  %dst.addr5.1.020_2 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_2, i64 0, i64 %for.loop.idx373, i32 1, i32 0
  %dst.addr5.1.020_3 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_3, i64 0, i64 %for.loop.idx373, i32 1, i32 0
  %dst.addr5.1.020_4 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_4, i64 0, i64 %for.loop.idx373, i32 1, i32 0
  %dst.addr5.1.020_5 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_5, i64 0, i64 %for.loop.idx373, i32 1, i32 0
  %dst.addr5.1.020_6 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_6, i64 0, i64 %for.loop.idx373, i32 1, i32 0
  %dst.addr5.1.020_7 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_7, i64 0, i64 %for.loop.idx373, i32 1, i32 0
  %18 = call i1 @fpga_fifo_exist_1(i8* %14)
  br i1 %18, label %19, label %20

; <label>:19:                                     ; preds = %17
  switch i64 %for.loop.idx74, label %dst.addr5.1.020.default [
    i64 0, label %dst.addr5.1.020.case.0
    i64 1, label %dst.addr5.1.020.case.1
    i64 2, label %dst.addr5.1.020.case.2
    i64 3, label %dst.addr5.1.020.case.3
    i64 4, label %dst.addr5.1.020.case.4
    i64 5, label %dst.addr5.1.020.case.5
    i64 6, label %dst.addr5.1.020.case.6
    i64 7, label %dst.addr5.1.020.case.7
  ]

dst.addr5.1.020.default:                          ; preds = %19
  unreachable

dst.addr5.1.020.case.0:                           ; preds = %19
  call void @streamcpy_hls.p0struct.ap_int_base.6.7(%struct.ap_int_base* %dst.addr5.1.020_0, %struct.ap_int_base* %src.addr6.1.019)
  br label %dst.addr5.118.exit

dst.addr5.1.020.case.1:                           ; preds = %19
  call void @streamcpy_hls.p0struct.ap_int_base.6.7(%struct.ap_int_base* %dst.addr5.1.020_1, %struct.ap_int_base* %src.addr6.1.019)
  br label %dst.addr5.118.exit

dst.addr5.1.020.case.2:                           ; preds = %19
  call void @streamcpy_hls.p0struct.ap_int_base.6.7(%struct.ap_int_base* %dst.addr5.1.020_2, %struct.ap_int_base* %src.addr6.1.019)
  br label %dst.addr5.118.exit

dst.addr5.1.020.case.3:                           ; preds = %19
  call void @streamcpy_hls.p0struct.ap_int_base.6.7(%struct.ap_int_base* %dst.addr5.1.020_3, %struct.ap_int_base* %src.addr6.1.019)
  br label %dst.addr5.118.exit

dst.addr5.1.020.case.4:                           ; preds = %19
  call void @streamcpy_hls.p0struct.ap_int_base.6.7(%struct.ap_int_base* %dst.addr5.1.020_4, %struct.ap_int_base* %src.addr6.1.019)
  br label %dst.addr5.118.exit

dst.addr5.1.020.case.5:                           ; preds = %19
  call void @streamcpy_hls.p0struct.ap_int_base.6.7(%struct.ap_int_base* %dst.addr5.1.020_5, %struct.ap_int_base* %src.addr6.1.019)
  br label %dst.addr5.118.exit

dst.addr5.1.020.case.6:                           ; preds = %19
  call void @streamcpy_hls.p0struct.ap_int_base.6.7(%struct.ap_int_base* %dst.addr5.1.020_6, %struct.ap_int_base* %src.addr6.1.019)
  br label %dst.addr5.118.exit

dst.addr5.1.020.case.7:                           ; preds = %19
  call void @streamcpy_hls.p0struct.ap_int_base.6.7(%struct.ap_int_base* %dst.addr5.1.020_7, %struct.ap_int_base* %src.addr6.1.019)
  br label %dst.addr5.118.exit

; <label>:20:                                     ; preds = %17
  %src.addr6.1.0.021 = getelementptr [8 x [4096 x %struct.dpkt_t]], [8 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 %for.loop.idx74, i64 %for.loop.idx373, i32 1, i32 0, i32 0
  %dst.addr5.1.0.022_0 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_0, i64 0, i64 %for.loop.idx373, i32 1, i32 0, i32 0
  %dst.addr5.1.0.022_1 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_1, i64 0, i64 %for.loop.idx373, i32 1, i32 0, i32 0
  %dst.addr5.1.0.022_2 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_2, i64 0, i64 %for.loop.idx373, i32 1, i32 0, i32 0
  %dst.addr5.1.0.022_3 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_3, i64 0, i64 %for.loop.idx373, i32 1, i32 0, i32 0
  %dst.addr5.1.0.022_4 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_4, i64 0, i64 %for.loop.idx373, i32 1, i32 0, i32 0
  %dst.addr5.1.0.022_5 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_5, i64 0, i64 %for.loop.idx373, i32 1, i32 0, i32 0
  %dst.addr5.1.0.022_6 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_6, i64 0, i64 %for.loop.idx373, i32 1, i32 0, i32 0
  %dst.addr5.1.0.022_7 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_7, i64 0, i64 %for.loop.idx373, i32 1, i32 0, i32 0
  %21 = call i1 @fpga_fifo_exist_1(i8* %14)
  br i1 %21, label %22, label %23

; <label>:22:                                     ; preds = %20
  switch i64 %for.loop.idx74, label %dst.addr5.1.0.022.default [
    i64 0, label %dst.addr5.1.0.022.case.0
    i64 1, label %dst.addr5.1.0.022.case.1
    i64 2, label %dst.addr5.1.0.022.case.2
    i64 3, label %dst.addr5.1.0.022.case.3
    i64 4, label %dst.addr5.1.0.022.case.4
    i64 5, label %dst.addr5.1.0.022.case.5
    i64 6, label %dst.addr5.1.0.022.case.6
    i64 7, label %dst.addr5.1.0.022.case.7
  ]

dst.addr5.1.0.022.default:                        ; preds = %22
  unreachable

dst.addr5.1.0.022.case.0:                         ; preds = %22
  call void @streamcpy_hls.p0struct.ssdm_int.8.9(%struct.ssdm_int* %dst.addr5.1.0.022_0, %struct.ssdm_int* %src.addr6.1.0.021)
  br label %dst.addr5.118.exit

dst.addr5.1.0.022.case.1:                         ; preds = %22
  call void @streamcpy_hls.p0struct.ssdm_int.8.9(%struct.ssdm_int* %dst.addr5.1.0.022_1, %struct.ssdm_int* %src.addr6.1.0.021)
  br label %dst.addr5.118.exit

dst.addr5.1.0.022.case.2:                         ; preds = %22
  call void @streamcpy_hls.p0struct.ssdm_int.8.9(%struct.ssdm_int* %dst.addr5.1.0.022_2, %struct.ssdm_int* %src.addr6.1.0.021)
  br label %dst.addr5.118.exit

dst.addr5.1.0.022.case.3:                         ; preds = %22
  call void @streamcpy_hls.p0struct.ssdm_int.8.9(%struct.ssdm_int* %dst.addr5.1.0.022_3, %struct.ssdm_int* %src.addr6.1.0.021)
  br label %dst.addr5.118.exit

dst.addr5.1.0.022.case.4:                         ; preds = %22
  call void @streamcpy_hls.p0struct.ssdm_int.8.9(%struct.ssdm_int* %dst.addr5.1.0.022_4, %struct.ssdm_int* %src.addr6.1.0.021)
  br label %dst.addr5.118.exit

dst.addr5.1.0.022.case.5:                         ; preds = %22
  call void @streamcpy_hls.p0struct.ssdm_int.8.9(%struct.ssdm_int* %dst.addr5.1.0.022_5, %struct.ssdm_int* %src.addr6.1.0.021)
  br label %dst.addr5.118.exit

dst.addr5.1.0.022.case.6:                         ; preds = %22
  call void @streamcpy_hls.p0struct.ssdm_int.8.9(%struct.ssdm_int* %dst.addr5.1.0.022_6, %struct.ssdm_int* %src.addr6.1.0.021)
  br label %dst.addr5.118.exit

dst.addr5.1.0.022.case.7:                         ; preds = %22
  call void @streamcpy_hls.p0struct.ssdm_int.8.9(%struct.ssdm_int* %dst.addr5.1.0.022_7, %struct.ssdm_int* %src.addr6.1.0.021)
  br label %dst.addr5.118.exit

; <label>:23:                                     ; preds = %20
  %dst.addr5.1.0.0.024_0 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_0, i64 0, i64 %for.loop.idx373, i32 1, i32 0, i32 0, i32 0
  %dst.addr5.1.0.0.024_1 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_1, i64 0, i64 %for.loop.idx373, i32 1, i32 0, i32 0, i32 0
  %dst.addr5.1.0.0.024_2 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_2, i64 0, i64 %for.loop.idx373, i32 1, i32 0, i32 0, i32 0
  %dst.addr5.1.0.0.024_3 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_3, i64 0, i64 %for.loop.idx373, i32 1, i32 0, i32 0, i32 0
  %dst.addr5.1.0.0.024_4 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_4, i64 0, i64 %for.loop.idx373, i32 1, i32 0, i32 0, i32 0
  %dst.addr5.1.0.0.024_5 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_5, i64 0, i64 %for.loop.idx373, i32 1, i32 0, i32 0, i32 0
  %dst.addr5.1.0.0.024_6 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_6, i64 0, i64 %for.loop.idx373, i32 1, i32 0, i32 0, i32 0
  %dst.addr5.1.0.0.024_7 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_7, i64 0, i64 %for.loop.idx373, i32 1, i32 0, i32 0, i32 0
  switch i64 %for.loop.idx74, label %dst.addr5.1.0.0.024.default [
    i64 0, label %dst.addr5.1.0.0.024.case.0
    i64 1, label %dst.addr5.1.0.0.024.case.1
    i64 2, label %dst.addr5.1.0.0.024.case.2
    i64 3, label %dst.addr5.1.0.0.024.case.3
    i64 4, label %dst.addr5.1.0.0.024.case.4
    i64 5, label %dst.addr5.1.0.0.024.case.5
    i64 6, label %dst.addr5.1.0.0.024.case.6
    i64 7, label %dst.addr5.1.0.0.024.case.7
  ]

dst.addr5.1.0.0.024.default:                      ; preds = %23
  unreachable

dst.addr5.1.0.0.024.case.0:                       ; preds = %23
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr5.1.0.0.024_0, i8* align 1 %14, i64 1, i1 false)
  br label %dst.addr5.118.exit

dst.addr5.1.0.0.024.case.1:                       ; preds = %23
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr5.1.0.0.024_1, i8* align 1 %14, i64 1, i1 false)
  br label %dst.addr5.118.exit

dst.addr5.1.0.0.024.case.2:                       ; preds = %23
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr5.1.0.0.024_2, i8* align 1 %14, i64 1, i1 false)
  br label %dst.addr5.118.exit

dst.addr5.1.0.0.024.case.3:                       ; preds = %23
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr5.1.0.0.024_3, i8* align 1 %14, i64 1, i1 false)
  br label %dst.addr5.118.exit

dst.addr5.1.0.0.024.case.4:                       ; preds = %23
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr5.1.0.0.024_4, i8* align 1 %14, i64 1, i1 false)
  br label %dst.addr5.118.exit

dst.addr5.1.0.0.024.case.5:                       ; preds = %23
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr5.1.0.0.024_5, i8* align 1 %14, i64 1, i1 false)
  br label %dst.addr5.118.exit

dst.addr5.1.0.0.024.case.6:                       ; preds = %23
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr5.1.0.0.024_6, i8* align 1 %14, i64 1, i1 false)
  br label %dst.addr5.118.exit

dst.addr5.1.0.0.024.case.7:                       ; preds = %23
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr5.1.0.0.024_7, i8* align 1 %14, i64 1, i1 false)
  br label %dst.addr5.118.exit

dst.addr5.118.exit:                               ; preds = %dst.addr5.1.0.0.024.case.7, %dst.addr5.1.0.0.024.case.6, %dst.addr5.1.0.0.024.case.5, %dst.addr5.1.0.0.024.case.4, %dst.addr5.1.0.0.024.case.3, %dst.addr5.1.0.0.024.case.2, %dst.addr5.1.0.0.024.case.1, %dst.addr5.1.0.0.024.case.0, %dst.addr5.1.0.022.case.7, %dst.addr5.1.0.022.case.6, %dst.addr5.1.0.022.case.5, %dst.addr5.1.0.022.case.4, %dst.addr5.1.0.022.case.3, %dst.addr5.1.0.022.case.2, %dst.addr5.1.0.022.case.1, %dst.addr5.1.0.022.case.0, %dst.addr5.1.020.case.7, %dst.addr5.1.020.case.6, %dst.addr5.1.020.case.5, %dst.addr5.1.020.case.4, %dst.addr5.1.020.case.3, %dst.addr5.1.020.case.2, %dst.addr5.1.020.case.1, %dst.addr5.1.020.case.0, %dst.addr5.118.case.7, %dst.addr5.118.case.6, %dst.addr5.118.case.5, %dst.addr5.118.case.4, %dst.addr5.118.case.3, %dst.addr5.118.case.2, %dst.addr5.118.case.1, %dst.addr5.118.case.0
  %src.addr6.225 = getelementptr [8 x [4096 x %struct.dpkt_t]], [8 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 %for.loop.idx74, i64 %for.loop.idx373, i32 2
  %dst.addr5.226_0 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_0, i64 0, i64 %for.loop.idx373, i32 2
  %dst.addr5.226_1 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_1, i64 0, i64 %for.loop.idx373, i32 2
  %dst.addr5.226_2 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_2, i64 0, i64 %for.loop.idx373, i32 2
  %dst.addr5.226_3 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_3, i64 0, i64 %for.loop.idx373, i32 2
  %dst.addr5.226_4 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_4, i64 0, i64 %for.loop.idx373, i32 2
  %dst.addr5.226_5 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_5, i64 0, i64 %for.loop.idx373, i32 2
  %dst.addr5.226_6 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_6, i64 0, i64 %for.loop.idx373, i32 2
  %dst.addr5.226_7 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_7, i64 0, i64 %for.loop.idx373, i32 2
  %24 = getelementptr [8 x [4096 x %struct.dpkt_t]], [8 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 %for.loop.idx74, i64 %for.loop.idx373, i32 2, i32 0, i32 0, i32 0
  %25 = call i1 @fpga_fifo_exist_1(i8* %24)
  br i1 %25, label %26, label %27

; <label>:26:                                     ; preds = %dst.addr5.118.exit
  switch i64 %for.loop.idx74, label %dst.addr5.226.default [
    i64 0, label %dst.addr5.226.case.0
    i64 1, label %dst.addr5.226.case.1
    i64 2, label %dst.addr5.226.case.2
    i64 3, label %dst.addr5.226.case.3
    i64 4, label %dst.addr5.226.case.4
    i64 5, label %dst.addr5.226.case.5
    i64 6, label %dst.addr5.226.case.6
    i64 7, label %dst.addr5.226.case.7
  ]

dst.addr5.226.default:                            ; preds = %26
  unreachable

dst.addr5.226.case.0:                             ; preds = %26
  call void @streamcpy_hls.p0struct.ap_uint.4.5(%struct.ap_uint* %dst.addr5.226_0, %struct.ap_uint* %src.addr6.225)
  br label %dst.addr5.226.exit

dst.addr5.226.case.1:                             ; preds = %26
  call void @streamcpy_hls.p0struct.ap_uint.4.5(%struct.ap_uint* %dst.addr5.226_1, %struct.ap_uint* %src.addr6.225)
  br label %dst.addr5.226.exit

dst.addr5.226.case.2:                             ; preds = %26
  call void @streamcpy_hls.p0struct.ap_uint.4.5(%struct.ap_uint* %dst.addr5.226_2, %struct.ap_uint* %src.addr6.225)
  br label %dst.addr5.226.exit

dst.addr5.226.case.3:                             ; preds = %26
  call void @streamcpy_hls.p0struct.ap_uint.4.5(%struct.ap_uint* %dst.addr5.226_3, %struct.ap_uint* %src.addr6.225)
  br label %dst.addr5.226.exit

dst.addr5.226.case.4:                             ; preds = %26
  call void @streamcpy_hls.p0struct.ap_uint.4.5(%struct.ap_uint* %dst.addr5.226_4, %struct.ap_uint* %src.addr6.225)
  br label %dst.addr5.226.exit

dst.addr5.226.case.5:                             ; preds = %26
  call void @streamcpy_hls.p0struct.ap_uint.4.5(%struct.ap_uint* %dst.addr5.226_5, %struct.ap_uint* %src.addr6.225)
  br label %dst.addr5.226.exit

dst.addr5.226.case.6:                             ; preds = %26
  call void @streamcpy_hls.p0struct.ap_uint.4.5(%struct.ap_uint* %dst.addr5.226_6, %struct.ap_uint* %src.addr6.225)
  br label %dst.addr5.226.exit

dst.addr5.226.case.7:                             ; preds = %26
  call void @streamcpy_hls.p0struct.ap_uint.4.5(%struct.ap_uint* %dst.addr5.226_7, %struct.ap_uint* %src.addr6.225)
  br label %dst.addr5.226.exit

; <label>:27:                                     ; preds = %dst.addr5.118.exit
  %src.addr6.2.027 = getelementptr [8 x [4096 x %struct.dpkt_t]], [8 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 %for.loop.idx74, i64 %for.loop.idx373, i32 2, i32 0
  %dst.addr5.2.028_0 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_0, i64 0, i64 %for.loop.idx373, i32 2, i32 0
  %dst.addr5.2.028_1 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_1, i64 0, i64 %for.loop.idx373, i32 2, i32 0
  %dst.addr5.2.028_2 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_2, i64 0, i64 %for.loop.idx373, i32 2, i32 0
  %dst.addr5.2.028_3 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_3, i64 0, i64 %for.loop.idx373, i32 2, i32 0
  %dst.addr5.2.028_4 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_4, i64 0, i64 %for.loop.idx373, i32 2, i32 0
  %dst.addr5.2.028_5 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_5, i64 0, i64 %for.loop.idx373, i32 2, i32 0
  %dst.addr5.2.028_6 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_6, i64 0, i64 %for.loop.idx373, i32 2, i32 0
  %dst.addr5.2.028_7 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_7, i64 0, i64 %for.loop.idx373, i32 2, i32 0
  %28 = call i1 @fpga_fifo_exist_1(i8* %24)
  br i1 %28, label %29, label %30

; <label>:29:                                     ; preds = %27
  switch i64 %for.loop.idx74, label %dst.addr5.2.028.default [
    i64 0, label %dst.addr5.2.028.case.0
    i64 1, label %dst.addr5.2.028.case.1
    i64 2, label %dst.addr5.2.028.case.2
    i64 3, label %dst.addr5.2.028.case.3
    i64 4, label %dst.addr5.2.028.case.4
    i64 5, label %dst.addr5.2.028.case.5
    i64 6, label %dst.addr5.2.028.case.6
    i64 7, label %dst.addr5.2.028.case.7
  ]

dst.addr5.2.028.default:                          ; preds = %29
  unreachable

dst.addr5.2.028.case.0:                           ; preds = %29
  call void @streamcpy_hls.p0struct.ap_int_base.6.7(%struct.ap_int_base* %dst.addr5.2.028_0, %struct.ap_int_base* %src.addr6.2.027)
  br label %dst.addr5.226.exit

dst.addr5.2.028.case.1:                           ; preds = %29
  call void @streamcpy_hls.p0struct.ap_int_base.6.7(%struct.ap_int_base* %dst.addr5.2.028_1, %struct.ap_int_base* %src.addr6.2.027)
  br label %dst.addr5.226.exit

dst.addr5.2.028.case.2:                           ; preds = %29
  call void @streamcpy_hls.p0struct.ap_int_base.6.7(%struct.ap_int_base* %dst.addr5.2.028_2, %struct.ap_int_base* %src.addr6.2.027)
  br label %dst.addr5.226.exit

dst.addr5.2.028.case.3:                           ; preds = %29
  call void @streamcpy_hls.p0struct.ap_int_base.6.7(%struct.ap_int_base* %dst.addr5.2.028_3, %struct.ap_int_base* %src.addr6.2.027)
  br label %dst.addr5.226.exit

dst.addr5.2.028.case.4:                           ; preds = %29
  call void @streamcpy_hls.p0struct.ap_int_base.6.7(%struct.ap_int_base* %dst.addr5.2.028_4, %struct.ap_int_base* %src.addr6.2.027)
  br label %dst.addr5.226.exit

dst.addr5.2.028.case.5:                           ; preds = %29
  call void @streamcpy_hls.p0struct.ap_int_base.6.7(%struct.ap_int_base* %dst.addr5.2.028_5, %struct.ap_int_base* %src.addr6.2.027)
  br label %dst.addr5.226.exit

dst.addr5.2.028.case.6:                           ; preds = %29
  call void @streamcpy_hls.p0struct.ap_int_base.6.7(%struct.ap_int_base* %dst.addr5.2.028_6, %struct.ap_int_base* %src.addr6.2.027)
  br label %dst.addr5.226.exit

dst.addr5.2.028.case.7:                           ; preds = %29
  call void @streamcpy_hls.p0struct.ap_int_base.6.7(%struct.ap_int_base* %dst.addr5.2.028_7, %struct.ap_int_base* %src.addr6.2.027)
  br label %dst.addr5.226.exit

; <label>:30:                                     ; preds = %27
  %src.addr6.2.0.029 = getelementptr [8 x [4096 x %struct.dpkt_t]], [8 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 %for.loop.idx74, i64 %for.loop.idx373, i32 2, i32 0, i32 0
  %dst.addr5.2.0.030_0 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_0, i64 0, i64 %for.loop.idx373, i32 2, i32 0, i32 0
  %dst.addr5.2.0.030_1 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_1, i64 0, i64 %for.loop.idx373, i32 2, i32 0, i32 0
  %dst.addr5.2.0.030_2 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_2, i64 0, i64 %for.loop.idx373, i32 2, i32 0, i32 0
  %dst.addr5.2.0.030_3 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_3, i64 0, i64 %for.loop.idx373, i32 2, i32 0, i32 0
  %dst.addr5.2.0.030_4 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_4, i64 0, i64 %for.loop.idx373, i32 2, i32 0, i32 0
  %dst.addr5.2.0.030_5 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_5, i64 0, i64 %for.loop.idx373, i32 2, i32 0, i32 0
  %dst.addr5.2.0.030_6 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_6, i64 0, i64 %for.loop.idx373, i32 2, i32 0, i32 0
  %dst.addr5.2.0.030_7 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_7, i64 0, i64 %for.loop.idx373, i32 2, i32 0, i32 0
  %31 = call i1 @fpga_fifo_exist_1(i8* %24)
  br i1 %31, label %32, label %33

; <label>:32:                                     ; preds = %30
  switch i64 %for.loop.idx74, label %dst.addr5.2.0.030.default [
    i64 0, label %dst.addr5.2.0.030.case.0
    i64 1, label %dst.addr5.2.0.030.case.1
    i64 2, label %dst.addr5.2.0.030.case.2
    i64 3, label %dst.addr5.2.0.030.case.3
    i64 4, label %dst.addr5.2.0.030.case.4
    i64 5, label %dst.addr5.2.0.030.case.5
    i64 6, label %dst.addr5.2.0.030.case.6
    i64 7, label %dst.addr5.2.0.030.case.7
  ]

dst.addr5.2.0.030.default:                        ; preds = %32
  unreachable

dst.addr5.2.0.030.case.0:                         ; preds = %32
  call void @streamcpy_hls.p0struct.ssdm_int.8.9(%struct.ssdm_int* %dst.addr5.2.0.030_0, %struct.ssdm_int* %src.addr6.2.0.029)
  br label %dst.addr5.226.exit

dst.addr5.2.0.030.case.1:                         ; preds = %32
  call void @streamcpy_hls.p0struct.ssdm_int.8.9(%struct.ssdm_int* %dst.addr5.2.0.030_1, %struct.ssdm_int* %src.addr6.2.0.029)
  br label %dst.addr5.226.exit

dst.addr5.2.0.030.case.2:                         ; preds = %32
  call void @streamcpy_hls.p0struct.ssdm_int.8.9(%struct.ssdm_int* %dst.addr5.2.0.030_2, %struct.ssdm_int* %src.addr6.2.0.029)
  br label %dst.addr5.226.exit

dst.addr5.2.0.030.case.3:                         ; preds = %32
  call void @streamcpy_hls.p0struct.ssdm_int.8.9(%struct.ssdm_int* %dst.addr5.2.0.030_3, %struct.ssdm_int* %src.addr6.2.0.029)
  br label %dst.addr5.226.exit

dst.addr5.2.0.030.case.4:                         ; preds = %32
  call void @streamcpy_hls.p0struct.ssdm_int.8.9(%struct.ssdm_int* %dst.addr5.2.0.030_4, %struct.ssdm_int* %src.addr6.2.0.029)
  br label %dst.addr5.226.exit

dst.addr5.2.0.030.case.5:                         ; preds = %32
  call void @streamcpy_hls.p0struct.ssdm_int.8.9(%struct.ssdm_int* %dst.addr5.2.0.030_5, %struct.ssdm_int* %src.addr6.2.0.029)
  br label %dst.addr5.226.exit

dst.addr5.2.0.030.case.6:                         ; preds = %32
  call void @streamcpy_hls.p0struct.ssdm_int.8.9(%struct.ssdm_int* %dst.addr5.2.0.030_6, %struct.ssdm_int* %src.addr6.2.0.029)
  br label %dst.addr5.226.exit

dst.addr5.2.0.030.case.7:                         ; preds = %32
  call void @streamcpy_hls.p0struct.ssdm_int.8.9(%struct.ssdm_int* %dst.addr5.2.0.030_7, %struct.ssdm_int* %src.addr6.2.0.029)
  br label %dst.addr5.226.exit

; <label>:33:                                     ; preds = %30
  %dst.addr5.2.0.0.032_0 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_0, i64 0, i64 %for.loop.idx373, i32 2, i32 0, i32 0, i32 0
  %dst.addr5.2.0.0.032_1 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_1, i64 0, i64 %for.loop.idx373, i32 2, i32 0, i32 0, i32 0
  %dst.addr5.2.0.0.032_2 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_2, i64 0, i64 %for.loop.idx373, i32 2, i32 0, i32 0, i32 0
  %dst.addr5.2.0.0.032_3 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_3, i64 0, i64 %for.loop.idx373, i32 2, i32 0, i32 0, i32 0
  %dst.addr5.2.0.0.032_4 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_4, i64 0, i64 %for.loop.idx373, i32 2, i32 0, i32 0, i32 0
  %dst.addr5.2.0.0.032_5 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_5, i64 0, i64 %for.loop.idx373, i32 2, i32 0, i32 0, i32 0
  %dst.addr5.2.0.0.032_6 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_6, i64 0, i64 %for.loop.idx373, i32 2, i32 0, i32 0, i32 0
  %dst.addr5.2.0.0.032_7 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_7, i64 0, i64 %for.loop.idx373, i32 2, i32 0, i32 0, i32 0
  switch i64 %for.loop.idx74, label %dst.addr5.2.0.0.032.default [
    i64 0, label %dst.addr5.2.0.0.032.case.0
    i64 1, label %dst.addr5.2.0.0.032.case.1
    i64 2, label %dst.addr5.2.0.0.032.case.2
    i64 3, label %dst.addr5.2.0.0.032.case.3
    i64 4, label %dst.addr5.2.0.0.032.case.4
    i64 5, label %dst.addr5.2.0.0.032.case.5
    i64 6, label %dst.addr5.2.0.0.032.case.6
    i64 7, label %dst.addr5.2.0.0.032.case.7
  ]

dst.addr5.2.0.0.032.default:                      ; preds = %33
  unreachable

dst.addr5.2.0.0.032.case.0:                       ; preds = %33
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr5.2.0.0.032_0, i8* align 1 %24, i64 1, i1 false)
  br label %dst.addr5.226.exit

dst.addr5.2.0.0.032.case.1:                       ; preds = %33
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr5.2.0.0.032_1, i8* align 1 %24, i64 1, i1 false)
  br label %dst.addr5.226.exit

dst.addr5.2.0.0.032.case.2:                       ; preds = %33
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr5.2.0.0.032_2, i8* align 1 %24, i64 1, i1 false)
  br label %dst.addr5.226.exit

dst.addr5.2.0.0.032.case.3:                       ; preds = %33
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr5.2.0.0.032_3, i8* align 1 %24, i64 1, i1 false)
  br label %dst.addr5.226.exit

dst.addr5.2.0.0.032.case.4:                       ; preds = %33
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr5.2.0.0.032_4, i8* align 1 %24, i64 1, i1 false)
  br label %dst.addr5.226.exit

dst.addr5.2.0.0.032.case.5:                       ; preds = %33
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr5.2.0.0.032_5, i8* align 1 %24, i64 1, i1 false)
  br label %dst.addr5.226.exit

dst.addr5.2.0.0.032.case.6:                       ; preds = %33
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr5.2.0.0.032_6, i8* align 1 %24, i64 1, i1 false)
  br label %dst.addr5.226.exit

dst.addr5.2.0.0.032.case.7:                       ; preds = %33
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr5.2.0.0.032_7, i8* align 1 %24, i64 1, i1 false)
  br label %dst.addr5.226.exit

dst.addr5.226.exit:                               ; preds = %dst.addr5.2.0.0.032.case.7, %dst.addr5.2.0.0.032.case.6, %dst.addr5.2.0.0.032.case.5, %dst.addr5.2.0.0.032.case.4, %dst.addr5.2.0.0.032.case.3, %dst.addr5.2.0.0.032.case.2, %dst.addr5.2.0.0.032.case.1, %dst.addr5.2.0.0.032.case.0, %dst.addr5.2.0.030.case.7, %dst.addr5.2.0.030.case.6, %dst.addr5.2.0.030.case.5, %dst.addr5.2.0.030.case.4, %dst.addr5.2.0.030.case.3, %dst.addr5.2.0.030.case.2, %dst.addr5.2.0.030.case.1, %dst.addr5.2.0.030.case.0, %dst.addr5.2.028.case.7, %dst.addr5.2.028.case.6, %dst.addr5.2.028.case.5, %dst.addr5.2.028.case.4, %dst.addr5.2.028.case.3, %dst.addr5.2.028.case.2, %dst.addr5.2.028.case.1, %dst.addr5.2.028.case.0, %dst.addr5.226.case.7, %dst.addr5.226.case.6, %dst.addr5.226.case.5, %dst.addr5.226.case.4, %dst.addr5.226.case.3, %dst.addr5.226.case.2, %dst.addr5.226.case.1, %dst.addr5.226.case.0
  %src.addr6.333 = getelementptr [8 x [4096 x %struct.dpkt_t]], [8 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 %for.loop.idx74, i64 %for.loop.idx373, i32 3
  %dst.addr5.334_0 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_0, i64 0, i64 %for.loop.idx373, i32 3
  %dst.addr5.334_1 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_1, i64 0, i64 %for.loop.idx373, i32 3
  %dst.addr5.334_2 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_2, i64 0, i64 %for.loop.idx373, i32 3
  %dst.addr5.334_3 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_3, i64 0, i64 %for.loop.idx373, i32 3
  %dst.addr5.334_4 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_4, i64 0, i64 %for.loop.idx373, i32 3
  %dst.addr5.334_5 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_5, i64 0, i64 %for.loop.idx373, i32 3
  %dst.addr5.334_6 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_6, i64 0, i64 %for.loop.idx373, i32 3
  %dst.addr5.334_7 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_7, i64 0, i64 %for.loop.idx373, i32 3
  %34 = getelementptr [8 x [4096 x %struct.dpkt_t]], [8 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 %for.loop.idx74, i64 %for.loop.idx373, i32 3, i32 0, i32 0, i32 0
  %35 = call i1 @fpga_fifo_exist_1(i8* %34)
  br i1 %35, label %36, label %37

; <label>:36:                                     ; preds = %dst.addr5.226.exit
  switch i64 %for.loop.idx74, label %dst.addr5.334.default [
    i64 0, label %dst.addr5.334.case.0
    i64 1, label %dst.addr5.334.case.1
    i64 2, label %dst.addr5.334.case.2
    i64 3, label %dst.addr5.334.case.3
    i64 4, label %dst.addr5.334.case.4
    i64 5, label %dst.addr5.334.case.5
    i64 6, label %dst.addr5.334.case.6
    i64 7, label %dst.addr5.334.case.7
  ]

dst.addr5.334.default:                            ; preds = %36
  unreachable

dst.addr5.334.case.0:                             ; preds = %36
  call void @streamcpy_hls.p0struct.ap_uint.4.5(%struct.ap_uint* %dst.addr5.334_0, %struct.ap_uint* %src.addr6.333)
  br label %dst.addr5.334.exit

dst.addr5.334.case.1:                             ; preds = %36
  call void @streamcpy_hls.p0struct.ap_uint.4.5(%struct.ap_uint* %dst.addr5.334_1, %struct.ap_uint* %src.addr6.333)
  br label %dst.addr5.334.exit

dst.addr5.334.case.2:                             ; preds = %36
  call void @streamcpy_hls.p0struct.ap_uint.4.5(%struct.ap_uint* %dst.addr5.334_2, %struct.ap_uint* %src.addr6.333)
  br label %dst.addr5.334.exit

dst.addr5.334.case.3:                             ; preds = %36
  call void @streamcpy_hls.p0struct.ap_uint.4.5(%struct.ap_uint* %dst.addr5.334_3, %struct.ap_uint* %src.addr6.333)
  br label %dst.addr5.334.exit

dst.addr5.334.case.4:                             ; preds = %36
  call void @streamcpy_hls.p0struct.ap_uint.4.5(%struct.ap_uint* %dst.addr5.334_4, %struct.ap_uint* %src.addr6.333)
  br label %dst.addr5.334.exit

dst.addr5.334.case.5:                             ; preds = %36
  call void @streamcpy_hls.p0struct.ap_uint.4.5(%struct.ap_uint* %dst.addr5.334_5, %struct.ap_uint* %src.addr6.333)
  br label %dst.addr5.334.exit

dst.addr5.334.case.6:                             ; preds = %36
  call void @streamcpy_hls.p0struct.ap_uint.4.5(%struct.ap_uint* %dst.addr5.334_6, %struct.ap_uint* %src.addr6.333)
  br label %dst.addr5.334.exit

dst.addr5.334.case.7:                             ; preds = %36
  call void @streamcpy_hls.p0struct.ap_uint.4.5(%struct.ap_uint* %dst.addr5.334_7, %struct.ap_uint* %src.addr6.333)
  br label %dst.addr5.334.exit

; <label>:37:                                     ; preds = %dst.addr5.226.exit
  %src.addr6.3.035 = getelementptr [8 x [4096 x %struct.dpkt_t]], [8 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 %for.loop.idx74, i64 %for.loop.idx373, i32 3, i32 0
  %dst.addr5.3.036_0 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_0, i64 0, i64 %for.loop.idx373, i32 3, i32 0
  %dst.addr5.3.036_1 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_1, i64 0, i64 %for.loop.idx373, i32 3, i32 0
  %dst.addr5.3.036_2 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_2, i64 0, i64 %for.loop.idx373, i32 3, i32 0
  %dst.addr5.3.036_3 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_3, i64 0, i64 %for.loop.idx373, i32 3, i32 0
  %dst.addr5.3.036_4 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_4, i64 0, i64 %for.loop.idx373, i32 3, i32 0
  %dst.addr5.3.036_5 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_5, i64 0, i64 %for.loop.idx373, i32 3, i32 0
  %dst.addr5.3.036_6 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_6, i64 0, i64 %for.loop.idx373, i32 3, i32 0
  %dst.addr5.3.036_7 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_7, i64 0, i64 %for.loop.idx373, i32 3, i32 0
  %38 = call i1 @fpga_fifo_exist_1(i8* %34)
  br i1 %38, label %39, label %40

; <label>:39:                                     ; preds = %37
  switch i64 %for.loop.idx74, label %dst.addr5.3.036.default [
    i64 0, label %dst.addr5.3.036.case.0
    i64 1, label %dst.addr5.3.036.case.1
    i64 2, label %dst.addr5.3.036.case.2
    i64 3, label %dst.addr5.3.036.case.3
    i64 4, label %dst.addr5.3.036.case.4
    i64 5, label %dst.addr5.3.036.case.5
    i64 6, label %dst.addr5.3.036.case.6
    i64 7, label %dst.addr5.3.036.case.7
  ]

dst.addr5.3.036.default:                          ; preds = %39
  unreachable

dst.addr5.3.036.case.0:                           ; preds = %39
  call void @streamcpy_hls.p0struct.ap_int_base.6.7(%struct.ap_int_base* %dst.addr5.3.036_0, %struct.ap_int_base* %src.addr6.3.035)
  br label %dst.addr5.334.exit

dst.addr5.3.036.case.1:                           ; preds = %39
  call void @streamcpy_hls.p0struct.ap_int_base.6.7(%struct.ap_int_base* %dst.addr5.3.036_1, %struct.ap_int_base* %src.addr6.3.035)
  br label %dst.addr5.334.exit

dst.addr5.3.036.case.2:                           ; preds = %39
  call void @streamcpy_hls.p0struct.ap_int_base.6.7(%struct.ap_int_base* %dst.addr5.3.036_2, %struct.ap_int_base* %src.addr6.3.035)
  br label %dst.addr5.334.exit

dst.addr5.3.036.case.3:                           ; preds = %39
  call void @streamcpy_hls.p0struct.ap_int_base.6.7(%struct.ap_int_base* %dst.addr5.3.036_3, %struct.ap_int_base* %src.addr6.3.035)
  br label %dst.addr5.334.exit

dst.addr5.3.036.case.4:                           ; preds = %39
  call void @streamcpy_hls.p0struct.ap_int_base.6.7(%struct.ap_int_base* %dst.addr5.3.036_4, %struct.ap_int_base* %src.addr6.3.035)
  br label %dst.addr5.334.exit

dst.addr5.3.036.case.5:                           ; preds = %39
  call void @streamcpy_hls.p0struct.ap_int_base.6.7(%struct.ap_int_base* %dst.addr5.3.036_5, %struct.ap_int_base* %src.addr6.3.035)
  br label %dst.addr5.334.exit

dst.addr5.3.036.case.6:                           ; preds = %39
  call void @streamcpy_hls.p0struct.ap_int_base.6.7(%struct.ap_int_base* %dst.addr5.3.036_6, %struct.ap_int_base* %src.addr6.3.035)
  br label %dst.addr5.334.exit

dst.addr5.3.036.case.7:                           ; preds = %39
  call void @streamcpy_hls.p0struct.ap_int_base.6.7(%struct.ap_int_base* %dst.addr5.3.036_7, %struct.ap_int_base* %src.addr6.3.035)
  br label %dst.addr5.334.exit

; <label>:40:                                     ; preds = %37
  %src.addr6.3.0.037 = getelementptr [8 x [4096 x %struct.dpkt_t]], [8 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 %for.loop.idx74, i64 %for.loop.idx373, i32 3, i32 0, i32 0
  %dst.addr5.3.0.038_0 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_0, i64 0, i64 %for.loop.idx373, i32 3, i32 0, i32 0
  %dst.addr5.3.0.038_1 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_1, i64 0, i64 %for.loop.idx373, i32 3, i32 0, i32 0
  %dst.addr5.3.0.038_2 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_2, i64 0, i64 %for.loop.idx373, i32 3, i32 0, i32 0
  %dst.addr5.3.0.038_3 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_3, i64 0, i64 %for.loop.idx373, i32 3, i32 0, i32 0
  %dst.addr5.3.0.038_4 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_4, i64 0, i64 %for.loop.idx373, i32 3, i32 0, i32 0
  %dst.addr5.3.0.038_5 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_5, i64 0, i64 %for.loop.idx373, i32 3, i32 0, i32 0
  %dst.addr5.3.0.038_6 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_6, i64 0, i64 %for.loop.idx373, i32 3, i32 0, i32 0
  %dst.addr5.3.0.038_7 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_7, i64 0, i64 %for.loop.idx373, i32 3, i32 0, i32 0
  %41 = call i1 @fpga_fifo_exist_1(i8* %34)
  br i1 %41, label %42, label %43

; <label>:42:                                     ; preds = %40
  switch i64 %for.loop.idx74, label %dst.addr5.3.0.038.default [
    i64 0, label %dst.addr5.3.0.038.case.0
    i64 1, label %dst.addr5.3.0.038.case.1
    i64 2, label %dst.addr5.3.0.038.case.2
    i64 3, label %dst.addr5.3.0.038.case.3
    i64 4, label %dst.addr5.3.0.038.case.4
    i64 5, label %dst.addr5.3.0.038.case.5
    i64 6, label %dst.addr5.3.0.038.case.6
    i64 7, label %dst.addr5.3.0.038.case.7
  ]

dst.addr5.3.0.038.default:                        ; preds = %42
  unreachable

dst.addr5.3.0.038.case.0:                         ; preds = %42
  call void @streamcpy_hls.p0struct.ssdm_int.8.9(%struct.ssdm_int* %dst.addr5.3.0.038_0, %struct.ssdm_int* %src.addr6.3.0.037)
  br label %dst.addr5.334.exit

dst.addr5.3.0.038.case.1:                         ; preds = %42
  call void @streamcpy_hls.p0struct.ssdm_int.8.9(%struct.ssdm_int* %dst.addr5.3.0.038_1, %struct.ssdm_int* %src.addr6.3.0.037)
  br label %dst.addr5.334.exit

dst.addr5.3.0.038.case.2:                         ; preds = %42
  call void @streamcpy_hls.p0struct.ssdm_int.8.9(%struct.ssdm_int* %dst.addr5.3.0.038_2, %struct.ssdm_int* %src.addr6.3.0.037)
  br label %dst.addr5.334.exit

dst.addr5.3.0.038.case.3:                         ; preds = %42
  call void @streamcpy_hls.p0struct.ssdm_int.8.9(%struct.ssdm_int* %dst.addr5.3.0.038_3, %struct.ssdm_int* %src.addr6.3.0.037)
  br label %dst.addr5.334.exit

dst.addr5.3.0.038.case.4:                         ; preds = %42
  call void @streamcpy_hls.p0struct.ssdm_int.8.9(%struct.ssdm_int* %dst.addr5.3.0.038_4, %struct.ssdm_int* %src.addr6.3.0.037)
  br label %dst.addr5.334.exit

dst.addr5.3.0.038.case.5:                         ; preds = %42
  call void @streamcpy_hls.p0struct.ssdm_int.8.9(%struct.ssdm_int* %dst.addr5.3.0.038_5, %struct.ssdm_int* %src.addr6.3.0.037)
  br label %dst.addr5.334.exit

dst.addr5.3.0.038.case.6:                         ; preds = %42
  call void @streamcpy_hls.p0struct.ssdm_int.8.9(%struct.ssdm_int* %dst.addr5.3.0.038_6, %struct.ssdm_int* %src.addr6.3.0.037)
  br label %dst.addr5.334.exit

dst.addr5.3.0.038.case.7:                         ; preds = %42
  call void @streamcpy_hls.p0struct.ssdm_int.8.9(%struct.ssdm_int* %dst.addr5.3.0.038_7, %struct.ssdm_int* %src.addr6.3.0.037)
  br label %dst.addr5.334.exit

; <label>:43:                                     ; preds = %40
  %dst.addr5.3.0.0.040_0 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_0, i64 0, i64 %for.loop.idx373, i32 3, i32 0, i32 0, i32 0
  %dst.addr5.3.0.0.040_1 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_1, i64 0, i64 %for.loop.idx373, i32 3, i32 0, i32 0, i32 0
  %dst.addr5.3.0.0.040_2 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_2, i64 0, i64 %for.loop.idx373, i32 3, i32 0, i32 0, i32 0
  %dst.addr5.3.0.0.040_3 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_3, i64 0, i64 %for.loop.idx373, i32 3, i32 0, i32 0, i32 0
  %dst.addr5.3.0.0.040_4 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_4, i64 0, i64 %for.loop.idx373, i32 3, i32 0, i32 0, i32 0
  %dst.addr5.3.0.0.040_5 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_5, i64 0, i64 %for.loop.idx373, i32 3, i32 0, i32 0, i32 0
  %dst.addr5.3.0.0.040_6 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_6, i64 0, i64 %for.loop.idx373, i32 3, i32 0, i32 0, i32 0
  %dst.addr5.3.0.0.040_7 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_7, i64 0, i64 %for.loop.idx373, i32 3, i32 0, i32 0, i32 0
  switch i64 %for.loop.idx74, label %dst.addr5.3.0.0.040.default [
    i64 0, label %dst.addr5.3.0.0.040.case.0
    i64 1, label %dst.addr5.3.0.0.040.case.1
    i64 2, label %dst.addr5.3.0.0.040.case.2
    i64 3, label %dst.addr5.3.0.0.040.case.3
    i64 4, label %dst.addr5.3.0.0.040.case.4
    i64 5, label %dst.addr5.3.0.0.040.case.5
    i64 6, label %dst.addr5.3.0.0.040.case.6
    i64 7, label %dst.addr5.3.0.0.040.case.7
  ]

dst.addr5.3.0.0.040.default:                      ; preds = %43
  unreachable

dst.addr5.3.0.0.040.case.0:                       ; preds = %43
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr5.3.0.0.040_0, i8* align 1 %34, i64 1, i1 false)
  br label %dst.addr5.334.exit

dst.addr5.3.0.0.040.case.1:                       ; preds = %43
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr5.3.0.0.040_1, i8* align 1 %34, i64 1, i1 false)
  br label %dst.addr5.334.exit

dst.addr5.3.0.0.040.case.2:                       ; preds = %43
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr5.3.0.0.040_2, i8* align 1 %34, i64 1, i1 false)
  br label %dst.addr5.334.exit

dst.addr5.3.0.0.040.case.3:                       ; preds = %43
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr5.3.0.0.040_3, i8* align 1 %34, i64 1, i1 false)
  br label %dst.addr5.334.exit

dst.addr5.3.0.0.040.case.4:                       ; preds = %43
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr5.3.0.0.040_4, i8* align 1 %34, i64 1, i1 false)
  br label %dst.addr5.334.exit

dst.addr5.3.0.0.040.case.5:                       ; preds = %43
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr5.3.0.0.040_5, i8* align 1 %34, i64 1, i1 false)
  br label %dst.addr5.334.exit

dst.addr5.3.0.0.040.case.6:                       ; preds = %43
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr5.3.0.0.040_6, i8* align 1 %34, i64 1, i1 false)
  br label %dst.addr5.334.exit

dst.addr5.3.0.0.040.case.7:                       ; preds = %43
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr5.3.0.0.040_7, i8* align 1 %34, i64 1, i1 false)
  br label %dst.addr5.334.exit

dst.addr5.334.exit:                               ; preds = %dst.addr5.3.0.0.040.case.7, %dst.addr5.3.0.0.040.case.6, %dst.addr5.3.0.0.040.case.5, %dst.addr5.3.0.0.040.case.4, %dst.addr5.3.0.0.040.case.3, %dst.addr5.3.0.0.040.case.2, %dst.addr5.3.0.0.040.case.1, %dst.addr5.3.0.0.040.case.0, %dst.addr5.3.0.038.case.7, %dst.addr5.3.0.038.case.6, %dst.addr5.3.0.038.case.5, %dst.addr5.3.0.038.case.4, %dst.addr5.3.0.038.case.3, %dst.addr5.3.0.038.case.2, %dst.addr5.3.0.038.case.1, %dst.addr5.3.0.038.case.0, %dst.addr5.3.036.case.7, %dst.addr5.3.036.case.6, %dst.addr5.3.036.case.5, %dst.addr5.3.036.case.4, %dst.addr5.3.036.case.3, %dst.addr5.3.036.case.2, %dst.addr5.3.036.case.1, %dst.addr5.3.036.case.0, %dst.addr5.334.case.7, %dst.addr5.334.case.6, %dst.addr5.334.case.5, %dst.addr5.334.case.4, %dst.addr5.334.case.3, %dst.addr5.334.case.2, %dst.addr5.334.case.1, %dst.addr5.334.case.0
  %src.addr6.441 = getelementptr [8 x [4096 x %struct.dpkt_t]], [8 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 %for.loop.idx74, i64 %for.loop.idx373, i32 4
  %dst.addr5.442_0 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_0, i64 0, i64 %for.loop.idx373, i32 4
  %dst.addr5.442_1 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_1, i64 0, i64 %for.loop.idx373, i32 4
  %dst.addr5.442_2 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_2, i64 0, i64 %for.loop.idx373, i32 4
  %dst.addr5.442_3 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_3, i64 0, i64 %for.loop.idx373, i32 4
  %dst.addr5.442_4 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_4, i64 0, i64 %for.loop.idx373, i32 4
  %dst.addr5.442_5 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_5, i64 0, i64 %for.loop.idx373, i32 4
  %dst.addr5.442_6 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_6, i64 0, i64 %for.loop.idx373, i32 4
  %dst.addr5.442_7 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_7, i64 0, i64 %for.loop.idx373, i32 4
  %44 = getelementptr [8 x [4096 x %struct.dpkt_t]], [8 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 %for.loop.idx74, i64 %for.loop.idx373, i32 4, i32 0, i32 0, i32 0
  %45 = call i1 @fpga_fifo_exist_1(i8* %44)
  br i1 %45, label %46, label %47

; <label>:46:                                     ; preds = %dst.addr5.334.exit
  switch i64 %for.loop.idx74, label %dst.addr5.442.default [
    i64 0, label %dst.addr5.442.case.0
    i64 1, label %dst.addr5.442.case.1
    i64 2, label %dst.addr5.442.case.2
    i64 3, label %dst.addr5.442.case.3
    i64 4, label %dst.addr5.442.case.4
    i64 5, label %dst.addr5.442.case.5
    i64 6, label %dst.addr5.442.case.6
    i64 7, label %dst.addr5.442.case.7
  ]

dst.addr5.442.default:                            ; preds = %46
  unreachable

dst.addr5.442.case.0:                             ; preds = %46
  call void @streamcpy_hls.p0struct.ap_uint.4.5(%struct.ap_uint* %dst.addr5.442_0, %struct.ap_uint* %src.addr6.441)
  br label %dst.addr5.442.exit

dst.addr5.442.case.1:                             ; preds = %46
  call void @streamcpy_hls.p0struct.ap_uint.4.5(%struct.ap_uint* %dst.addr5.442_1, %struct.ap_uint* %src.addr6.441)
  br label %dst.addr5.442.exit

dst.addr5.442.case.2:                             ; preds = %46
  call void @streamcpy_hls.p0struct.ap_uint.4.5(%struct.ap_uint* %dst.addr5.442_2, %struct.ap_uint* %src.addr6.441)
  br label %dst.addr5.442.exit

dst.addr5.442.case.3:                             ; preds = %46
  call void @streamcpy_hls.p0struct.ap_uint.4.5(%struct.ap_uint* %dst.addr5.442_3, %struct.ap_uint* %src.addr6.441)
  br label %dst.addr5.442.exit

dst.addr5.442.case.4:                             ; preds = %46
  call void @streamcpy_hls.p0struct.ap_uint.4.5(%struct.ap_uint* %dst.addr5.442_4, %struct.ap_uint* %src.addr6.441)
  br label %dst.addr5.442.exit

dst.addr5.442.case.5:                             ; preds = %46
  call void @streamcpy_hls.p0struct.ap_uint.4.5(%struct.ap_uint* %dst.addr5.442_5, %struct.ap_uint* %src.addr6.441)
  br label %dst.addr5.442.exit

dst.addr5.442.case.6:                             ; preds = %46
  call void @streamcpy_hls.p0struct.ap_uint.4.5(%struct.ap_uint* %dst.addr5.442_6, %struct.ap_uint* %src.addr6.441)
  br label %dst.addr5.442.exit

dst.addr5.442.case.7:                             ; preds = %46
  call void @streamcpy_hls.p0struct.ap_uint.4.5(%struct.ap_uint* %dst.addr5.442_7, %struct.ap_uint* %src.addr6.441)
  br label %dst.addr5.442.exit

; <label>:47:                                     ; preds = %dst.addr5.334.exit
  %src.addr6.4.043 = getelementptr [8 x [4096 x %struct.dpkt_t]], [8 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 %for.loop.idx74, i64 %for.loop.idx373, i32 4, i32 0
  %dst.addr5.4.044_0 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_0, i64 0, i64 %for.loop.idx373, i32 4, i32 0
  %dst.addr5.4.044_1 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_1, i64 0, i64 %for.loop.idx373, i32 4, i32 0
  %dst.addr5.4.044_2 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_2, i64 0, i64 %for.loop.idx373, i32 4, i32 0
  %dst.addr5.4.044_3 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_3, i64 0, i64 %for.loop.idx373, i32 4, i32 0
  %dst.addr5.4.044_4 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_4, i64 0, i64 %for.loop.idx373, i32 4, i32 0
  %dst.addr5.4.044_5 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_5, i64 0, i64 %for.loop.idx373, i32 4, i32 0
  %dst.addr5.4.044_6 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_6, i64 0, i64 %for.loop.idx373, i32 4, i32 0
  %dst.addr5.4.044_7 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_7, i64 0, i64 %for.loop.idx373, i32 4, i32 0
  %48 = call i1 @fpga_fifo_exist_1(i8* %44)
  br i1 %48, label %49, label %50

; <label>:49:                                     ; preds = %47
  switch i64 %for.loop.idx74, label %dst.addr5.4.044.default [
    i64 0, label %dst.addr5.4.044.case.0
    i64 1, label %dst.addr5.4.044.case.1
    i64 2, label %dst.addr5.4.044.case.2
    i64 3, label %dst.addr5.4.044.case.3
    i64 4, label %dst.addr5.4.044.case.4
    i64 5, label %dst.addr5.4.044.case.5
    i64 6, label %dst.addr5.4.044.case.6
    i64 7, label %dst.addr5.4.044.case.7
  ]

dst.addr5.4.044.default:                          ; preds = %49
  unreachable

dst.addr5.4.044.case.0:                           ; preds = %49
  call void @streamcpy_hls.p0struct.ap_int_base.6.7(%struct.ap_int_base* %dst.addr5.4.044_0, %struct.ap_int_base* %src.addr6.4.043)
  br label %dst.addr5.442.exit

dst.addr5.4.044.case.1:                           ; preds = %49
  call void @streamcpy_hls.p0struct.ap_int_base.6.7(%struct.ap_int_base* %dst.addr5.4.044_1, %struct.ap_int_base* %src.addr6.4.043)
  br label %dst.addr5.442.exit

dst.addr5.4.044.case.2:                           ; preds = %49
  call void @streamcpy_hls.p0struct.ap_int_base.6.7(%struct.ap_int_base* %dst.addr5.4.044_2, %struct.ap_int_base* %src.addr6.4.043)
  br label %dst.addr5.442.exit

dst.addr5.4.044.case.3:                           ; preds = %49
  call void @streamcpy_hls.p0struct.ap_int_base.6.7(%struct.ap_int_base* %dst.addr5.4.044_3, %struct.ap_int_base* %src.addr6.4.043)
  br label %dst.addr5.442.exit

dst.addr5.4.044.case.4:                           ; preds = %49
  call void @streamcpy_hls.p0struct.ap_int_base.6.7(%struct.ap_int_base* %dst.addr5.4.044_4, %struct.ap_int_base* %src.addr6.4.043)
  br label %dst.addr5.442.exit

dst.addr5.4.044.case.5:                           ; preds = %49
  call void @streamcpy_hls.p0struct.ap_int_base.6.7(%struct.ap_int_base* %dst.addr5.4.044_5, %struct.ap_int_base* %src.addr6.4.043)
  br label %dst.addr5.442.exit

dst.addr5.4.044.case.6:                           ; preds = %49
  call void @streamcpy_hls.p0struct.ap_int_base.6.7(%struct.ap_int_base* %dst.addr5.4.044_6, %struct.ap_int_base* %src.addr6.4.043)
  br label %dst.addr5.442.exit

dst.addr5.4.044.case.7:                           ; preds = %49
  call void @streamcpy_hls.p0struct.ap_int_base.6.7(%struct.ap_int_base* %dst.addr5.4.044_7, %struct.ap_int_base* %src.addr6.4.043)
  br label %dst.addr5.442.exit

; <label>:50:                                     ; preds = %47
  %src.addr6.4.0.045 = getelementptr [8 x [4096 x %struct.dpkt_t]], [8 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 %for.loop.idx74, i64 %for.loop.idx373, i32 4, i32 0, i32 0
  %dst.addr5.4.0.046_0 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_0, i64 0, i64 %for.loop.idx373, i32 4, i32 0, i32 0
  %dst.addr5.4.0.046_1 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_1, i64 0, i64 %for.loop.idx373, i32 4, i32 0, i32 0
  %dst.addr5.4.0.046_2 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_2, i64 0, i64 %for.loop.idx373, i32 4, i32 0, i32 0
  %dst.addr5.4.0.046_3 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_3, i64 0, i64 %for.loop.idx373, i32 4, i32 0, i32 0
  %dst.addr5.4.0.046_4 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_4, i64 0, i64 %for.loop.idx373, i32 4, i32 0, i32 0
  %dst.addr5.4.0.046_5 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_5, i64 0, i64 %for.loop.idx373, i32 4, i32 0, i32 0
  %dst.addr5.4.0.046_6 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_6, i64 0, i64 %for.loop.idx373, i32 4, i32 0, i32 0
  %dst.addr5.4.0.046_7 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_7, i64 0, i64 %for.loop.idx373, i32 4, i32 0, i32 0
  %51 = call i1 @fpga_fifo_exist_1(i8* %44)
  br i1 %51, label %52, label %53

; <label>:52:                                     ; preds = %50
  switch i64 %for.loop.idx74, label %dst.addr5.4.0.046.default [
    i64 0, label %dst.addr5.4.0.046.case.0
    i64 1, label %dst.addr5.4.0.046.case.1
    i64 2, label %dst.addr5.4.0.046.case.2
    i64 3, label %dst.addr5.4.0.046.case.3
    i64 4, label %dst.addr5.4.0.046.case.4
    i64 5, label %dst.addr5.4.0.046.case.5
    i64 6, label %dst.addr5.4.0.046.case.6
    i64 7, label %dst.addr5.4.0.046.case.7
  ]

dst.addr5.4.0.046.default:                        ; preds = %52
  unreachable

dst.addr5.4.0.046.case.0:                         ; preds = %52
  call void @streamcpy_hls.p0struct.ssdm_int.8.9(%struct.ssdm_int* %dst.addr5.4.0.046_0, %struct.ssdm_int* %src.addr6.4.0.045)
  br label %dst.addr5.442.exit

dst.addr5.4.0.046.case.1:                         ; preds = %52
  call void @streamcpy_hls.p0struct.ssdm_int.8.9(%struct.ssdm_int* %dst.addr5.4.0.046_1, %struct.ssdm_int* %src.addr6.4.0.045)
  br label %dst.addr5.442.exit

dst.addr5.4.0.046.case.2:                         ; preds = %52
  call void @streamcpy_hls.p0struct.ssdm_int.8.9(%struct.ssdm_int* %dst.addr5.4.0.046_2, %struct.ssdm_int* %src.addr6.4.0.045)
  br label %dst.addr5.442.exit

dst.addr5.4.0.046.case.3:                         ; preds = %52
  call void @streamcpy_hls.p0struct.ssdm_int.8.9(%struct.ssdm_int* %dst.addr5.4.0.046_3, %struct.ssdm_int* %src.addr6.4.0.045)
  br label %dst.addr5.442.exit

dst.addr5.4.0.046.case.4:                         ; preds = %52
  call void @streamcpy_hls.p0struct.ssdm_int.8.9(%struct.ssdm_int* %dst.addr5.4.0.046_4, %struct.ssdm_int* %src.addr6.4.0.045)
  br label %dst.addr5.442.exit

dst.addr5.4.0.046.case.5:                         ; preds = %52
  call void @streamcpy_hls.p0struct.ssdm_int.8.9(%struct.ssdm_int* %dst.addr5.4.0.046_5, %struct.ssdm_int* %src.addr6.4.0.045)
  br label %dst.addr5.442.exit

dst.addr5.4.0.046.case.6:                         ; preds = %52
  call void @streamcpy_hls.p0struct.ssdm_int.8.9(%struct.ssdm_int* %dst.addr5.4.0.046_6, %struct.ssdm_int* %src.addr6.4.0.045)
  br label %dst.addr5.442.exit

dst.addr5.4.0.046.case.7:                         ; preds = %52
  call void @streamcpy_hls.p0struct.ssdm_int.8.9(%struct.ssdm_int* %dst.addr5.4.0.046_7, %struct.ssdm_int* %src.addr6.4.0.045)
  br label %dst.addr5.442.exit

; <label>:53:                                     ; preds = %50
  %dst.addr5.4.0.0.048_0 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_0, i64 0, i64 %for.loop.idx373, i32 4, i32 0, i32 0, i32 0
  %dst.addr5.4.0.0.048_1 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_1, i64 0, i64 %for.loop.idx373, i32 4, i32 0, i32 0, i32 0
  %dst.addr5.4.0.0.048_2 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_2, i64 0, i64 %for.loop.idx373, i32 4, i32 0, i32 0, i32 0
  %dst.addr5.4.0.0.048_3 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_3, i64 0, i64 %for.loop.idx373, i32 4, i32 0, i32 0, i32 0
  %dst.addr5.4.0.0.048_4 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_4, i64 0, i64 %for.loop.idx373, i32 4, i32 0, i32 0, i32 0
  %dst.addr5.4.0.0.048_5 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_5, i64 0, i64 %for.loop.idx373, i32 4, i32 0, i32 0, i32 0
  %dst.addr5.4.0.0.048_6 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_6, i64 0, i64 %for.loop.idx373, i32 4, i32 0, i32 0, i32 0
  %dst.addr5.4.0.0.048_7 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_7, i64 0, i64 %for.loop.idx373, i32 4, i32 0, i32 0, i32 0
  switch i64 %for.loop.idx74, label %dst.addr5.4.0.0.048.default [
    i64 0, label %dst.addr5.4.0.0.048.case.0
    i64 1, label %dst.addr5.4.0.0.048.case.1
    i64 2, label %dst.addr5.4.0.0.048.case.2
    i64 3, label %dst.addr5.4.0.0.048.case.3
    i64 4, label %dst.addr5.4.0.0.048.case.4
    i64 5, label %dst.addr5.4.0.0.048.case.5
    i64 6, label %dst.addr5.4.0.0.048.case.6
    i64 7, label %dst.addr5.4.0.0.048.case.7
  ]

dst.addr5.4.0.0.048.default:                      ; preds = %53
  unreachable

dst.addr5.4.0.0.048.case.0:                       ; preds = %53
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr5.4.0.0.048_0, i8* align 1 %44, i64 1, i1 false)
  br label %dst.addr5.442.exit

dst.addr5.4.0.0.048.case.1:                       ; preds = %53
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr5.4.0.0.048_1, i8* align 1 %44, i64 1, i1 false)
  br label %dst.addr5.442.exit

dst.addr5.4.0.0.048.case.2:                       ; preds = %53
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr5.4.0.0.048_2, i8* align 1 %44, i64 1, i1 false)
  br label %dst.addr5.442.exit

dst.addr5.4.0.0.048.case.3:                       ; preds = %53
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr5.4.0.0.048_3, i8* align 1 %44, i64 1, i1 false)
  br label %dst.addr5.442.exit

dst.addr5.4.0.0.048.case.4:                       ; preds = %53
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr5.4.0.0.048_4, i8* align 1 %44, i64 1, i1 false)
  br label %dst.addr5.442.exit

dst.addr5.4.0.0.048.case.5:                       ; preds = %53
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr5.4.0.0.048_5, i8* align 1 %44, i64 1, i1 false)
  br label %dst.addr5.442.exit

dst.addr5.4.0.0.048.case.6:                       ; preds = %53
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr5.4.0.0.048_6, i8* align 1 %44, i64 1, i1 false)
  br label %dst.addr5.442.exit

dst.addr5.4.0.0.048.case.7:                       ; preds = %53
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr5.4.0.0.048_7, i8* align 1 %44, i64 1, i1 false)
  br label %dst.addr5.442.exit

dst.addr5.442.exit:                               ; preds = %dst.addr5.4.0.0.048.case.7, %dst.addr5.4.0.0.048.case.6, %dst.addr5.4.0.0.048.case.5, %dst.addr5.4.0.0.048.case.4, %dst.addr5.4.0.0.048.case.3, %dst.addr5.4.0.0.048.case.2, %dst.addr5.4.0.0.048.case.1, %dst.addr5.4.0.0.048.case.0, %dst.addr5.4.0.046.case.7, %dst.addr5.4.0.046.case.6, %dst.addr5.4.0.046.case.5, %dst.addr5.4.0.046.case.4, %dst.addr5.4.0.046.case.3, %dst.addr5.4.0.046.case.2, %dst.addr5.4.0.046.case.1, %dst.addr5.4.0.046.case.0, %dst.addr5.4.044.case.7, %dst.addr5.4.044.case.6, %dst.addr5.4.044.case.5, %dst.addr5.4.044.case.4, %dst.addr5.4.044.case.3, %dst.addr5.4.044.case.2, %dst.addr5.4.044.case.1, %dst.addr5.4.044.case.0, %dst.addr5.442.case.7, %dst.addr5.442.case.6, %dst.addr5.442.case.5, %dst.addr5.442.case.4, %dst.addr5.442.case.3, %dst.addr5.442.case.2, %dst.addr5.442.case.1, %dst.addr5.442.case.0
  %src.addr6.549 = getelementptr [8 x [4096 x %struct.dpkt_t]], [8 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 %for.loop.idx74, i64 %for.loop.idx373, i32 5
  %dst.addr5.550_0 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_0, i64 0, i64 %for.loop.idx373, i32 5
  %dst.addr5.550_1 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_1, i64 0, i64 %for.loop.idx373, i32 5
  %dst.addr5.550_2 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_2, i64 0, i64 %for.loop.idx373, i32 5
  %dst.addr5.550_3 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_3, i64 0, i64 %for.loop.idx373, i32 5
  %dst.addr5.550_4 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_4, i64 0, i64 %for.loop.idx373, i32 5
  %dst.addr5.550_5 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_5, i64 0, i64 %for.loop.idx373, i32 5
  %dst.addr5.550_6 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_6, i64 0, i64 %for.loop.idx373, i32 5
  %dst.addr5.550_7 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_7, i64 0, i64 %for.loop.idx373, i32 5
  %54 = getelementptr [8 x [4096 x %struct.dpkt_t]], [8 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 %for.loop.idx74, i64 %for.loop.idx373, i32 5, i32 0, i32 0, i32 0
  %55 = call i1 @fpga_fifo_exist_1(i8* %54)
  br i1 %55, label %56, label %57

; <label>:56:                                     ; preds = %dst.addr5.442.exit
  switch i64 %for.loop.idx74, label %dst.addr5.550.default [
    i64 0, label %dst.addr5.550.case.0
    i64 1, label %dst.addr5.550.case.1
    i64 2, label %dst.addr5.550.case.2
    i64 3, label %dst.addr5.550.case.3
    i64 4, label %dst.addr5.550.case.4
    i64 5, label %dst.addr5.550.case.5
    i64 6, label %dst.addr5.550.case.6
    i64 7, label %dst.addr5.550.case.7
  ]

dst.addr5.550.default:                            ; preds = %56
  unreachable

dst.addr5.550.case.0:                             ; preds = %56
  call void @streamcpy_hls.p0struct.ap_uint.4.5(%struct.ap_uint* %dst.addr5.550_0, %struct.ap_uint* %src.addr6.549)
  br label %dst.addr5.550.exit

dst.addr5.550.case.1:                             ; preds = %56
  call void @streamcpy_hls.p0struct.ap_uint.4.5(%struct.ap_uint* %dst.addr5.550_1, %struct.ap_uint* %src.addr6.549)
  br label %dst.addr5.550.exit

dst.addr5.550.case.2:                             ; preds = %56
  call void @streamcpy_hls.p0struct.ap_uint.4.5(%struct.ap_uint* %dst.addr5.550_2, %struct.ap_uint* %src.addr6.549)
  br label %dst.addr5.550.exit

dst.addr5.550.case.3:                             ; preds = %56
  call void @streamcpy_hls.p0struct.ap_uint.4.5(%struct.ap_uint* %dst.addr5.550_3, %struct.ap_uint* %src.addr6.549)
  br label %dst.addr5.550.exit

dst.addr5.550.case.4:                             ; preds = %56
  call void @streamcpy_hls.p0struct.ap_uint.4.5(%struct.ap_uint* %dst.addr5.550_4, %struct.ap_uint* %src.addr6.549)
  br label %dst.addr5.550.exit

dst.addr5.550.case.5:                             ; preds = %56
  call void @streamcpy_hls.p0struct.ap_uint.4.5(%struct.ap_uint* %dst.addr5.550_5, %struct.ap_uint* %src.addr6.549)
  br label %dst.addr5.550.exit

dst.addr5.550.case.6:                             ; preds = %56
  call void @streamcpy_hls.p0struct.ap_uint.4.5(%struct.ap_uint* %dst.addr5.550_6, %struct.ap_uint* %src.addr6.549)
  br label %dst.addr5.550.exit

dst.addr5.550.case.7:                             ; preds = %56
  call void @streamcpy_hls.p0struct.ap_uint.4.5(%struct.ap_uint* %dst.addr5.550_7, %struct.ap_uint* %src.addr6.549)
  br label %dst.addr5.550.exit

; <label>:57:                                     ; preds = %dst.addr5.442.exit
  %src.addr6.5.051 = getelementptr [8 x [4096 x %struct.dpkt_t]], [8 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 %for.loop.idx74, i64 %for.loop.idx373, i32 5, i32 0
  %dst.addr5.5.052_0 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_0, i64 0, i64 %for.loop.idx373, i32 5, i32 0
  %dst.addr5.5.052_1 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_1, i64 0, i64 %for.loop.idx373, i32 5, i32 0
  %dst.addr5.5.052_2 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_2, i64 0, i64 %for.loop.idx373, i32 5, i32 0
  %dst.addr5.5.052_3 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_3, i64 0, i64 %for.loop.idx373, i32 5, i32 0
  %dst.addr5.5.052_4 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_4, i64 0, i64 %for.loop.idx373, i32 5, i32 0
  %dst.addr5.5.052_5 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_5, i64 0, i64 %for.loop.idx373, i32 5, i32 0
  %dst.addr5.5.052_6 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_6, i64 0, i64 %for.loop.idx373, i32 5, i32 0
  %dst.addr5.5.052_7 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_7, i64 0, i64 %for.loop.idx373, i32 5, i32 0
  %58 = call i1 @fpga_fifo_exist_1(i8* %54)
  br i1 %58, label %59, label %60

; <label>:59:                                     ; preds = %57
  switch i64 %for.loop.idx74, label %dst.addr5.5.052.default [
    i64 0, label %dst.addr5.5.052.case.0
    i64 1, label %dst.addr5.5.052.case.1
    i64 2, label %dst.addr5.5.052.case.2
    i64 3, label %dst.addr5.5.052.case.3
    i64 4, label %dst.addr5.5.052.case.4
    i64 5, label %dst.addr5.5.052.case.5
    i64 6, label %dst.addr5.5.052.case.6
    i64 7, label %dst.addr5.5.052.case.7
  ]

dst.addr5.5.052.default:                          ; preds = %59
  unreachable

dst.addr5.5.052.case.0:                           ; preds = %59
  call void @streamcpy_hls.p0struct.ap_int_base.6.7(%struct.ap_int_base* %dst.addr5.5.052_0, %struct.ap_int_base* %src.addr6.5.051)
  br label %dst.addr5.550.exit

dst.addr5.5.052.case.1:                           ; preds = %59
  call void @streamcpy_hls.p0struct.ap_int_base.6.7(%struct.ap_int_base* %dst.addr5.5.052_1, %struct.ap_int_base* %src.addr6.5.051)
  br label %dst.addr5.550.exit

dst.addr5.5.052.case.2:                           ; preds = %59
  call void @streamcpy_hls.p0struct.ap_int_base.6.7(%struct.ap_int_base* %dst.addr5.5.052_2, %struct.ap_int_base* %src.addr6.5.051)
  br label %dst.addr5.550.exit

dst.addr5.5.052.case.3:                           ; preds = %59
  call void @streamcpy_hls.p0struct.ap_int_base.6.7(%struct.ap_int_base* %dst.addr5.5.052_3, %struct.ap_int_base* %src.addr6.5.051)
  br label %dst.addr5.550.exit

dst.addr5.5.052.case.4:                           ; preds = %59
  call void @streamcpy_hls.p0struct.ap_int_base.6.7(%struct.ap_int_base* %dst.addr5.5.052_4, %struct.ap_int_base* %src.addr6.5.051)
  br label %dst.addr5.550.exit

dst.addr5.5.052.case.5:                           ; preds = %59
  call void @streamcpy_hls.p0struct.ap_int_base.6.7(%struct.ap_int_base* %dst.addr5.5.052_5, %struct.ap_int_base* %src.addr6.5.051)
  br label %dst.addr5.550.exit

dst.addr5.5.052.case.6:                           ; preds = %59
  call void @streamcpy_hls.p0struct.ap_int_base.6.7(%struct.ap_int_base* %dst.addr5.5.052_6, %struct.ap_int_base* %src.addr6.5.051)
  br label %dst.addr5.550.exit

dst.addr5.5.052.case.7:                           ; preds = %59
  call void @streamcpy_hls.p0struct.ap_int_base.6.7(%struct.ap_int_base* %dst.addr5.5.052_7, %struct.ap_int_base* %src.addr6.5.051)
  br label %dst.addr5.550.exit

; <label>:60:                                     ; preds = %57
  %src.addr6.5.0.053 = getelementptr [8 x [4096 x %struct.dpkt_t]], [8 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 %for.loop.idx74, i64 %for.loop.idx373, i32 5, i32 0, i32 0
  %dst.addr5.5.0.054_0 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_0, i64 0, i64 %for.loop.idx373, i32 5, i32 0, i32 0
  %dst.addr5.5.0.054_1 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_1, i64 0, i64 %for.loop.idx373, i32 5, i32 0, i32 0
  %dst.addr5.5.0.054_2 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_2, i64 0, i64 %for.loop.idx373, i32 5, i32 0, i32 0
  %dst.addr5.5.0.054_3 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_3, i64 0, i64 %for.loop.idx373, i32 5, i32 0, i32 0
  %dst.addr5.5.0.054_4 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_4, i64 0, i64 %for.loop.idx373, i32 5, i32 0, i32 0
  %dst.addr5.5.0.054_5 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_5, i64 0, i64 %for.loop.idx373, i32 5, i32 0, i32 0
  %dst.addr5.5.0.054_6 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_6, i64 0, i64 %for.loop.idx373, i32 5, i32 0, i32 0
  %dst.addr5.5.0.054_7 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_7, i64 0, i64 %for.loop.idx373, i32 5, i32 0, i32 0
  %61 = call i1 @fpga_fifo_exist_1(i8* %54)
  br i1 %61, label %62, label %63

; <label>:62:                                     ; preds = %60
  switch i64 %for.loop.idx74, label %dst.addr5.5.0.054.default [
    i64 0, label %dst.addr5.5.0.054.case.0
    i64 1, label %dst.addr5.5.0.054.case.1
    i64 2, label %dst.addr5.5.0.054.case.2
    i64 3, label %dst.addr5.5.0.054.case.3
    i64 4, label %dst.addr5.5.0.054.case.4
    i64 5, label %dst.addr5.5.0.054.case.5
    i64 6, label %dst.addr5.5.0.054.case.6
    i64 7, label %dst.addr5.5.0.054.case.7
  ]

dst.addr5.5.0.054.default:                        ; preds = %62
  unreachable

dst.addr5.5.0.054.case.0:                         ; preds = %62
  call void @streamcpy_hls.p0struct.ssdm_int.8.9(%struct.ssdm_int* %dst.addr5.5.0.054_0, %struct.ssdm_int* %src.addr6.5.0.053)
  br label %dst.addr5.550.exit

dst.addr5.5.0.054.case.1:                         ; preds = %62
  call void @streamcpy_hls.p0struct.ssdm_int.8.9(%struct.ssdm_int* %dst.addr5.5.0.054_1, %struct.ssdm_int* %src.addr6.5.0.053)
  br label %dst.addr5.550.exit

dst.addr5.5.0.054.case.2:                         ; preds = %62
  call void @streamcpy_hls.p0struct.ssdm_int.8.9(%struct.ssdm_int* %dst.addr5.5.0.054_2, %struct.ssdm_int* %src.addr6.5.0.053)
  br label %dst.addr5.550.exit

dst.addr5.5.0.054.case.3:                         ; preds = %62
  call void @streamcpy_hls.p0struct.ssdm_int.8.9(%struct.ssdm_int* %dst.addr5.5.0.054_3, %struct.ssdm_int* %src.addr6.5.0.053)
  br label %dst.addr5.550.exit

dst.addr5.5.0.054.case.4:                         ; preds = %62
  call void @streamcpy_hls.p0struct.ssdm_int.8.9(%struct.ssdm_int* %dst.addr5.5.0.054_4, %struct.ssdm_int* %src.addr6.5.0.053)
  br label %dst.addr5.550.exit

dst.addr5.5.0.054.case.5:                         ; preds = %62
  call void @streamcpy_hls.p0struct.ssdm_int.8.9(%struct.ssdm_int* %dst.addr5.5.0.054_5, %struct.ssdm_int* %src.addr6.5.0.053)
  br label %dst.addr5.550.exit

dst.addr5.5.0.054.case.6:                         ; preds = %62
  call void @streamcpy_hls.p0struct.ssdm_int.8.9(%struct.ssdm_int* %dst.addr5.5.0.054_6, %struct.ssdm_int* %src.addr6.5.0.053)
  br label %dst.addr5.550.exit

dst.addr5.5.0.054.case.7:                         ; preds = %62
  call void @streamcpy_hls.p0struct.ssdm_int.8.9(%struct.ssdm_int* %dst.addr5.5.0.054_7, %struct.ssdm_int* %src.addr6.5.0.053)
  br label %dst.addr5.550.exit

; <label>:63:                                     ; preds = %60
  %dst.addr5.5.0.0.056_0 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_0, i64 0, i64 %for.loop.idx373, i32 5, i32 0, i32 0, i32 0
  %dst.addr5.5.0.0.056_1 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_1, i64 0, i64 %for.loop.idx373, i32 5, i32 0, i32 0, i32 0
  %dst.addr5.5.0.0.056_2 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_2, i64 0, i64 %for.loop.idx373, i32 5, i32 0, i32 0, i32 0
  %dst.addr5.5.0.0.056_3 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_3, i64 0, i64 %for.loop.idx373, i32 5, i32 0, i32 0, i32 0
  %dst.addr5.5.0.0.056_4 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_4, i64 0, i64 %for.loop.idx373, i32 5, i32 0, i32 0, i32 0
  %dst.addr5.5.0.0.056_5 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_5, i64 0, i64 %for.loop.idx373, i32 5, i32 0, i32 0, i32 0
  %dst.addr5.5.0.0.056_6 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_6, i64 0, i64 %for.loop.idx373, i32 5, i32 0, i32 0, i32 0
  %dst.addr5.5.0.0.056_7 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_7, i64 0, i64 %for.loop.idx373, i32 5, i32 0, i32 0, i32 0
  switch i64 %for.loop.idx74, label %dst.addr5.5.0.0.056.default [
    i64 0, label %dst.addr5.5.0.0.056.case.0
    i64 1, label %dst.addr5.5.0.0.056.case.1
    i64 2, label %dst.addr5.5.0.0.056.case.2
    i64 3, label %dst.addr5.5.0.0.056.case.3
    i64 4, label %dst.addr5.5.0.0.056.case.4
    i64 5, label %dst.addr5.5.0.0.056.case.5
    i64 6, label %dst.addr5.5.0.0.056.case.6
    i64 7, label %dst.addr5.5.0.0.056.case.7
  ]

dst.addr5.5.0.0.056.default:                      ; preds = %63
  unreachable

dst.addr5.5.0.0.056.case.0:                       ; preds = %63
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr5.5.0.0.056_0, i8* align 1 %54, i64 1, i1 false)
  br label %dst.addr5.550.exit

dst.addr5.5.0.0.056.case.1:                       ; preds = %63
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr5.5.0.0.056_1, i8* align 1 %54, i64 1, i1 false)
  br label %dst.addr5.550.exit

dst.addr5.5.0.0.056.case.2:                       ; preds = %63
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr5.5.0.0.056_2, i8* align 1 %54, i64 1, i1 false)
  br label %dst.addr5.550.exit

dst.addr5.5.0.0.056.case.3:                       ; preds = %63
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr5.5.0.0.056_3, i8* align 1 %54, i64 1, i1 false)
  br label %dst.addr5.550.exit

dst.addr5.5.0.0.056.case.4:                       ; preds = %63
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr5.5.0.0.056_4, i8* align 1 %54, i64 1, i1 false)
  br label %dst.addr5.550.exit

dst.addr5.5.0.0.056.case.5:                       ; preds = %63
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr5.5.0.0.056_5, i8* align 1 %54, i64 1, i1 false)
  br label %dst.addr5.550.exit

dst.addr5.5.0.0.056.case.6:                       ; preds = %63
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr5.5.0.0.056_6, i8* align 1 %54, i64 1, i1 false)
  br label %dst.addr5.550.exit

dst.addr5.5.0.0.056.case.7:                       ; preds = %63
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr5.5.0.0.056_7, i8* align 1 %54, i64 1, i1 false)
  br label %dst.addr5.550.exit

dst.addr5.550.exit:                               ; preds = %dst.addr5.5.0.0.056.case.7, %dst.addr5.5.0.0.056.case.6, %dst.addr5.5.0.0.056.case.5, %dst.addr5.5.0.0.056.case.4, %dst.addr5.5.0.0.056.case.3, %dst.addr5.5.0.0.056.case.2, %dst.addr5.5.0.0.056.case.1, %dst.addr5.5.0.0.056.case.0, %dst.addr5.5.0.054.case.7, %dst.addr5.5.0.054.case.6, %dst.addr5.5.0.054.case.5, %dst.addr5.5.0.054.case.4, %dst.addr5.5.0.054.case.3, %dst.addr5.5.0.054.case.2, %dst.addr5.5.0.054.case.1, %dst.addr5.5.0.054.case.0, %dst.addr5.5.052.case.7, %dst.addr5.5.052.case.6, %dst.addr5.5.052.case.5, %dst.addr5.5.052.case.4, %dst.addr5.5.052.case.3, %dst.addr5.5.052.case.2, %dst.addr5.5.052.case.1, %dst.addr5.5.052.case.0, %dst.addr5.550.case.7, %dst.addr5.550.case.6, %dst.addr5.550.case.5, %dst.addr5.550.case.4, %dst.addr5.550.case.3, %dst.addr5.550.case.2, %dst.addr5.550.case.1, %dst.addr5.550.case.0
  %src.addr6.657 = getelementptr [8 x [4096 x %struct.dpkt_t]], [8 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 %for.loop.idx74, i64 %for.loop.idx373, i32 6
  %dst.addr5.658_0 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_0, i64 0, i64 %for.loop.idx373, i32 6
  %dst.addr5.658_1 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_1, i64 0, i64 %for.loop.idx373, i32 6
  %dst.addr5.658_2 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_2, i64 0, i64 %for.loop.idx373, i32 6
  %dst.addr5.658_3 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_3, i64 0, i64 %for.loop.idx373, i32 6
  %dst.addr5.658_4 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_4, i64 0, i64 %for.loop.idx373, i32 6
  %dst.addr5.658_5 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_5, i64 0, i64 %for.loop.idx373, i32 6
  %dst.addr5.658_6 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_6, i64 0, i64 %for.loop.idx373, i32 6
  %dst.addr5.658_7 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_7, i64 0, i64 %for.loop.idx373, i32 6
  %64 = getelementptr [8 x [4096 x %struct.dpkt_t]], [8 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 %for.loop.idx74, i64 %for.loop.idx373, i32 6, i32 0, i32 0, i32 0
  %65 = call i1 @fpga_fifo_exist_1(i8* %64)
  br i1 %65, label %66, label %67

; <label>:66:                                     ; preds = %dst.addr5.550.exit
  switch i64 %for.loop.idx74, label %dst.addr5.658.default [
    i64 0, label %dst.addr5.658.case.0
    i64 1, label %dst.addr5.658.case.1
    i64 2, label %dst.addr5.658.case.2
    i64 3, label %dst.addr5.658.case.3
    i64 4, label %dst.addr5.658.case.4
    i64 5, label %dst.addr5.658.case.5
    i64 6, label %dst.addr5.658.case.6
    i64 7, label %dst.addr5.658.case.7
  ]

dst.addr5.658.default:                            ; preds = %66
  unreachable

dst.addr5.658.case.0:                             ; preds = %66
  call void @streamcpy_hls.p0struct.ap_uint.4.5(%struct.ap_uint* %dst.addr5.658_0, %struct.ap_uint* %src.addr6.657)
  br label %dst.addr5.658.exit

dst.addr5.658.case.1:                             ; preds = %66
  call void @streamcpy_hls.p0struct.ap_uint.4.5(%struct.ap_uint* %dst.addr5.658_1, %struct.ap_uint* %src.addr6.657)
  br label %dst.addr5.658.exit

dst.addr5.658.case.2:                             ; preds = %66
  call void @streamcpy_hls.p0struct.ap_uint.4.5(%struct.ap_uint* %dst.addr5.658_2, %struct.ap_uint* %src.addr6.657)
  br label %dst.addr5.658.exit

dst.addr5.658.case.3:                             ; preds = %66
  call void @streamcpy_hls.p0struct.ap_uint.4.5(%struct.ap_uint* %dst.addr5.658_3, %struct.ap_uint* %src.addr6.657)
  br label %dst.addr5.658.exit

dst.addr5.658.case.4:                             ; preds = %66
  call void @streamcpy_hls.p0struct.ap_uint.4.5(%struct.ap_uint* %dst.addr5.658_4, %struct.ap_uint* %src.addr6.657)
  br label %dst.addr5.658.exit

dst.addr5.658.case.5:                             ; preds = %66
  call void @streamcpy_hls.p0struct.ap_uint.4.5(%struct.ap_uint* %dst.addr5.658_5, %struct.ap_uint* %src.addr6.657)
  br label %dst.addr5.658.exit

dst.addr5.658.case.6:                             ; preds = %66
  call void @streamcpy_hls.p0struct.ap_uint.4.5(%struct.ap_uint* %dst.addr5.658_6, %struct.ap_uint* %src.addr6.657)
  br label %dst.addr5.658.exit

dst.addr5.658.case.7:                             ; preds = %66
  call void @streamcpy_hls.p0struct.ap_uint.4.5(%struct.ap_uint* %dst.addr5.658_7, %struct.ap_uint* %src.addr6.657)
  br label %dst.addr5.658.exit

; <label>:67:                                     ; preds = %dst.addr5.550.exit
  %src.addr6.6.059 = getelementptr [8 x [4096 x %struct.dpkt_t]], [8 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 %for.loop.idx74, i64 %for.loop.idx373, i32 6, i32 0
  %dst.addr5.6.060_0 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_0, i64 0, i64 %for.loop.idx373, i32 6, i32 0
  %dst.addr5.6.060_1 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_1, i64 0, i64 %for.loop.idx373, i32 6, i32 0
  %dst.addr5.6.060_2 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_2, i64 0, i64 %for.loop.idx373, i32 6, i32 0
  %dst.addr5.6.060_3 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_3, i64 0, i64 %for.loop.idx373, i32 6, i32 0
  %dst.addr5.6.060_4 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_4, i64 0, i64 %for.loop.idx373, i32 6, i32 0
  %dst.addr5.6.060_5 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_5, i64 0, i64 %for.loop.idx373, i32 6, i32 0
  %dst.addr5.6.060_6 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_6, i64 0, i64 %for.loop.idx373, i32 6, i32 0
  %dst.addr5.6.060_7 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_7, i64 0, i64 %for.loop.idx373, i32 6, i32 0
  %68 = call i1 @fpga_fifo_exist_1(i8* %64)
  br i1 %68, label %69, label %70

; <label>:69:                                     ; preds = %67
  switch i64 %for.loop.idx74, label %dst.addr5.6.060.default [
    i64 0, label %dst.addr5.6.060.case.0
    i64 1, label %dst.addr5.6.060.case.1
    i64 2, label %dst.addr5.6.060.case.2
    i64 3, label %dst.addr5.6.060.case.3
    i64 4, label %dst.addr5.6.060.case.4
    i64 5, label %dst.addr5.6.060.case.5
    i64 6, label %dst.addr5.6.060.case.6
    i64 7, label %dst.addr5.6.060.case.7
  ]

dst.addr5.6.060.default:                          ; preds = %69
  unreachable

dst.addr5.6.060.case.0:                           ; preds = %69
  call void @streamcpy_hls.p0struct.ap_int_base.6.7(%struct.ap_int_base* %dst.addr5.6.060_0, %struct.ap_int_base* %src.addr6.6.059)
  br label %dst.addr5.658.exit

dst.addr5.6.060.case.1:                           ; preds = %69
  call void @streamcpy_hls.p0struct.ap_int_base.6.7(%struct.ap_int_base* %dst.addr5.6.060_1, %struct.ap_int_base* %src.addr6.6.059)
  br label %dst.addr5.658.exit

dst.addr5.6.060.case.2:                           ; preds = %69
  call void @streamcpy_hls.p0struct.ap_int_base.6.7(%struct.ap_int_base* %dst.addr5.6.060_2, %struct.ap_int_base* %src.addr6.6.059)
  br label %dst.addr5.658.exit

dst.addr5.6.060.case.3:                           ; preds = %69
  call void @streamcpy_hls.p0struct.ap_int_base.6.7(%struct.ap_int_base* %dst.addr5.6.060_3, %struct.ap_int_base* %src.addr6.6.059)
  br label %dst.addr5.658.exit

dst.addr5.6.060.case.4:                           ; preds = %69
  call void @streamcpy_hls.p0struct.ap_int_base.6.7(%struct.ap_int_base* %dst.addr5.6.060_4, %struct.ap_int_base* %src.addr6.6.059)
  br label %dst.addr5.658.exit

dst.addr5.6.060.case.5:                           ; preds = %69
  call void @streamcpy_hls.p0struct.ap_int_base.6.7(%struct.ap_int_base* %dst.addr5.6.060_5, %struct.ap_int_base* %src.addr6.6.059)
  br label %dst.addr5.658.exit

dst.addr5.6.060.case.6:                           ; preds = %69
  call void @streamcpy_hls.p0struct.ap_int_base.6.7(%struct.ap_int_base* %dst.addr5.6.060_6, %struct.ap_int_base* %src.addr6.6.059)
  br label %dst.addr5.658.exit

dst.addr5.6.060.case.7:                           ; preds = %69
  call void @streamcpy_hls.p0struct.ap_int_base.6.7(%struct.ap_int_base* %dst.addr5.6.060_7, %struct.ap_int_base* %src.addr6.6.059)
  br label %dst.addr5.658.exit

; <label>:70:                                     ; preds = %67
  %src.addr6.6.0.061 = getelementptr [8 x [4096 x %struct.dpkt_t]], [8 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 %for.loop.idx74, i64 %for.loop.idx373, i32 6, i32 0, i32 0
  %dst.addr5.6.0.062_0 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_0, i64 0, i64 %for.loop.idx373, i32 6, i32 0, i32 0
  %dst.addr5.6.0.062_1 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_1, i64 0, i64 %for.loop.idx373, i32 6, i32 0, i32 0
  %dst.addr5.6.0.062_2 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_2, i64 0, i64 %for.loop.idx373, i32 6, i32 0, i32 0
  %dst.addr5.6.0.062_3 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_3, i64 0, i64 %for.loop.idx373, i32 6, i32 0, i32 0
  %dst.addr5.6.0.062_4 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_4, i64 0, i64 %for.loop.idx373, i32 6, i32 0, i32 0
  %dst.addr5.6.0.062_5 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_5, i64 0, i64 %for.loop.idx373, i32 6, i32 0, i32 0
  %dst.addr5.6.0.062_6 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_6, i64 0, i64 %for.loop.idx373, i32 6, i32 0, i32 0
  %dst.addr5.6.0.062_7 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_7, i64 0, i64 %for.loop.idx373, i32 6, i32 0, i32 0
  %71 = call i1 @fpga_fifo_exist_1(i8* %64)
  br i1 %71, label %72, label %73

; <label>:72:                                     ; preds = %70
  switch i64 %for.loop.idx74, label %dst.addr5.6.0.062.default [
    i64 0, label %dst.addr5.6.0.062.case.0
    i64 1, label %dst.addr5.6.0.062.case.1
    i64 2, label %dst.addr5.6.0.062.case.2
    i64 3, label %dst.addr5.6.0.062.case.3
    i64 4, label %dst.addr5.6.0.062.case.4
    i64 5, label %dst.addr5.6.0.062.case.5
    i64 6, label %dst.addr5.6.0.062.case.6
    i64 7, label %dst.addr5.6.0.062.case.7
  ]

dst.addr5.6.0.062.default:                        ; preds = %72
  unreachable

dst.addr5.6.0.062.case.0:                         ; preds = %72
  call void @streamcpy_hls.p0struct.ssdm_int.8.9(%struct.ssdm_int* %dst.addr5.6.0.062_0, %struct.ssdm_int* %src.addr6.6.0.061)
  br label %dst.addr5.658.exit

dst.addr5.6.0.062.case.1:                         ; preds = %72
  call void @streamcpy_hls.p0struct.ssdm_int.8.9(%struct.ssdm_int* %dst.addr5.6.0.062_1, %struct.ssdm_int* %src.addr6.6.0.061)
  br label %dst.addr5.658.exit

dst.addr5.6.0.062.case.2:                         ; preds = %72
  call void @streamcpy_hls.p0struct.ssdm_int.8.9(%struct.ssdm_int* %dst.addr5.6.0.062_2, %struct.ssdm_int* %src.addr6.6.0.061)
  br label %dst.addr5.658.exit

dst.addr5.6.0.062.case.3:                         ; preds = %72
  call void @streamcpy_hls.p0struct.ssdm_int.8.9(%struct.ssdm_int* %dst.addr5.6.0.062_3, %struct.ssdm_int* %src.addr6.6.0.061)
  br label %dst.addr5.658.exit

dst.addr5.6.0.062.case.4:                         ; preds = %72
  call void @streamcpy_hls.p0struct.ssdm_int.8.9(%struct.ssdm_int* %dst.addr5.6.0.062_4, %struct.ssdm_int* %src.addr6.6.0.061)
  br label %dst.addr5.658.exit

dst.addr5.6.0.062.case.5:                         ; preds = %72
  call void @streamcpy_hls.p0struct.ssdm_int.8.9(%struct.ssdm_int* %dst.addr5.6.0.062_5, %struct.ssdm_int* %src.addr6.6.0.061)
  br label %dst.addr5.658.exit

dst.addr5.6.0.062.case.6:                         ; preds = %72
  call void @streamcpy_hls.p0struct.ssdm_int.8.9(%struct.ssdm_int* %dst.addr5.6.0.062_6, %struct.ssdm_int* %src.addr6.6.0.061)
  br label %dst.addr5.658.exit

dst.addr5.6.0.062.case.7:                         ; preds = %72
  call void @streamcpy_hls.p0struct.ssdm_int.8.9(%struct.ssdm_int* %dst.addr5.6.0.062_7, %struct.ssdm_int* %src.addr6.6.0.061)
  br label %dst.addr5.658.exit

; <label>:73:                                     ; preds = %70
  %dst.addr5.6.0.0.064_0 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_0, i64 0, i64 %for.loop.idx373, i32 6, i32 0, i32 0, i32 0
  %dst.addr5.6.0.0.064_1 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_1, i64 0, i64 %for.loop.idx373, i32 6, i32 0, i32 0, i32 0
  %dst.addr5.6.0.0.064_2 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_2, i64 0, i64 %for.loop.idx373, i32 6, i32 0, i32 0, i32 0
  %dst.addr5.6.0.0.064_3 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_3, i64 0, i64 %for.loop.idx373, i32 6, i32 0, i32 0, i32 0
  %dst.addr5.6.0.0.064_4 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_4, i64 0, i64 %for.loop.idx373, i32 6, i32 0, i32 0, i32 0
  %dst.addr5.6.0.0.064_5 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_5, i64 0, i64 %for.loop.idx373, i32 6, i32 0, i32 0, i32 0
  %dst.addr5.6.0.0.064_6 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_6, i64 0, i64 %for.loop.idx373, i32 6, i32 0, i32 0, i32 0
  %dst.addr5.6.0.0.064_7 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_7, i64 0, i64 %for.loop.idx373, i32 6, i32 0, i32 0, i32 0
  switch i64 %for.loop.idx74, label %dst.addr5.6.0.0.064.default [
    i64 0, label %dst.addr5.6.0.0.064.case.0
    i64 1, label %dst.addr5.6.0.0.064.case.1
    i64 2, label %dst.addr5.6.0.0.064.case.2
    i64 3, label %dst.addr5.6.0.0.064.case.3
    i64 4, label %dst.addr5.6.0.0.064.case.4
    i64 5, label %dst.addr5.6.0.0.064.case.5
    i64 6, label %dst.addr5.6.0.0.064.case.6
    i64 7, label %dst.addr5.6.0.0.064.case.7
  ]

dst.addr5.6.0.0.064.default:                      ; preds = %73
  unreachable

dst.addr5.6.0.0.064.case.0:                       ; preds = %73
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr5.6.0.0.064_0, i8* align 1 %64, i64 1, i1 false)
  br label %dst.addr5.658.exit

dst.addr5.6.0.0.064.case.1:                       ; preds = %73
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr5.6.0.0.064_1, i8* align 1 %64, i64 1, i1 false)
  br label %dst.addr5.658.exit

dst.addr5.6.0.0.064.case.2:                       ; preds = %73
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr5.6.0.0.064_2, i8* align 1 %64, i64 1, i1 false)
  br label %dst.addr5.658.exit

dst.addr5.6.0.0.064.case.3:                       ; preds = %73
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr5.6.0.0.064_3, i8* align 1 %64, i64 1, i1 false)
  br label %dst.addr5.658.exit

dst.addr5.6.0.0.064.case.4:                       ; preds = %73
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr5.6.0.0.064_4, i8* align 1 %64, i64 1, i1 false)
  br label %dst.addr5.658.exit

dst.addr5.6.0.0.064.case.5:                       ; preds = %73
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr5.6.0.0.064_5, i8* align 1 %64, i64 1, i1 false)
  br label %dst.addr5.658.exit

dst.addr5.6.0.0.064.case.6:                       ; preds = %73
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr5.6.0.0.064_6, i8* align 1 %64, i64 1, i1 false)
  br label %dst.addr5.658.exit

dst.addr5.6.0.0.064.case.7:                       ; preds = %73
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr5.6.0.0.064_7, i8* align 1 %64, i64 1, i1 false)
  br label %dst.addr5.658.exit

dst.addr5.658.exit:                               ; preds = %dst.addr5.6.0.0.064.case.7, %dst.addr5.6.0.0.064.case.6, %dst.addr5.6.0.0.064.case.5, %dst.addr5.6.0.0.064.case.4, %dst.addr5.6.0.0.064.case.3, %dst.addr5.6.0.0.064.case.2, %dst.addr5.6.0.0.064.case.1, %dst.addr5.6.0.0.064.case.0, %dst.addr5.6.0.062.case.7, %dst.addr5.6.0.062.case.6, %dst.addr5.6.0.062.case.5, %dst.addr5.6.0.062.case.4, %dst.addr5.6.0.062.case.3, %dst.addr5.6.0.062.case.2, %dst.addr5.6.0.062.case.1, %dst.addr5.6.0.062.case.0, %dst.addr5.6.060.case.7, %dst.addr5.6.060.case.6, %dst.addr5.6.060.case.5, %dst.addr5.6.060.case.4, %dst.addr5.6.060.case.3, %dst.addr5.6.060.case.2, %dst.addr5.6.060.case.1, %dst.addr5.6.060.case.0, %dst.addr5.658.case.7, %dst.addr5.658.case.6, %dst.addr5.658.case.5, %dst.addr5.658.case.4, %dst.addr5.658.case.3, %dst.addr5.658.case.2, %dst.addr5.658.case.1, %dst.addr5.658.case.0
  %src.addr6.765 = getelementptr [8 x [4096 x %struct.dpkt_t]], [8 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 %for.loop.idx74, i64 %for.loop.idx373, i32 7
  %dst.addr5.766_0 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_0, i64 0, i64 %for.loop.idx373, i32 7
  %dst.addr5.766_1 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_1, i64 0, i64 %for.loop.idx373, i32 7
  %dst.addr5.766_2 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_2, i64 0, i64 %for.loop.idx373, i32 7
  %dst.addr5.766_3 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_3, i64 0, i64 %for.loop.idx373, i32 7
  %dst.addr5.766_4 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_4, i64 0, i64 %for.loop.idx373, i32 7
  %dst.addr5.766_5 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_5, i64 0, i64 %for.loop.idx373, i32 7
  %dst.addr5.766_6 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_6, i64 0, i64 %for.loop.idx373, i32 7
  %dst.addr5.766_7 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_7, i64 0, i64 %for.loop.idx373, i32 7
  %74 = getelementptr [8 x [4096 x %struct.dpkt_t]], [8 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 %for.loop.idx74, i64 %for.loop.idx373, i32 7, i32 0, i32 0, i32 0
  %75 = call i1 @fpga_fifo_exist_1(i8* %74)
  br i1 %75, label %76, label %77

; <label>:76:                                     ; preds = %dst.addr5.658.exit
  switch i64 %for.loop.idx74, label %dst.addr5.766.default [
    i64 0, label %dst.addr5.766.case.0
    i64 1, label %dst.addr5.766.case.1
    i64 2, label %dst.addr5.766.case.2
    i64 3, label %dst.addr5.766.case.3
    i64 4, label %dst.addr5.766.case.4
    i64 5, label %dst.addr5.766.case.5
    i64 6, label %dst.addr5.766.case.6
    i64 7, label %dst.addr5.766.case.7
  ]

dst.addr5.766.default:                            ; preds = %76
  unreachable

dst.addr5.766.case.0:                             ; preds = %76
  call void @streamcpy_hls.p0struct.ap_uint.4.5(%struct.ap_uint* %dst.addr5.766_0, %struct.ap_uint* %src.addr6.765)
  br label %for.loop.head1

dst.addr5.766.case.1:                             ; preds = %76
  call void @streamcpy_hls.p0struct.ap_uint.4.5(%struct.ap_uint* %dst.addr5.766_1, %struct.ap_uint* %src.addr6.765)
  br label %for.loop.head1

dst.addr5.766.case.2:                             ; preds = %76
  call void @streamcpy_hls.p0struct.ap_uint.4.5(%struct.ap_uint* %dst.addr5.766_2, %struct.ap_uint* %src.addr6.765)
  br label %for.loop.head1

dst.addr5.766.case.3:                             ; preds = %76
  call void @streamcpy_hls.p0struct.ap_uint.4.5(%struct.ap_uint* %dst.addr5.766_3, %struct.ap_uint* %src.addr6.765)
  br label %for.loop.head1

dst.addr5.766.case.4:                             ; preds = %76
  call void @streamcpy_hls.p0struct.ap_uint.4.5(%struct.ap_uint* %dst.addr5.766_4, %struct.ap_uint* %src.addr6.765)
  br label %for.loop.head1

dst.addr5.766.case.5:                             ; preds = %76
  call void @streamcpy_hls.p0struct.ap_uint.4.5(%struct.ap_uint* %dst.addr5.766_5, %struct.ap_uint* %src.addr6.765)
  br label %for.loop.head1

dst.addr5.766.case.6:                             ; preds = %76
  call void @streamcpy_hls.p0struct.ap_uint.4.5(%struct.ap_uint* %dst.addr5.766_6, %struct.ap_uint* %src.addr6.765)
  br label %for.loop.head1

dst.addr5.766.case.7:                             ; preds = %76
  call void @streamcpy_hls.p0struct.ap_uint.4.5(%struct.ap_uint* %dst.addr5.766_7, %struct.ap_uint* %src.addr6.765)
  br label %for.loop.head1

; <label>:77:                                     ; preds = %dst.addr5.658.exit
  %src.addr6.7.067 = getelementptr [8 x [4096 x %struct.dpkt_t]], [8 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 %for.loop.idx74, i64 %for.loop.idx373, i32 7, i32 0
  %dst.addr5.7.068_0 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_0, i64 0, i64 %for.loop.idx373, i32 7, i32 0
  %dst.addr5.7.068_1 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_1, i64 0, i64 %for.loop.idx373, i32 7, i32 0
  %dst.addr5.7.068_2 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_2, i64 0, i64 %for.loop.idx373, i32 7, i32 0
  %dst.addr5.7.068_3 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_3, i64 0, i64 %for.loop.idx373, i32 7, i32 0
  %dst.addr5.7.068_4 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_4, i64 0, i64 %for.loop.idx373, i32 7, i32 0
  %dst.addr5.7.068_5 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_5, i64 0, i64 %for.loop.idx373, i32 7, i32 0
  %dst.addr5.7.068_6 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_6, i64 0, i64 %for.loop.idx373, i32 7, i32 0
  %dst.addr5.7.068_7 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_7, i64 0, i64 %for.loop.idx373, i32 7, i32 0
  %78 = call i1 @fpga_fifo_exist_1(i8* %74)
  br i1 %78, label %79, label %80

; <label>:79:                                     ; preds = %77
  switch i64 %for.loop.idx74, label %dst.addr5.7.068.default [
    i64 0, label %dst.addr5.7.068.case.0
    i64 1, label %dst.addr5.7.068.case.1
    i64 2, label %dst.addr5.7.068.case.2
    i64 3, label %dst.addr5.7.068.case.3
    i64 4, label %dst.addr5.7.068.case.4
    i64 5, label %dst.addr5.7.068.case.5
    i64 6, label %dst.addr5.7.068.case.6
    i64 7, label %dst.addr5.7.068.case.7
  ]

dst.addr5.7.068.default:                          ; preds = %79
  unreachable

dst.addr5.7.068.case.0:                           ; preds = %79
  call void @streamcpy_hls.p0struct.ap_int_base.6.7(%struct.ap_int_base* %dst.addr5.7.068_0, %struct.ap_int_base* %src.addr6.7.067)
  br label %for.loop.head1

dst.addr5.7.068.case.1:                           ; preds = %79
  call void @streamcpy_hls.p0struct.ap_int_base.6.7(%struct.ap_int_base* %dst.addr5.7.068_1, %struct.ap_int_base* %src.addr6.7.067)
  br label %for.loop.head1

dst.addr5.7.068.case.2:                           ; preds = %79
  call void @streamcpy_hls.p0struct.ap_int_base.6.7(%struct.ap_int_base* %dst.addr5.7.068_2, %struct.ap_int_base* %src.addr6.7.067)
  br label %for.loop.head1

dst.addr5.7.068.case.3:                           ; preds = %79
  call void @streamcpy_hls.p0struct.ap_int_base.6.7(%struct.ap_int_base* %dst.addr5.7.068_3, %struct.ap_int_base* %src.addr6.7.067)
  br label %for.loop.head1

dst.addr5.7.068.case.4:                           ; preds = %79
  call void @streamcpy_hls.p0struct.ap_int_base.6.7(%struct.ap_int_base* %dst.addr5.7.068_4, %struct.ap_int_base* %src.addr6.7.067)
  br label %for.loop.head1

dst.addr5.7.068.case.5:                           ; preds = %79
  call void @streamcpy_hls.p0struct.ap_int_base.6.7(%struct.ap_int_base* %dst.addr5.7.068_5, %struct.ap_int_base* %src.addr6.7.067)
  br label %for.loop.head1

dst.addr5.7.068.case.6:                           ; preds = %79
  call void @streamcpy_hls.p0struct.ap_int_base.6.7(%struct.ap_int_base* %dst.addr5.7.068_6, %struct.ap_int_base* %src.addr6.7.067)
  br label %for.loop.head1

dst.addr5.7.068.case.7:                           ; preds = %79
  call void @streamcpy_hls.p0struct.ap_int_base.6.7(%struct.ap_int_base* %dst.addr5.7.068_7, %struct.ap_int_base* %src.addr6.7.067)
  br label %for.loop.head1

; <label>:80:                                     ; preds = %77
  %src.addr6.7.0.069 = getelementptr [8 x [4096 x %struct.dpkt_t]], [8 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 %for.loop.idx74, i64 %for.loop.idx373, i32 7, i32 0, i32 0
  %dst.addr5.7.0.070_0 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_0, i64 0, i64 %for.loop.idx373, i32 7, i32 0, i32 0
  %dst.addr5.7.0.070_1 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_1, i64 0, i64 %for.loop.idx373, i32 7, i32 0, i32 0
  %dst.addr5.7.0.070_2 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_2, i64 0, i64 %for.loop.idx373, i32 7, i32 0, i32 0
  %dst.addr5.7.0.070_3 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_3, i64 0, i64 %for.loop.idx373, i32 7, i32 0, i32 0
  %dst.addr5.7.0.070_4 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_4, i64 0, i64 %for.loop.idx373, i32 7, i32 0, i32 0
  %dst.addr5.7.0.070_5 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_5, i64 0, i64 %for.loop.idx373, i32 7, i32 0, i32 0
  %dst.addr5.7.0.070_6 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_6, i64 0, i64 %for.loop.idx373, i32 7, i32 0, i32 0
  %dst.addr5.7.0.070_7 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_7, i64 0, i64 %for.loop.idx373, i32 7, i32 0, i32 0
  %81 = call i1 @fpga_fifo_exist_1(i8* %74)
  br i1 %81, label %82, label %83

; <label>:82:                                     ; preds = %80
  switch i64 %for.loop.idx74, label %dst.addr5.7.0.070.default [
    i64 0, label %dst.addr5.7.0.070.case.0
    i64 1, label %dst.addr5.7.0.070.case.1
    i64 2, label %dst.addr5.7.0.070.case.2
    i64 3, label %dst.addr5.7.0.070.case.3
    i64 4, label %dst.addr5.7.0.070.case.4
    i64 5, label %dst.addr5.7.0.070.case.5
    i64 6, label %dst.addr5.7.0.070.case.6
    i64 7, label %dst.addr5.7.0.070.case.7
  ]

dst.addr5.7.0.070.default:                        ; preds = %82
  unreachable

dst.addr5.7.0.070.case.0:                         ; preds = %82
  call void @streamcpy_hls.p0struct.ssdm_int.8.9(%struct.ssdm_int* %dst.addr5.7.0.070_0, %struct.ssdm_int* %src.addr6.7.0.069)
  br label %for.loop.head1

dst.addr5.7.0.070.case.1:                         ; preds = %82
  call void @streamcpy_hls.p0struct.ssdm_int.8.9(%struct.ssdm_int* %dst.addr5.7.0.070_1, %struct.ssdm_int* %src.addr6.7.0.069)
  br label %for.loop.head1

dst.addr5.7.0.070.case.2:                         ; preds = %82
  call void @streamcpy_hls.p0struct.ssdm_int.8.9(%struct.ssdm_int* %dst.addr5.7.0.070_2, %struct.ssdm_int* %src.addr6.7.0.069)
  br label %for.loop.head1

dst.addr5.7.0.070.case.3:                         ; preds = %82
  call void @streamcpy_hls.p0struct.ssdm_int.8.9(%struct.ssdm_int* %dst.addr5.7.0.070_3, %struct.ssdm_int* %src.addr6.7.0.069)
  br label %for.loop.head1

dst.addr5.7.0.070.case.4:                         ; preds = %82
  call void @streamcpy_hls.p0struct.ssdm_int.8.9(%struct.ssdm_int* %dst.addr5.7.0.070_4, %struct.ssdm_int* %src.addr6.7.0.069)
  br label %for.loop.head1

dst.addr5.7.0.070.case.5:                         ; preds = %82
  call void @streamcpy_hls.p0struct.ssdm_int.8.9(%struct.ssdm_int* %dst.addr5.7.0.070_5, %struct.ssdm_int* %src.addr6.7.0.069)
  br label %for.loop.head1

dst.addr5.7.0.070.case.6:                         ; preds = %82
  call void @streamcpy_hls.p0struct.ssdm_int.8.9(%struct.ssdm_int* %dst.addr5.7.0.070_6, %struct.ssdm_int* %src.addr6.7.0.069)
  br label %for.loop.head1

dst.addr5.7.0.070.case.7:                         ; preds = %82
  call void @streamcpy_hls.p0struct.ssdm_int.8.9(%struct.ssdm_int* %dst.addr5.7.0.070_7, %struct.ssdm_int* %src.addr6.7.0.069)
  br label %for.loop.head1

; <label>:83:                                     ; preds = %80
  %dst.addr5.7.0.0.072_0 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_0, i64 0, i64 %for.loop.idx373, i32 7, i32 0, i32 0, i32 0
  %dst.addr5.7.0.0.072_1 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_1, i64 0, i64 %for.loop.idx373, i32 7, i32 0, i32 0, i32 0
  %dst.addr5.7.0.0.072_2 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_2, i64 0, i64 %for.loop.idx373, i32 7, i32 0, i32 0, i32 0
  %dst.addr5.7.0.0.072_3 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_3, i64 0, i64 %for.loop.idx373, i32 7, i32 0, i32 0, i32 0
  %dst.addr5.7.0.0.072_4 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_4, i64 0, i64 %for.loop.idx373, i32 7, i32 0, i32 0, i32 0
  %dst.addr5.7.0.0.072_5 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_5, i64 0, i64 %for.loop.idx373, i32 7, i32 0, i32 0, i32 0
  %dst.addr5.7.0.0.072_6 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_6, i64 0, i64 %for.loop.idx373, i32 7, i32 0, i32 0, i32 0
  %dst.addr5.7.0.0.072_7 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_7, i64 0, i64 %for.loop.idx373, i32 7, i32 0, i32 0, i32 0
  switch i64 %for.loop.idx74, label %dst.addr5.7.0.0.072.default [
    i64 0, label %dst.addr5.7.0.0.072.case.0
    i64 1, label %dst.addr5.7.0.0.072.case.1
    i64 2, label %dst.addr5.7.0.0.072.case.2
    i64 3, label %dst.addr5.7.0.0.072.case.3
    i64 4, label %dst.addr5.7.0.0.072.case.4
    i64 5, label %dst.addr5.7.0.0.072.case.5
    i64 6, label %dst.addr5.7.0.0.072.case.6
    i64 7, label %dst.addr5.7.0.0.072.case.7
  ]

dst.addr5.7.0.0.072.default:                      ; preds = %83
  unreachable

dst.addr5.7.0.0.072.case.0:                       ; preds = %83
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr5.7.0.0.072_0, i8* align 1 %74, i64 1, i1 false)
  br label %for.loop.head1

dst.addr5.7.0.0.072.case.1:                       ; preds = %83
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr5.7.0.0.072_1, i8* align 1 %74, i64 1, i1 false)
  br label %for.loop.head1

dst.addr5.7.0.0.072.case.2:                       ; preds = %83
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr5.7.0.0.072_2, i8* align 1 %74, i64 1, i1 false)
  br label %for.loop.head1

dst.addr5.7.0.0.072.case.3:                       ; preds = %83
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr5.7.0.0.072_3, i8* align 1 %74, i64 1, i1 false)
  br label %for.loop.head1

dst.addr5.7.0.0.072.case.4:                       ; preds = %83
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr5.7.0.0.072_4, i8* align 1 %74, i64 1, i1 false)
  br label %for.loop.head1

dst.addr5.7.0.0.072.case.5:                       ; preds = %83
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr5.7.0.0.072_5, i8* align 1 %74, i64 1, i1 false)
  br label %for.loop.head1

dst.addr5.7.0.0.072.case.6:                       ; preds = %83
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr5.7.0.0.072_6, i8* align 1 %74, i64 1, i1 false)
  br label %for.loop.head1

dst.addr5.7.0.0.072.case.7:                       ; preds = %83
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr5.7.0.0.072_7, i8* align 1 %74, i64 1, i1 false)
  br label %for.loop.head1

for.loop.head1:                                   ; preds = %dst.addr5.7.0.0.072.case.7, %dst.addr5.7.0.0.072.case.6, %dst.addr5.7.0.0.072.case.5, %dst.addr5.7.0.0.072.case.4, %dst.addr5.7.0.0.072.case.3, %dst.addr5.7.0.0.072.case.2, %dst.addr5.7.0.0.072.case.1, %dst.addr5.7.0.0.072.case.0, %dst.addr5.7.0.070.case.7, %dst.addr5.7.0.070.case.6, %dst.addr5.7.0.070.case.5, %dst.addr5.7.0.070.case.4, %dst.addr5.7.0.070.case.3, %dst.addr5.7.0.070.case.2, %dst.addr5.7.0.070.case.1, %dst.addr5.7.0.070.case.0, %dst.addr5.7.068.case.7, %dst.addr5.7.068.case.6, %dst.addr5.7.068.case.5, %dst.addr5.7.068.case.4, %dst.addr5.7.068.case.3, %dst.addr5.7.068.case.2, %dst.addr5.7.068.case.1, %dst.addr5.7.068.case.0, %dst.addr5.766.case.7, %dst.addr5.766.case.6, %dst.addr5.766.case.5, %dst.addr5.766.case.4, %dst.addr5.766.case.3, %dst.addr5.766.case.2, %dst.addr5.766.case.1, %dst.addr5.766.case.0
  %for.loop.idx3.next = add nuw nsw i64 %for.loop.idx373, 1
  %exitcond = icmp ne i64 %for.loop.idx3.next, 4096
  br i1 %exitcond, label %for.loop2, label %for.loop.split

for.loop.split:                                   ; preds = %for.loop.head1
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx74, 1
  %exitcond75 = icmp ne i64 %for.loop.idx.next, 8
  br i1 %exitcond75, label %for.loop, label %ret

ret:                                              ; preds = %for.loop.split, %entry
  ret void
}

; Function Attrs: noinline
define internal void @copy_in(i32* readonly "orig.arg.no"="0", i32* noalias align 512 "orig.arg.no"="1", i1* readonly "orig.arg.no"="2", i1* noalias align 512 "orig.arg.no"="3", [8 x [4096 x %struct.dpkt_t]]* "orig.arg.no"="4", [4096 x %struct.dpkt_t]* noalias "orig.arg.no"="5" %_0, [4096 x %struct.dpkt_t]* noalias "orig.arg.no"="5" %_1, [4096 x %struct.dpkt_t]* noalias "orig.arg.no"="5" %_2, [4096 x %struct.dpkt_t]* noalias "orig.arg.no"="5" %_3, [4096 x %struct.dpkt_t]* noalias "orig.arg.no"="5" %_4, [4096 x %struct.dpkt_t]* noalias "orig.arg.no"="5" %_5, [4096 x %struct.dpkt_t]* noalias "orig.arg.no"="5" %_6, [4096 x %struct.dpkt_t]* noalias "orig.arg.no"="5" %_7) #5 {
entry:
  call fastcc void @onebyonecpy_hls.p0i32(i32* align 512 %1, i32* %0)
  call fastcc void @onebyonecpy_hls.p0i1(i1* align 512 %3, i1* %2)
  call void @onebyonecpy_hls.p0a8a4096struct.dpkt_t.3.10([4096 x %struct.dpkt_t]* %_0, [4096 x %struct.dpkt_t]* %_1, [4096 x %struct.dpkt_t]* %_2, [4096 x %struct.dpkt_t]* %_3, [4096 x %struct.dpkt_t]* %_4, [4096 x %struct.dpkt_t]* %_5, [4096 x %struct.dpkt_t]* %_6, [4096 x %struct.dpkt_t]* %_7, [8 x [4096 x %struct.dpkt_t]]* %4)
  ret void
}

; Function Attrs: argmemonly noinline
define internal void @streamcpy_hls.p0struct.ap_uint.16.17(%struct.ap_uint* noalias nocapture "orig.arg.no"="0", %struct.ap_uint* noalias nocapture "orig.arg.no"="1") #3 {
entry:
  %2 = alloca %struct.ap_uint
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %struct.ap_uint* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_1(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %struct.ap_uint* %2 to i8*
  %6 = bitcast %struct.ap_uint* %1 to i8*
  call void @fpga_fifo_pop_1(i8* %5, i8* %6)
  %7 = load volatile %struct.ap_uint, %struct.ap_uint* %2
  %8 = bitcast %struct.ap_uint* %2 to i8*
  %9 = bitcast %struct.ap_uint* %0 to i8*
  call void @fpga_fifo_push_1(i8* %8, i8* %9)
  br label %empty, !llvm.loop !5

ret:                                              ; preds = %empty
  %10 = getelementptr %struct.ap_uint, %struct.ap_uint* %1, i32 0, i32 0, i32 0, i32 0
  %11 = getelementptr inbounds %struct.ap_uint, %struct.ap_uint* %0, i32 0, i32 0, i32 0, i32 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 1, i1 false)
  ret void
}

; Function Attrs: argmemonly noinline
define internal void @streamcpy_hls.p0struct.ap_int_base.18.19(%struct.ap_int_base* noalias nocapture "orig.arg.no"="0", %struct.ap_int_base* noalias nocapture "orig.arg.no"="1") #3 {
entry:
  %2 = alloca %struct.ap_int_base
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %struct.ap_int_base* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_1(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %struct.ap_int_base* %2 to i8*
  %6 = bitcast %struct.ap_int_base* %1 to i8*
  call void @fpga_fifo_pop_1(i8* %5, i8* %6)
  %7 = load volatile %struct.ap_int_base, %struct.ap_int_base* %2
  %8 = bitcast %struct.ap_int_base* %2 to i8*
  %9 = bitcast %struct.ap_int_base* %0 to i8*
  call void @fpga_fifo_push_1(i8* %8, i8* %9)
  br label %empty, !llvm.loop !7

ret:                                              ; preds = %empty
  %10 = getelementptr %struct.ap_int_base, %struct.ap_int_base* %1, i32 0, i32 0, i32 0
  %11 = getelementptr inbounds %struct.ap_int_base, %struct.ap_int_base* %0, i32 0, i32 0, i32 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 1, i1 false)
  ret void
}

; Function Attrs: argmemonly noinline
define internal void @streamcpy_hls.p0struct.ssdm_int.20.21(%struct.ssdm_int* noalias nocapture "orig.arg.no"="0", %struct.ssdm_int* noalias nocapture "orig.arg.no"="1") #3 {
entry:
  %2 = alloca %struct.ssdm_int
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %struct.ssdm_int* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_1(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %struct.ssdm_int* %2 to i8*
  %6 = bitcast %struct.ssdm_int* %1 to i8*
  call void @fpga_fifo_pop_1(i8* %5, i8* %6)
  %7 = load volatile %struct.ssdm_int, %struct.ssdm_int* %2
  %8 = bitcast %struct.ssdm_int* %2 to i8*
  %9 = bitcast %struct.ssdm_int* %0 to i8*
  call void @fpga_fifo_push_1(i8* %8, i8* %9)
  br label %empty, !llvm.loop !8

ret:                                              ; preds = %empty
  %10 = getelementptr %struct.ssdm_int, %struct.ssdm_int* %1, i32 0, i32 0
  %11 = getelementptr inbounds %struct.ssdm_int, %struct.ssdm_int* %0, i32 0, i32 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 1, i1 false)
  ret void
}

; Function Attrs: noinline
define internal void @onebyonecpy_hls.p0a8a4096struct.dpkt_t.15.22([8 x [4096 x %struct.dpkt_t]]* noalias "orig.arg.no"="0", [4096 x %struct.dpkt_t]* noalias "orig.arg.no"="1" %_0, [4096 x %struct.dpkt_t]* noalias "orig.arg.no"="1" %_1, [4096 x %struct.dpkt_t]* noalias "orig.arg.no"="1" %_2, [4096 x %struct.dpkt_t]* noalias "orig.arg.no"="1" %_3, [4096 x %struct.dpkt_t]* noalias "orig.arg.no"="1" %_4, [4096 x %struct.dpkt_t]* noalias "orig.arg.no"="1" %_5, [4096 x %struct.dpkt_t]* noalias "orig.arg.no"="1" %_6, [4096 x %struct.dpkt_t]* noalias "orig.arg.no"="1" %_7) #4 {
entry:
  %1 = icmp eq [8 x [4096 x %struct.dpkt_t]]* %0, null
  %2 = icmp eq [4096 x %struct.dpkt_t]* %_0, null
  %3 = or i1 %1, %2
  br i1 %3, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop.split, %copy
  %for.loop.idx74 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop.split ]
  br label %for.loop2

for.loop2:                                        ; preds = %for.loop.head1, %for.loop
  %for.loop.idx373 = phi i64 [ 0, %for.loop ], [ %for.loop.idx3.next, %for.loop.head1 ]
  %src.addr6.09_0 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_0, i64 0, i64 %for.loop.idx373, i32 0
  %src.addr6.09_1 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_1, i64 0, i64 %for.loop.idx373, i32 0
  %src.addr6.09_2 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_2, i64 0, i64 %for.loop.idx373, i32 0
  %src.addr6.09_3 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_3, i64 0, i64 %for.loop.idx373, i32 0
  %src.addr6.09_4 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_4, i64 0, i64 %for.loop.idx373, i32 0
  %src.addr6.09_5 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_5, i64 0, i64 %for.loop.idx373, i32 0
  %src.addr6.09_6 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_6, i64 0, i64 %for.loop.idx373, i32 0
  %src.addr6.09_7 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_7, i64 0, i64 %for.loop.idx373, i32 0
  %dst.addr5.010 = getelementptr [8 x [4096 x %struct.dpkt_t]], [8 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 %for.loop.idx74, i64 %for.loop.idx373, i32 0
  %_01 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_0, i64 0, i64 %for.loop.idx373, i32 0, i32 0, i32 0, i32 0
  %_12 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_1, i64 0, i64 %for.loop.idx373, i32 0, i32 0, i32 0, i32 0
  %_23 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_2, i64 0, i64 %for.loop.idx373, i32 0, i32 0, i32 0, i32 0
  %_34 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_3, i64 0, i64 %for.loop.idx373, i32 0, i32 0, i32 0, i32 0
  %_45 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_4, i64 0, i64 %for.loop.idx373, i32 0, i32 0, i32 0, i32 0
  %_56 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_5, i64 0, i64 %for.loop.idx373, i32 0, i32 0, i32 0, i32 0
  %_67 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_6, i64 0, i64 %for.loop.idx373, i32 0, i32 0, i32 0, i32 0
  %_78 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_7, i64 0, i64 %for.loop.idx373, i32 0, i32 0, i32 0, i32 0
  switch i64 %for.loop.idx74, label %.default [
    i64 0, label %.case.0
    i64 1, label %.case.1
    i64 2, label %.case.2
    i64 3, label %.case.3
    i64 4, label %.case.4
    i64 5, label %.case.5
    i64 6, label %.case.6
    i64 7, label %.exit
  ]

.default:                                         ; preds = %for.loop2
  unreachable

.case.0:                                          ; preds = %for.loop2
  %_09 = call i1 @fpga_fifo_exist_1(i8* %_01)
  br i1 %_09, label %src.addr6.09.case.0, label %.case.0327

.case.1:                                          ; preds = %for.loop2
  %_110 = call i1 @fpga_fifo_exist_1(i8* %_12)
  br i1 %_110, label %src.addr6.09.case.1, label %.case.1328

.case.2:                                          ; preds = %for.loop2
  %_211 = call i1 @fpga_fifo_exist_1(i8* %_23)
  br i1 %_211, label %src.addr6.09.case.2, label %.case.2329

.case.3:                                          ; preds = %for.loop2
  %_312 = call i1 @fpga_fifo_exist_1(i8* %_34)
  br i1 %_312, label %src.addr6.09.case.3, label %.case.3330

.case.4:                                          ; preds = %for.loop2
  %_413 = call i1 @fpga_fifo_exist_1(i8* %_45)
  br i1 %_413, label %src.addr6.09.case.4, label %.case.4331

.case.5:                                          ; preds = %for.loop2
  %_514 = call i1 @fpga_fifo_exist_1(i8* %_56)
  br i1 %_514, label %src.addr6.09.case.5, label %.case.5332

.case.6:                                          ; preds = %for.loop2
  %_615 = call i1 @fpga_fifo_exist_1(i8* %_67)
  br i1 %_615, label %src.addr6.09.case.6, label %.case.6333

.exit:                                            ; preds = %for.loop2
  %_716 = call i1 @fpga_fifo_exist_1(i8* %_78)
  br i1 %_716, label %src.addr6.09.case.7, label %.exit326

src.addr6.09.case.0:                              ; preds = %.case.0
  call void @streamcpy_hls.p0struct.ap_uint.16.17(%struct.ap_uint* %dst.addr5.010, %struct.ap_uint* %src.addr6.09_0)
  br label %src.addr6.09.exit

src.addr6.09.case.1:                              ; preds = %.case.1
  call void @streamcpy_hls.p0struct.ap_uint.16.17(%struct.ap_uint* %dst.addr5.010, %struct.ap_uint* %src.addr6.09_1)
  br label %src.addr6.09.exit

src.addr6.09.case.2:                              ; preds = %.case.2
  call void @streamcpy_hls.p0struct.ap_uint.16.17(%struct.ap_uint* %dst.addr5.010, %struct.ap_uint* %src.addr6.09_2)
  br label %src.addr6.09.exit

src.addr6.09.case.3:                              ; preds = %.case.3
  call void @streamcpy_hls.p0struct.ap_uint.16.17(%struct.ap_uint* %dst.addr5.010, %struct.ap_uint* %src.addr6.09_3)
  br label %src.addr6.09.exit

src.addr6.09.case.4:                              ; preds = %.case.4
  call void @streamcpy_hls.p0struct.ap_uint.16.17(%struct.ap_uint* %dst.addr5.010, %struct.ap_uint* %src.addr6.09_4)
  br label %src.addr6.09.exit

src.addr6.09.case.5:                              ; preds = %.case.5
  call void @streamcpy_hls.p0struct.ap_uint.16.17(%struct.ap_uint* %dst.addr5.010, %struct.ap_uint* %src.addr6.09_5)
  br label %src.addr6.09.exit

src.addr6.09.case.6:                              ; preds = %.case.6
  call void @streamcpy_hls.p0struct.ap_uint.16.17(%struct.ap_uint* %dst.addr5.010, %struct.ap_uint* %src.addr6.09_6)
  br label %src.addr6.09.exit

src.addr6.09.case.7:                              ; preds = %.exit
  call void @streamcpy_hls.p0struct.ap_uint.16.17(%struct.ap_uint* %dst.addr5.010, %struct.ap_uint* %src.addr6.09_7)
  br label %src.addr6.09.exit

.case.0327:                                       ; preds = %.case.0
  %src.addr6.0.011_08 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_0, i64 0, i64 %for.loop.idx373, i32 0, i32 0
  %dst.addr5.0.01216 = getelementptr [8 x [4096 x %struct.dpkt_t]], [8 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 0, i64 %for.loop.idx373, i32 0, i32 0
  %_0335 = call i1 @fpga_fifo_exist_1(i8* %_01)
  br i1 %_0335, label %src.addr6.0.011.case.0, label %.case.0345

.case.1328:                                       ; preds = %.case.1
  %src.addr6.0.011_137 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_1, i64 0, i64 %for.loop.idx373, i32 0, i32 0
  %dst.addr5.0.01244 = getelementptr [8 x [4096 x %struct.dpkt_t]], [8 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 1, i64 %for.loop.idx373, i32 0, i32 0
  %_1336 = call i1 @fpga_fifo_exist_1(i8* %_12)
  br i1 %_1336, label %src.addr6.0.011.case.1, label %.case.1346

.case.2329:                                       ; preds = %.case.2
  %src.addr6.0.011_257 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_2, i64 0, i64 %for.loop.idx373, i32 0, i32 0
  %dst.addr5.0.01263 = getelementptr [8 x [4096 x %struct.dpkt_t]], [8 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 2, i64 %for.loop.idx373, i32 0, i32 0
  %_2337 = call i1 @fpga_fifo_exist_1(i8* %_23)
  br i1 %_2337, label %src.addr6.0.011.case.2, label %.case.2347

.case.3330:                                       ; preds = %.case.3
  %src.addr6.0.011_377 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_3, i64 0, i64 %for.loop.idx373, i32 0, i32 0
  %dst.addr5.0.01282 = getelementptr [8 x [4096 x %struct.dpkt_t]], [8 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 3, i64 %for.loop.idx373, i32 0, i32 0
  %_3338 = call i1 @fpga_fifo_exist_1(i8* %_34)
  br i1 %_3338, label %src.addr6.0.011.case.3, label %.case.3348

.case.4331:                                       ; preds = %.case.4
  %src.addr6.0.011_497 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_4, i64 0, i64 %for.loop.idx373, i32 0, i32 0
  %dst.addr5.0.012101 = getelementptr [8 x [4096 x %struct.dpkt_t]], [8 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 4, i64 %for.loop.idx373, i32 0, i32 0
  %_4339 = call i1 @fpga_fifo_exist_1(i8* %_45)
  br i1 %_4339, label %src.addr6.0.011.case.4, label %.case.4349

.case.5332:                                       ; preds = %.case.5
  %src.addr6.0.011_5117 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_5, i64 0, i64 %for.loop.idx373, i32 0, i32 0
  %dst.addr5.0.012120 = getelementptr [8 x [4096 x %struct.dpkt_t]], [8 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 5, i64 %for.loop.idx373, i32 0, i32 0
  %_5340 = call i1 @fpga_fifo_exist_1(i8* %_56)
  br i1 %_5340, label %src.addr6.0.011.case.5, label %.case.5350

.case.6333:                                       ; preds = %.case.6
  %src.addr6.0.011_6137 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_6, i64 0, i64 %for.loop.idx373, i32 0, i32 0
  %dst.addr5.0.012139 = getelementptr [8 x [4096 x %struct.dpkt_t]], [8 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 6, i64 %for.loop.idx373, i32 0, i32 0
  %_6341 = call i1 @fpga_fifo_exist_1(i8* %_67)
  br i1 %_6341, label %src.addr6.0.011.case.6, label %.case.6351

.exit326:                                         ; preds = %.exit
  %src.addr6.0.011_7 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_7, i64 0, i64 %for.loop.idx373, i32 0, i32 0
  %dst.addr5.0.012 = getelementptr [8 x [4096 x %struct.dpkt_t]], [8 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 7, i64 %for.loop.idx373, i32 0, i32 0
  %_7342 = call i1 @fpga_fifo_exist_1(i8* %_78)
  br i1 %_7342, label %src.addr6.0.011.case.7, label %.exit344

src.addr6.0.011.case.0:                           ; preds = %.case.0327
  call void @streamcpy_hls.p0struct.ap_int_base.18.19(%struct.ap_int_base* %dst.addr5.0.01216, %struct.ap_int_base* %src.addr6.0.011_08)
  br label %src.addr6.09.exit

src.addr6.0.011.case.1:                           ; preds = %.case.1328
  call void @streamcpy_hls.p0struct.ap_int_base.18.19(%struct.ap_int_base* %dst.addr5.0.01244, %struct.ap_int_base* %src.addr6.0.011_137)
  br label %src.addr6.09.exit

src.addr6.0.011.case.2:                           ; preds = %.case.2329
  call void @streamcpy_hls.p0struct.ap_int_base.18.19(%struct.ap_int_base* %dst.addr5.0.01263, %struct.ap_int_base* %src.addr6.0.011_257)
  br label %src.addr6.09.exit

src.addr6.0.011.case.3:                           ; preds = %.case.3330
  call void @streamcpy_hls.p0struct.ap_int_base.18.19(%struct.ap_int_base* %dst.addr5.0.01282, %struct.ap_int_base* %src.addr6.0.011_377)
  br label %src.addr6.09.exit

src.addr6.0.011.case.4:                           ; preds = %.case.4331
  call void @streamcpy_hls.p0struct.ap_int_base.18.19(%struct.ap_int_base* %dst.addr5.0.012101, %struct.ap_int_base* %src.addr6.0.011_497)
  br label %src.addr6.09.exit

src.addr6.0.011.case.5:                           ; preds = %.case.5332
  call void @streamcpy_hls.p0struct.ap_int_base.18.19(%struct.ap_int_base* %dst.addr5.0.012120, %struct.ap_int_base* %src.addr6.0.011_5117)
  br label %src.addr6.09.exit

src.addr6.0.011.case.6:                           ; preds = %.case.6333
  call void @streamcpy_hls.p0struct.ap_int_base.18.19(%struct.ap_int_base* %dst.addr5.0.012139, %struct.ap_int_base* %src.addr6.0.011_6137)
  br label %src.addr6.09.exit

src.addr6.0.011.case.7:                           ; preds = %.exit326
  call void @streamcpy_hls.p0struct.ap_int_base.18.19(%struct.ap_int_base* %dst.addr5.0.012, %struct.ap_int_base* %src.addr6.0.011_7)
  br label %src.addr6.09.exit

.case.0345:                                       ; preds = %.case.0327
  %src.addr6.0.0.013_0180 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_0, i64 0, i64 %for.loop.idx373, i32 0, i32 0, i32 0
  %dst.addr5.0.0.014188 = getelementptr [8 x [4096 x %struct.dpkt_t]], [8 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 0, i64 %for.loop.idx373, i32 0, i32 0, i32 0
  %_0353 = call i1 @fpga_fifo_exist_1(i8* %_01)
  br i1 %_0353, label %src.addr6.0.0.013.case.0, label %.case.0363

.case.1346:                                       ; preds = %.case.1328
  %src.addr6.0.0.013_1209 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_1, i64 0, i64 %for.loop.idx373, i32 0, i32 0, i32 0
  %dst.addr5.0.0.014216 = getelementptr [8 x [4096 x %struct.dpkt_t]], [8 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 1, i64 %for.loop.idx373, i32 0, i32 0, i32 0
  %_1354 = call i1 @fpga_fifo_exist_1(i8* %_12)
  br i1 %_1354, label %src.addr6.0.0.013.case.1, label %.case.1364

.case.2347:                                       ; preds = %.case.2329
  %src.addr6.0.0.013_2229 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_2, i64 0, i64 %for.loop.idx373, i32 0, i32 0, i32 0
  %dst.addr5.0.0.014235 = getelementptr [8 x [4096 x %struct.dpkt_t]], [8 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 2, i64 %for.loop.idx373, i32 0, i32 0, i32 0
  %_2355 = call i1 @fpga_fifo_exist_1(i8* %_23)
  br i1 %_2355, label %src.addr6.0.0.013.case.2, label %.case.2365

.case.3348:                                       ; preds = %.case.3330
  %src.addr6.0.0.013_3249 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_3, i64 0, i64 %for.loop.idx373, i32 0, i32 0, i32 0
  %dst.addr5.0.0.014254 = getelementptr [8 x [4096 x %struct.dpkt_t]], [8 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 3, i64 %for.loop.idx373, i32 0, i32 0, i32 0
  %_3356 = call i1 @fpga_fifo_exist_1(i8* %_34)
  br i1 %_3356, label %src.addr6.0.0.013.case.3, label %.case.3366

.case.4349:                                       ; preds = %.case.4331
  %src.addr6.0.0.013_4269 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_4, i64 0, i64 %for.loop.idx373, i32 0, i32 0, i32 0
  %dst.addr5.0.0.014273 = getelementptr [8 x [4096 x %struct.dpkt_t]], [8 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 4, i64 %for.loop.idx373, i32 0, i32 0, i32 0
  %_4357 = call i1 @fpga_fifo_exist_1(i8* %_45)
  br i1 %_4357, label %src.addr6.0.0.013.case.4, label %.case.4367

.case.5350:                                       ; preds = %.case.5332
  %src.addr6.0.0.013_5289 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_5, i64 0, i64 %for.loop.idx373, i32 0, i32 0, i32 0
  %dst.addr5.0.0.014292 = getelementptr [8 x [4096 x %struct.dpkt_t]], [8 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 5, i64 %for.loop.idx373, i32 0, i32 0, i32 0
  %_5358 = call i1 @fpga_fifo_exist_1(i8* %_56)
  br i1 %_5358, label %src.addr6.0.0.013.case.5, label %.case.5368

.case.6351:                                       ; preds = %.case.6333
  %src.addr6.0.0.013_6309 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_6, i64 0, i64 %for.loop.idx373, i32 0, i32 0, i32 0
  %dst.addr5.0.0.014311 = getelementptr [8 x [4096 x %struct.dpkt_t]], [8 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 6, i64 %for.loop.idx373, i32 0, i32 0, i32 0
  %_6359 = call i1 @fpga_fifo_exist_1(i8* %_67)
  br i1 %_6359, label %src.addr6.0.0.013.case.6, label %.case.6369

.exit344:                                         ; preds = %.exit326
  %src.addr6.0.0.013_7 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_7, i64 0, i64 %for.loop.idx373, i32 0, i32 0, i32 0
  %dst.addr5.0.0.014 = getelementptr [8 x [4096 x %struct.dpkt_t]], [8 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 7, i64 %for.loop.idx373, i32 0, i32 0, i32 0
  %_7360 = call i1 @fpga_fifo_exist_1(i8* %_78)
  br i1 %_7360, label %src.addr6.0.0.013.case.7, label %.case.7370

src.addr6.0.0.013.case.0:                         ; preds = %.case.0345
  call void @streamcpy_hls.p0struct.ssdm_int.20.21(%struct.ssdm_int* %dst.addr5.0.0.014188, %struct.ssdm_int* %src.addr6.0.0.013_0180)
  br label %src.addr6.09.exit

src.addr6.0.0.013.case.1:                         ; preds = %.case.1346
  call void @streamcpy_hls.p0struct.ssdm_int.20.21(%struct.ssdm_int* %dst.addr5.0.0.014216, %struct.ssdm_int* %src.addr6.0.0.013_1209)
  br label %src.addr6.09.exit

src.addr6.0.0.013.case.2:                         ; preds = %.case.2347
  call void @streamcpy_hls.p0struct.ssdm_int.20.21(%struct.ssdm_int* %dst.addr5.0.0.014235, %struct.ssdm_int* %src.addr6.0.0.013_2229)
  br label %src.addr6.09.exit

src.addr6.0.0.013.case.3:                         ; preds = %.case.3348
  call void @streamcpy_hls.p0struct.ssdm_int.20.21(%struct.ssdm_int* %dst.addr5.0.0.014254, %struct.ssdm_int* %src.addr6.0.0.013_3249)
  br label %src.addr6.09.exit

src.addr6.0.0.013.case.4:                         ; preds = %.case.4349
  call void @streamcpy_hls.p0struct.ssdm_int.20.21(%struct.ssdm_int* %dst.addr5.0.0.014273, %struct.ssdm_int* %src.addr6.0.0.013_4269)
  br label %src.addr6.09.exit

src.addr6.0.0.013.case.5:                         ; preds = %.case.5350
  call void @streamcpy_hls.p0struct.ssdm_int.20.21(%struct.ssdm_int* %dst.addr5.0.0.014292, %struct.ssdm_int* %src.addr6.0.0.013_5289)
  br label %src.addr6.09.exit

src.addr6.0.0.013.case.6:                         ; preds = %.case.6351
  call void @streamcpy_hls.p0struct.ssdm_int.20.21(%struct.ssdm_int* %dst.addr5.0.0.014311, %struct.ssdm_int* %src.addr6.0.0.013_6309)
  br label %src.addr6.09.exit

src.addr6.0.0.013.case.7:                         ; preds = %.exit344
  call void @streamcpy_hls.p0struct.ssdm_int.20.21(%struct.ssdm_int* %dst.addr5.0.0.014, %struct.ssdm_int* %src.addr6.0.0.013_7)
  br label %src.addr6.09.exit

.case.0363:                                       ; preds = %.case.0345
  %dst.addr5.0.0.0.016352 = getelementptr [8 x [4096 x %struct.dpkt_t]], [8 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 0, i64 %for.loop.idx373, i32 0, i32 0, i32 0, i32 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr5.0.0.0.016352, i8* align 1 %_01, i64 1, i1 false)
  br label %src.addr6.09.exit

.case.1364:                                       ; preds = %.case.1346
  %dst.addr5.0.0.0.016355 = getelementptr [8 x [4096 x %struct.dpkt_t]], [8 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 1, i64 %for.loop.idx373, i32 0, i32 0, i32 0, i32 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr5.0.0.0.016355, i8* align 1 %_12, i64 1, i1 false)
  br label %src.addr6.09.exit

.case.2365:                                       ; preds = %.case.2347
  %dst.addr5.0.0.0.016358 = getelementptr [8 x [4096 x %struct.dpkt_t]], [8 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 2, i64 %for.loop.idx373, i32 0, i32 0, i32 0, i32 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr5.0.0.0.016358, i8* align 1 %_23, i64 1, i1 false)
  br label %src.addr6.09.exit

.case.3366:                                       ; preds = %.case.3348
  %dst.addr5.0.0.0.016361 = getelementptr [8 x [4096 x %struct.dpkt_t]], [8 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 3, i64 %for.loop.idx373, i32 0, i32 0, i32 0, i32 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr5.0.0.0.016361, i8* align 1 %_34, i64 1, i1 false)
  br label %src.addr6.09.exit

.case.4367:                                       ; preds = %.case.4349
  %dst.addr5.0.0.0.016364 = getelementptr [8 x [4096 x %struct.dpkt_t]], [8 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 4, i64 %for.loop.idx373, i32 0, i32 0, i32 0, i32 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr5.0.0.0.016364, i8* align 1 %_45, i64 1, i1 false)
  br label %src.addr6.09.exit

.case.5368:                                       ; preds = %.case.5350
  %dst.addr5.0.0.0.016367 = getelementptr [8 x [4096 x %struct.dpkt_t]], [8 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 5, i64 %for.loop.idx373, i32 0, i32 0, i32 0, i32 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr5.0.0.0.016367, i8* align 1 %_56, i64 1, i1 false)
  br label %src.addr6.09.exit

.case.6369:                                       ; preds = %.case.6351
  %dst.addr5.0.0.0.016370 = getelementptr [8 x [4096 x %struct.dpkt_t]], [8 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 6, i64 %for.loop.idx373, i32 0, i32 0, i32 0, i32 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr5.0.0.0.016370, i8* align 1 %_67, i64 1, i1 false)
  br label %src.addr6.09.exit

.case.7370:                                       ; preds = %.exit344
  %dst.addr5.0.0.0.016 = getelementptr [8 x [4096 x %struct.dpkt_t]], [8 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 7, i64 %for.loop.idx373, i32 0, i32 0, i32 0, i32 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr5.0.0.0.016, i8* align 1 %_78, i64 1, i1 false)
  br label %src.addr6.09.exit

src.addr6.09.exit:                                ; preds = %.case.7370, %.case.6369, %.case.5368, %.case.4367, %.case.3366, %.case.2365, %.case.1364, %.case.0363, %src.addr6.0.0.013.case.7, %src.addr6.0.0.013.case.6, %src.addr6.0.0.013.case.5, %src.addr6.0.0.013.case.4, %src.addr6.0.0.013.case.3, %src.addr6.0.0.013.case.2, %src.addr6.0.0.013.case.1, %src.addr6.0.0.013.case.0, %src.addr6.0.011.case.7, %src.addr6.0.011.case.6, %src.addr6.0.011.case.5, %src.addr6.0.011.case.4, %src.addr6.0.011.case.3, %src.addr6.0.011.case.2, %src.addr6.0.011.case.1, %src.addr6.0.011.case.0, %src.addr6.09.case.7, %src.addr6.09.case.6, %src.addr6.09.case.5, %src.addr6.09.case.4, %src.addr6.09.case.3, %src.addr6.09.case.2, %src.addr6.09.case.1, %src.addr6.09.case.0
  %src.addr6.117_0 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_0, i64 0, i64 %for.loop.idx373, i32 1
  %src.addr6.117_1 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_1, i64 0, i64 %for.loop.idx373, i32 1
  %src.addr6.117_2 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_2, i64 0, i64 %for.loop.idx373, i32 1
  %src.addr6.117_3 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_3, i64 0, i64 %for.loop.idx373, i32 1
  %src.addr6.117_4 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_4, i64 0, i64 %for.loop.idx373, i32 1
  %src.addr6.117_5 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_5, i64 0, i64 %for.loop.idx373, i32 1
  %src.addr6.117_6 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_6, i64 0, i64 %for.loop.idx373, i32 1
  %src.addr6.117_7 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_7, i64 0, i64 %for.loop.idx373, i32 1
  %dst.addr5.118 = getelementptr [8 x [4096 x %struct.dpkt_t]], [8 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 %for.loop.idx74, i64 %for.loop.idx373, i32 1
  %_017 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_0, i64 0, i64 %for.loop.idx373, i32 1, i32 0, i32 0, i32 0
  %_118 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_1, i64 0, i64 %for.loop.idx373, i32 1, i32 0, i32 0, i32 0
  %_219 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_2, i64 0, i64 %for.loop.idx373, i32 1, i32 0, i32 0, i32 0
  %_320 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_3, i64 0, i64 %for.loop.idx373, i32 1, i32 0, i32 0, i32 0
  %_421 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_4, i64 0, i64 %for.loop.idx373, i32 1, i32 0, i32 0, i32 0
  %_522 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_5, i64 0, i64 %for.loop.idx373, i32 1, i32 0, i32 0, i32 0
  %_623 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_6, i64 0, i64 %for.loop.idx373, i32 1, i32 0, i32 0, i32 0
  %_724 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_7, i64 0, i64 %for.loop.idx373, i32 1, i32 0, i32 0, i32 0
  switch i64 %for.loop.idx74, label %.default25 [
    i64 0, label %.case.027
    i64 1, label %.case.128
    i64 2, label %.case.229
    i64 3, label %.case.330
    i64 4, label %.case.431
    i64 5, label %.case.532
    i64 6, label %.case.633
    i64 7, label %.exit26
  ]

.default25:                                       ; preds = %src.addr6.09.exit
  unreachable

.case.027:                                        ; preds = %src.addr6.09.exit
  %_035 = call i1 @fpga_fifo_exist_1(i8* %_017)
  br i1 %_035, label %src.addr6.117.case.0, label %.case.0309

.case.128:                                        ; preds = %src.addr6.09.exit
  %_136 = call i1 @fpga_fifo_exist_1(i8* %_118)
  br i1 %_136, label %src.addr6.117.case.1, label %.case.1310

.case.229:                                        ; preds = %src.addr6.09.exit
  %_237 = call i1 @fpga_fifo_exist_1(i8* %_219)
  br i1 %_237, label %src.addr6.117.case.2, label %.case.2311

.case.330:                                        ; preds = %src.addr6.09.exit
  %_338 = call i1 @fpga_fifo_exist_1(i8* %_320)
  br i1 %_338, label %src.addr6.117.case.3, label %.case.3312

.case.431:                                        ; preds = %src.addr6.09.exit
  %_439 = call i1 @fpga_fifo_exist_1(i8* %_421)
  br i1 %_439, label %src.addr6.117.case.4, label %.case.4313

.case.532:                                        ; preds = %src.addr6.09.exit
  %_540 = call i1 @fpga_fifo_exist_1(i8* %_522)
  br i1 %_540, label %src.addr6.117.case.5, label %.case.5314

.case.633:                                        ; preds = %src.addr6.09.exit
  %_641 = call i1 @fpga_fifo_exist_1(i8* %_623)
  br i1 %_641, label %src.addr6.117.case.6, label %.case.6315

.exit26:                                          ; preds = %src.addr6.09.exit
  %_742 = call i1 @fpga_fifo_exist_1(i8* %_724)
  br i1 %_742, label %src.addr6.117.case.7, label %.exit308

src.addr6.117.case.0:                             ; preds = %.case.027
  call void @streamcpy_hls.p0struct.ap_uint.16.17(%struct.ap_uint* %dst.addr5.118, %struct.ap_uint* %src.addr6.117_0)
  br label %src.addr6.117.exit

src.addr6.117.case.1:                             ; preds = %.case.128
  call void @streamcpy_hls.p0struct.ap_uint.16.17(%struct.ap_uint* %dst.addr5.118, %struct.ap_uint* %src.addr6.117_1)
  br label %src.addr6.117.exit

src.addr6.117.case.2:                             ; preds = %.case.229
  call void @streamcpy_hls.p0struct.ap_uint.16.17(%struct.ap_uint* %dst.addr5.118, %struct.ap_uint* %src.addr6.117_2)
  br label %src.addr6.117.exit

src.addr6.117.case.3:                             ; preds = %.case.330
  call void @streamcpy_hls.p0struct.ap_uint.16.17(%struct.ap_uint* %dst.addr5.118, %struct.ap_uint* %src.addr6.117_3)
  br label %src.addr6.117.exit

src.addr6.117.case.4:                             ; preds = %.case.431
  call void @streamcpy_hls.p0struct.ap_uint.16.17(%struct.ap_uint* %dst.addr5.118, %struct.ap_uint* %src.addr6.117_4)
  br label %src.addr6.117.exit

src.addr6.117.case.5:                             ; preds = %.case.532
  call void @streamcpy_hls.p0struct.ap_uint.16.17(%struct.ap_uint* %dst.addr5.118, %struct.ap_uint* %src.addr6.117_5)
  br label %src.addr6.117.exit

src.addr6.117.case.6:                             ; preds = %.case.633
  call void @streamcpy_hls.p0struct.ap_uint.16.17(%struct.ap_uint* %dst.addr5.118, %struct.ap_uint* %src.addr6.117_6)
  br label %src.addr6.117.exit

src.addr6.117.case.7:                             ; preds = %.exit26
  call void @streamcpy_hls.p0struct.ap_uint.16.17(%struct.ap_uint* %dst.addr5.118, %struct.ap_uint* %src.addr6.117_7)
  br label %src.addr6.117.exit

.case.0309:                                       ; preds = %.case.027
  %src.addr6.1.019_0380 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_0, i64 0, i64 %for.loop.idx373, i32 1, i32 0
  %dst.addr5.1.020388 = getelementptr [8 x [4096 x %struct.dpkt_t]], [8 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 0, i64 %for.loop.idx373, i32 1, i32 0
  %_0317 = call i1 @fpga_fifo_exist_1(i8* %_017)
  br i1 %_0317, label %src.addr6.1.019.case.0, label %.case.0373

.case.1310:                                       ; preds = %.case.128
  %src.addr6.1.019_1409 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_1, i64 0, i64 %for.loop.idx373, i32 1, i32 0
  %dst.addr5.1.020416 = getelementptr [8 x [4096 x %struct.dpkt_t]], [8 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 1, i64 %for.loop.idx373, i32 1, i32 0
  %_1318 = call i1 @fpga_fifo_exist_1(i8* %_118)
  br i1 %_1318, label %src.addr6.1.019.case.1, label %.case.1374

.case.2311:                                       ; preds = %.case.229
  %src.addr6.1.019_2429 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_2, i64 0, i64 %for.loop.idx373, i32 1, i32 0
  %dst.addr5.1.020435 = getelementptr [8 x [4096 x %struct.dpkt_t]], [8 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 2, i64 %for.loop.idx373, i32 1, i32 0
  %_2319 = call i1 @fpga_fifo_exist_1(i8* %_219)
  br i1 %_2319, label %src.addr6.1.019.case.2, label %.case.2375

.case.3312:                                       ; preds = %.case.330
  %src.addr6.1.019_3449 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_3, i64 0, i64 %for.loop.idx373, i32 1, i32 0
  %dst.addr5.1.020454 = getelementptr [8 x [4096 x %struct.dpkt_t]], [8 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 3, i64 %for.loop.idx373, i32 1, i32 0
  %_3320 = call i1 @fpga_fifo_exist_1(i8* %_320)
  br i1 %_3320, label %src.addr6.1.019.case.3, label %.case.3376

.case.4313:                                       ; preds = %.case.431
  %src.addr6.1.019_4469 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_4, i64 0, i64 %for.loop.idx373, i32 1, i32 0
  %dst.addr5.1.020473 = getelementptr [8 x [4096 x %struct.dpkt_t]], [8 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 4, i64 %for.loop.idx373, i32 1, i32 0
  %_4321 = call i1 @fpga_fifo_exist_1(i8* %_421)
  br i1 %_4321, label %src.addr6.1.019.case.4, label %.case.4377

.case.5314:                                       ; preds = %.case.532
  %src.addr6.1.019_5489 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_5, i64 0, i64 %for.loop.idx373, i32 1, i32 0
  %dst.addr5.1.020492 = getelementptr [8 x [4096 x %struct.dpkt_t]], [8 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 5, i64 %for.loop.idx373, i32 1, i32 0
  %_5322 = call i1 @fpga_fifo_exist_1(i8* %_522)
  br i1 %_5322, label %src.addr6.1.019.case.5, label %.case.5378

.case.6315:                                       ; preds = %.case.633
  %src.addr6.1.019_6509 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_6, i64 0, i64 %for.loop.idx373, i32 1, i32 0
  %dst.addr5.1.020511 = getelementptr [8 x [4096 x %struct.dpkt_t]], [8 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 6, i64 %for.loop.idx373, i32 1, i32 0
  %_6323 = call i1 @fpga_fifo_exist_1(i8* %_623)
  br i1 %_6323, label %src.addr6.1.019.case.6, label %.case.6379

.exit308:                                         ; preds = %.exit26
  %src.addr6.1.019_7 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_7, i64 0, i64 %for.loop.idx373, i32 1, i32 0
  %dst.addr5.1.020 = getelementptr [8 x [4096 x %struct.dpkt_t]], [8 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 7, i64 %for.loop.idx373, i32 1, i32 0
  %_7324 = call i1 @fpga_fifo_exist_1(i8* %_724)
  br i1 %_7324, label %src.addr6.1.019.case.7, label %.exit372

src.addr6.1.019.case.0:                           ; preds = %.case.0309
  call void @streamcpy_hls.p0struct.ap_int_base.18.19(%struct.ap_int_base* %dst.addr5.1.020388, %struct.ap_int_base* %src.addr6.1.019_0380)
  br label %src.addr6.117.exit

src.addr6.1.019.case.1:                           ; preds = %.case.1310
  call void @streamcpy_hls.p0struct.ap_int_base.18.19(%struct.ap_int_base* %dst.addr5.1.020416, %struct.ap_int_base* %src.addr6.1.019_1409)
  br label %src.addr6.117.exit

src.addr6.1.019.case.2:                           ; preds = %.case.2311
  call void @streamcpy_hls.p0struct.ap_int_base.18.19(%struct.ap_int_base* %dst.addr5.1.020435, %struct.ap_int_base* %src.addr6.1.019_2429)
  br label %src.addr6.117.exit

src.addr6.1.019.case.3:                           ; preds = %.case.3312
  call void @streamcpy_hls.p0struct.ap_int_base.18.19(%struct.ap_int_base* %dst.addr5.1.020454, %struct.ap_int_base* %src.addr6.1.019_3449)
  br label %src.addr6.117.exit

src.addr6.1.019.case.4:                           ; preds = %.case.4313
  call void @streamcpy_hls.p0struct.ap_int_base.18.19(%struct.ap_int_base* %dst.addr5.1.020473, %struct.ap_int_base* %src.addr6.1.019_4469)
  br label %src.addr6.117.exit

src.addr6.1.019.case.5:                           ; preds = %.case.5314
  call void @streamcpy_hls.p0struct.ap_int_base.18.19(%struct.ap_int_base* %dst.addr5.1.020492, %struct.ap_int_base* %src.addr6.1.019_5489)
  br label %src.addr6.117.exit

src.addr6.1.019.case.6:                           ; preds = %.case.6315
  call void @streamcpy_hls.p0struct.ap_int_base.18.19(%struct.ap_int_base* %dst.addr5.1.020511, %struct.ap_int_base* %src.addr6.1.019_6509)
  br label %src.addr6.117.exit

src.addr6.1.019.case.7:                           ; preds = %.exit308
  call void @streamcpy_hls.p0struct.ap_int_base.18.19(%struct.ap_int_base* %dst.addr5.1.020, %struct.ap_int_base* %src.addr6.1.019_7)
  br label %src.addr6.117.exit

.case.0373:                                       ; preds = %.case.0309
  %src.addr6.1.0.021_0552 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_0, i64 0, i64 %for.loop.idx373, i32 1, i32 0, i32 0
  %dst.addr5.1.0.022560 = getelementptr [8 x [4096 x %struct.dpkt_t]], [8 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 0, i64 %for.loop.idx373, i32 1, i32 0, i32 0
  %_0381 = call i1 @fpga_fifo_exist_1(i8* %_017)
  br i1 %_0381, label %src.addr6.1.0.021.case.0, label %.case.0391

.case.1374:                                       ; preds = %.case.1310
  %src.addr6.1.0.021_1581 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_1, i64 0, i64 %for.loop.idx373, i32 1, i32 0, i32 0
  %dst.addr5.1.0.022588 = getelementptr [8 x [4096 x %struct.dpkt_t]], [8 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 1, i64 %for.loop.idx373, i32 1, i32 0, i32 0
  %_1382 = call i1 @fpga_fifo_exist_1(i8* %_118)
  br i1 %_1382, label %src.addr6.1.0.021.case.1, label %.case.1392

.case.2375:                                       ; preds = %.case.2311
  %src.addr6.1.0.021_2601 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_2, i64 0, i64 %for.loop.idx373, i32 1, i32 0, i32 0
  %dst.addr5.1.0.022607 = getelementptr [8 x [4096 x %struct.dpkt_t]], [8 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 2, i64 %for.loop.idx373, i32 1, i32 0, i32 0
  %_2383 = call i1 @fpga_fifo_exist_1(i8* %_219)
  br i1 %_2383, label %src.addr6.1.0.021.case.2, label %.case.2393

.case.3376:                                       ; preds = %.case.3312
  %src.addr6.1.0.021_3621 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_3, i64 0, i64 %for.loop.idx373, i32 1, i32 0, i32 0
  %dst.addr5.1.0.022626 = getelementptr [8 x [4096 x %struct.dpkt_t]], [8 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 3, i64 %for.loop.idx373, i32 1, i32 0, i32 0
  %_3384 = call i1 @fpga_fifo_exist_1(i8* %_320)
  br i1 %_3384, label %src.addr6.1.0.021.case.3, label %.case.3394

.case.4377:                                       ; preds = %.case.4313
  %src.addr6.1.0.021_4641 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_4, i64 0, i64 %for.loop.idx373, i32 1, i32 0, i32 0
  %dst.addr5.1.0.022645 = getelementptr [8 x [4096 x %struct.dpkt_t]], [8 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 4, i64 %for.loop.idx373, i32 1, i32 0, i32 0
  %_4385 = call i1 @fpga_fifo_exist_1(i8* %_421)
  br i1 %_4385, label %src.addr6.1.0.021.case.4, label %.case.4395

.case.5378:                                       ; preds = %.case.5314
  %src.addr6.1.0.021_5661 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_5, i64 0, i64 %for.loop.idx373, i32 1, i32 0, i32 0
  %dst.addr5.1.0.022664 = getelementptr [8 x [4096 x %struct.dpkt_t]], [8 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 5, i64 %for.loop.idx373, i32 1, i32 0, i32 0
  %_5386 = call i1 @fpga_fifo_exist_1(i8* %_522)
  br i1 %_5386, label %src.addr6.1.0.021.case.5, label %.case.5396

.case.6379:                                       ; preds = %.case.6315
  %src.addr6.1.0.021_6681 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_6, i64 0, i64 %for.loop.idx373, i32 1, i32 0, i32 0
  %dst.addr5.1.0.022683 = getelementptr [8 x [4096 x %struct.dpkt_t]], [8 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 6, i64 %for.loop.idx373, i32 1, i32 0, i32 0
  %_6387 = call i1 @fpga_fifo_exist_1(i8* %_623)
  br i1 %_6387, label %src.addr6.1.0.021.case.6, label %.case.6397

.exit372:                                         ; preds = %.exit308
  %src.addr6.1.0.021_7 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_7, i64 0, i64 %for.loop.idx373, i32 1, i32 0, i32 0
  %dst.addr5.1.0.022 = getelementptr [8 x [4096 x %struct.dpkt_t]], [8 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 7, i64 %for.loop.idx373, i32 1, i32 0, i32 0
  %_7388 = call i1 @fpga_fifo_exist_1(i8* %_724)
  br i1 %_7388, label %src.addr6.1.0.021.case.7, label %.case.7398

src.addr6.1.0.021.case.0:                         ; preds = %.case.0373
  call void @streamcpy_hls.p0struct.ssdm_int.20.21(%struct.ssdm_int* %dst.addr5.1.0.022560, %struct.ssdm_int* %src.addr6.1.0.021_0552)
  br label %src.addr6.117.exit

src.addr6.1.0.021.case.1:                         ; preds = %.case.1374
  call void @streamcpy_hls.p0struct.ssdm_int.20.21(%struct.ssdm_int* %dst.addr5.1.0.022588, %struct.ssdm_int* %src.addr6.1.0.021_1581)
  br label %src.addr6.117.exit

src.addr6.1.0.021.case.2:                         ; preds = %.case.2375
  call void @streamcpy_hls.p0struct.ssdm_int.20.21(%struct.ssdm_int* %dst.addr5.1.0.022607, %struct.ssdm_int* %src.addr6.1.0.021_2601)
  br label %src.addr6.117.exit

src.addr6.1.0.021.case.3:                         ; preds = %.case.3376
  call void @streamcpy_hls.p0struct.ssdm_int.20.21(%struct.ssdm_int* %dst.addr5.1.0.022626, %struct.ssdm_int* %src.addr6.1.0.021_3621)
  br label %src.addr6.117.exit

src.addr6.1.0.021.case.4:                         ; preds = %.case.4377
  call void @streamcpy_hls.p0struct.ssdm_int.20.21(%struct.ssdm_int* %dst.addr5.1.0.022645, %struct.ssdm_int* %src.addr6.1.0.021_4641)
  br label %src.addr6.117.exit

src.addr6.1.0.021.case.5:                         ; preds = %.case.5378
  call void @streamcpy_hls.p0struct.ssdm_int.20.21(%struct.ssdm_int* %dst.addr5.1.0.022664, %struct.ssdm_int* %src.addr6.1.0.021_5661)
  br label %src.addr6.117.exit

src.addr6.1.0.021.case.6:                         ; preds = %.case.6379
  call void @streamcpy_hls.p0struct.ssdm_int.20.21(%struct.ssdm_int* %dst.addr5.1.0.022683, %struct.ssdm_int* %src.addr6.1.0.021_6681)
  br label %src.addr6.117.exit

src.addr6.1.0.021.case.7:                         ; preds = %.exit372
  call void @streamcpy_hls.p0struct.ssdm_int.20.21(%struct.ssdm_int* %dst.addr5.1.0.022, %struct.ssdm_int* %src.addr6.1.0.021_7)
  br label %src.addr6.117.exit

.case.0391:                                       ; preds = %.case.0373
  %dst.addr5.1.0.0.024724 = getelementptr [8 x [4096 x %struct.dpkt_t]], [8 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 0, i64 %for.loop.idx373, i32 1, i32 0, i32 0, i32 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr5.1.0.0.024724, i8* align 1 %_017, i64 1, i1 false)
  br label %src.addr6.117.exit

.case.1392:                                       ; preds = %.case.1374
  %dst.addr5.1.0.0.024727 = getelementptr [8 x [4096 x %struct.dpkt_t]], [8 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 1, i64 %for.loop.idx373, i32 1, i32 0, i32 0, i32 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr5.1.0.0.024727, i8* align 1 %_118, i64 1, i1 false)
  br label %src.addr6.117.exit

.case.2393:                                       ; preds = %.case.2375
  %dst.addr5.1.0.0.024730 = getelementptr [8 x [4096 x %struct.dpkt_t]], [8 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 2, i64 %for.loop.idx373, i32 1, i32 0, i32 0, i32 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr5.1.0.0.024730, i8* align 1 %_219, i64 1, i1 false)
  br label %src.addr6.117.exit

.case.3394:                                       ; preds = %.case.3376
  %dst.addr5.1.0.0.024733 = getelementptr [8 x [4096 x %struct.dpkt_t]], [8 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 3, i64 %for.loop.idx373, i32 1, i32 0, i32 0, i32 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr5.1.0.0.024733, i8* align 1 %_320, i64 1, i1 false)
  br label %src.addr6.117.exit

.case.4395:                                       ; preds = %.case.4377
  %dst.addr5.1.0.0.024736 = getelementptr [8 x [4096 x %struct.dpkt_t]], [8 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 4, i64 %for.loop.idx373, i32 1, i32 0, i32 0, i32 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr5.1.0.0.024736, i8* align 1 %_421, i64 1, i1 false)
  br label %src.addr6.117.exit

.case.5396:                                       ; preds = %.case.5378
  %dst.addr5.1.0.0.024739 = getelementptr [8 x [4096 x %struct.dpkt_t]], [8 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 5, i64 %for.loop.idx373, i32 1, i32 0, i32 0, i32 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr5.1.0.0.024739, i8* align 1 %_522, i64 1, i1 false)
  br label %src.addr6.117.exit

.case.6397:                                       ; preds = %.case.6379
  %dst.addr5.1.0.0.024742 = getelementptr [8 x [4096 x %struct.dpkt_t]], [8 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 6, i64 %for.loop.idx373, i32 1, i32 0, i32 0, i32 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr5.1.0.0.024742, i8* align 1 %_623, i64 1, i1 false)
  br label %src.addr6.117.exit

.case.7398:                                       ; preds = %.exit372
  %dst.addr5.1.0.0.024 = getelementptr [8 x [4096 x %struct.dpkt_t]], [8 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 7, i64 %for.loop.idx373, i32 1, i32 0, i32 0, i32 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr5.1.0.0.024, i8* align 1 %_724, i64 1, i1 false)
  br label %src.addr6.117.exit

src.addr6.117.exit:                               ; preds = %.case.7398, %.case.6397, %.case.5396, %.case.4395, %.case.3394, %.case.2393, %.case.1392, %.case.0391, %src.addr6.1.0.021.case.7, %src.addr6.1.0.021.case.6, %src.addr6.1.0.021.case.5, %src.addr6.1.0.021.case.4, %src.addr6.1.0.021.case.3, %src.addr6.1.0.021.case.2, %src.addr6.1.0.021.case.1, %src.addr6.1.0.021.case.0, %src.addr6.1.019.case.7, %src.addr6.1.019.case.6, %src.addr6.1.019.case.5, %src.addr6.1.019.case.4, %src.addr6.1.019.case.3, %src.addr6.1.019.case.2, %src.addr6.1.019.case.1, %src.addr6.1.019.case.0, %src.addr6.117.case.7, %src.addr6.117.case.6, %src.addr6.117.case.5, %src.addr6.117.case.4, %src.addr6.117.case.3, %src.addr6.117.case.2, %src.addr6.117.case.1, %src.addr6.117.case.0
  %src.addr6.225_0 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_0, i64 0, i64 %for.loop.idx373, i32 2
  %src.addr6.225_1 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_1, i64 0, i64 %for.loop.idx373, i32 2
  %src.addr6.225_2 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_2, i64 0, i64 %for.loop.idx373, i32 2
  %src.addr6.225_3 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_3, i64 0, i64 %for.loop.idx373, i32 2
  %src.addr6.225_4 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_4, i64 0, i64 %for.loop.idx373, i32 2
  %src.addr6.225_5 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_5, i64 0, i64 %for.loop.idx373, i32 2
  %src.addr6.225_6 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_6, i64 0, i64 %for.loop.idx373, i32 2
  %src.addr6.225_7 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_7, i64 0, i64 %for.loop.idx373, i32 2
  %dst.addr5.226 = getelementptr [8 x [4096 x %struct.dpkt_t]], [8 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 %for.loop.idx74, i64 %for.loop.idx373, i32 2
  %_043 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_0, i64 0, i64 %for.loop.idx373, i32 2, i32 0, i32 0, i32 0
  %_144 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_1, i64 0, i64 %for.loop.idx373, i32 2, i32 0, i32 0, i32 0
  %_245 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_2, i64 0, i64 %for.loop.idx373, i32 2, i32 0, i32 0, i32 0
  %_346 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_3, i64 0, i64 %for.loop.idx373, i32 2, i32 0, i32 0, i32 0
  %_447 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_4, i64 0, i64 %for.loop.idx373, i32 2, i32 0, i32 0, i32 0
  %_548 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_5, i64 0, i64 %for.loop.idx373, i32 2, i32 0, i32 0, i32 0
  %_649 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_6, i64 0, i64 %for.loop.idx373, i32 2, i32 0, i32 0, i32 0
  %_750 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_7, i64 0, i64 %for.loop.idx373, i32 2, i32 0, i32 0, i32 0
  switch i64 %for.loop.idx74, label %.default51 [
    i64 0, label %.case.053
    i64 1, label %.case.154
    i64 2, label %.case.255
    i64 3, label %.case.356
    i64 4, label %.case.457
    i64 5, label %.case.558
    i64 6, label %.case.659
    i64 7, label %.exit52
  ]

.default51:                                       ; preds = %src.addr6.117.exit
  unreachable

.case.053:                                        ; preds = %src.addr6.117.exit
  %_061 = call i1 @fpga_fifo_exist_1(i8* %_043)
  br i1 %_061, label %src.addr6.225.case.0, label %.case.0291

.case.154:                                        ; preds = %src.addr6.117.exit
  %_162 = call i1 @fpga_fifo_exist_1(i8* %_144)
  br i1 %_162, label %src.addr6.225.case.1, label %.case.1292

.case.255:                                        ; preds = %src.addr6.117.exit
  %_263 = call i1 @fpga_fifo_exist_1(i8* %_245)
  br i1 %_263, label %src.addr6.225.case.2, label %.case.2293

.case.356:                                        ; preds = %src.addr6.117.exit
  %_364 = call i1 @fpga_fifo_exist_1(i8* %_346)
  br i1 %_364, label %src.addr6.225.case.3, label %.case.3294

.case.457:                                        ; preds = %src.addr6.117.exit
  %_465 = call i1 @fpga_fifo_exist_1(i8* %_447)
  br i1 %_465, label %src.addr6.225.case.4, label %.case.4295

.case.558:                                        ; preds = %src.addr6.117.exit
  %_566 = call i1 @fpga_fifo_exist_1(i8* %_548)
  br i1 %_566, label %src.addr6.225.case.5, label %.case.5296

.case.659:                                        ; preds = %src.addr6.117.exit
  %_667 = call i1 @fpga_fifo_exist_1(i8* %_649)
  br i1 %_667, label %src.addr6.225.case.6, label %.case.6297

.exit52:                                          ; preds = %src.addr6.117.exit
  %_768 = call i1 @fpga_fifo_exist_1(i8* %_750)
  br i1 %_768, label %src.addr6.225.case.7, label %.exit290

src.addr6.225.case.0:                             ; preds = %.case.053
  call void @streamcpy_hls.p0struct.ap_uint.16.17(%struct.ap_uint* %dst.addr5.226, %struct.ap_uint* %src.addr6.225_0)
  br label %src.addr6.225.exit

src.addr6.225.case.1:                             ; preds = %.case.154
  call void @streamcpy_hls.p0struct.ap_uint.16.17(%struct.ap_uint* %dst.addr5.226, %struct.ap_uint* %src.addr6.225_1)
  br label %src.addr6.225.exit

src.addr6.225.case.2:                             ; preds = %.case.255
  call void @streamcpy_hls.p0struct.ap_uint.16.17(%struct.ap_uint* %dst.addr5.226, %struct.ap_uint* %src.addr6.225_2)
  br label %src.addr6.225.exit

src.addr6.225.case.3:                             ; preds = %.case.356
  call void @streamcpy_hls.p0struct.ap_uint.16.17(%struct.ap_uint* %dst.addr5.226, %struct.ap_uint* %src.addr6.225_3)
  br label %src.addr6.225.exit

src.addr6.225.case.4:                             ; preds = %.case.457
  call void @streamcpy_hls.p0struct.ap_uint.16.17(%struct.ap_uint* %dst.addr5.226, %struct.ap_uint* %src.addr6.225_4)
  br label %src.addr6.225.exit

src.addr6.225.case.5:                             ; preds = %.case.558
  call void @streamcpy_hls.p0struct.ap_uint.16.17(%struct.ap_uint* %dst.addr5.226, %struct.ap_uint* %src.addr6.225_5)
  br label %src.addr6.225.exit

src.addr6.225.case.6:                             ; preds = %.case.659
  call void @streamcpy_hls.p0struct.ap_uint.16.17(%struct.ap_uint* %dst.addr5.226, %struct.ap_uint* %src.addr6.225_6)
  br label %src.addr6.225.exit

src.addr6.225.case.7:                             ; preds = %.exit52
  call void @streamcpy_hls.p0struct.ap_uint.16.17(%struct.ap_uint* %dst.addr5.226, %struct.ap_uint* %src.addr6.225_7)
  br label %src.addr6.225.exit

.case.0291:                                       ; preds = %.case.053
  %src.addr6.2.027_0752 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_0, i64 0, i64 %for.loop.idx373, i32 2, i32 0
  %dst.addr5.2.028760 = getelementptr [8 x [4096 x %struct.dpkt_t]], [8 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 0, i64 %for.loop.idx373, i32 2, i32 0
  %_0299 = call i1 @fpga_fifo_exist_1(i8* %_043)
  br i1 %_0299, label %src.addr6.2.027.case.0, label %.case.0401

.case.1292:                                       ; preds = %.case.154
  %src.addr6.2.027_1781 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_1, i64 0, i64 %for.loop.idx373, i32 2, i32 0
  %dst.addr5.2.028788 = getelementptr [8 x [4096 x %struct.dpkt_t]], [8 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 1, i64 %for.loop.idx373, i32 2, i32 0
  %_1300 = call i1 @fpga_fifo_exist_1(i8* %_144)
  br i1 %_1300, label %src.addr6.2.027.case.1, label %.case.1402

.case.2293:                                       ; preds = %.case.255
  %src.addr6.2.027_2801 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_2, i64 0, i64 %for.loop.idx373, i32 2, i32 0
  %dst.addr5.2.028807 = getelementptr [8 x [4096 x %struct.dpkt_t]], [8 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 2, i64 %for.loop.idx373, i32 2, i32 0
  %_2301 = call i1 @fpga_fifo_exist_1(i8* %_245)
  br i1 %_2301, label %src.addr6.2.027.case.2, label %.case.2403

.case.3294:                                       ; preds = %.case.356
  %src.addr6.2.027_3821 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_3, i64 0, i64 %for.loop.idx373, i32 2, i32 0
  %dst.addr5.2.028826 = getelementptr [8 x [4096 x %struct.dpkt_t]], [8 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 3, i64 %for.loop.idx373, i32 2, i32 0
  %_3302 = call i1 @fpga_fifo_exist_1(i8* %_346)
  br i1 %_3302, label %src.addr6.2.027.case.3, label %.case.3404

.case.4295:                                       ; preds = %.case.457
  %src.addr6.2.027_4841 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_4, i64 0, i64 %for.loop.idx373, i32 2, i32 0
  %dst.addr5.2.028845 = getelementptr [8 x [4096 x %struct.dpkt_t]], [8 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 4, i64 %for.loop.idx373, i32 2, i32 0
  %_4303 = call i1 @fpga_fifo_exist_1(i8* %_447)
  br i1 %_4303, label %src.addr6.2.027.case.4, label %.case.4405

.case.5296:                                       ; preds = %.case.558
  %src.addr6.2.027_5861 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_5, i64 0, i64 %for.loop.idx373, i32 2, i32 0
  %dst.addr5.2.028864 = getelementptr [8 x [4096 x %struct.dpkt_t]], [8 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 5, i64 %for.loop.idx373, i32 2, i32 0
  %_5304 = call i1 @fpga_fifo_exist_1(i8* %_548)
  br i1 %_5304, label %src.addr6.2.027.case.5, label %.case.5406

.case.6297:                                       ; preds = %.case.659
  %src.addr6.2.027_6881 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_6, i64 0, i64 %for.loop.idx373, i32 2, i32 0
  %dst.addr5.2.028883 = getelementptr [8 x [4096 x %struct.dpkt_t]], [8 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 6, i64 %for.loop.idx373, i32 2, i32 0
  %_6305 = call i1 @fpga_fifo_exist_1(i8* %_649)
  br i1 %_6305, label %src.addr6.2.027.case.6, label %.case.6407

.exit290:                                         ; preds = %.exit52
  %src.addr6.2.027_7 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_7, i64 0, i64 %for.loop.idx373, i32 2, i32 0
  %dst.addr5.2.028 = getelementptr [8 x [4096 x %struct.dpkt_t]], [8 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 7, i64 %for.loop.idx373, i32 2, i32 0
  %_7306 = call i1 @fpga_fifo_exist_1(i8* %_750)
  br i1 %_7306, label %src.addr6.2.027.case.7, label %.exit400

src.addr6.2.027.case.0:                           ; preds = %.case.0291
  call void @streamcpy_hls.p0struct.ap_int_base.18.19(%struct.ap_int_base* %dst.addr5.2.028760, %struct.ap_int_base* %src.addr6.2.027_0752)
  br label %src.addr6.225.exit

src.addr6.2.027.case.1:                           ; preds = %.case.1292
  call void @streamcpy_hls.p0struct.ap_int_base.18.19(%struct.ap_int_base* %dst.addr5.2.028788, %struct.ap_int_base* %src.addr6.2.027_1781)
  br label %src.addr6.225.exit

src.addr6.2.027.case.2:                           ; preds = %.case.2293
  call void @streamcpy_hls.p0struct.ap_int_base.18.19(%struct.ap_int_base* %dst.addr5.2.028807, %struct.ap_int_base* %src.addr6.2.027_2801)
  br label %src.addr6.225.exit

src.addr6.2.027.case.3:                           ; preds = %.case.3294
  call void @streamcpy_hls.p0struct.ap_int_base.18.19(%struct.ap_int_base* %dst.addr5.2.028826, %struct.ap_int_base* %src.addr6.2.027_3821)
  br label %src.addr6.225.exit

src.addr6.2.027.case.4:                           ; preds = %.case.4295
  call void @streamcpy_hls.p0struct.ap_int_base.18.19(%struct.ap_int_base* %dst.addr5.2.028845, %struct.ap_int_base* %src.addr6.2.027_4841)
  br label %src.addr6.225.exit

src.addr6.2.027.case.5:                           ; preds = %.case.5296
  call void @streamcpy_hls.p0struct.ap_int_base.18.19(%struct.ap_int_base* %dst.addr5.2.028864, %struct.ap_int_base* %src.addr6.2.027_5861)
  br label %src.addr6.225.exit

src.addr6.2.027.case.6:                           ; preds = %.case.6297
  call void @streamcpy_hls.p0struct.ap_int_base.18.19(%struct.ap_int_base* %dst.addr5.2.028883, %struct.ap_int_base* %src.addr6.2.027_6881)
  br label %src.addr6.225.exit

src.addr6.2.027.case.7:                           ; preds = %.exit290
  call void @streamcpy_hls.p0struct.ap_int_base.18.19(%struct.ap_int_base* %dst.addr5.2.028, %struct.ap_int_base* %src.addr6.2.027_7)
  br label %src.addr6.225.exit

.case.0401:                                       ; preds = %.case.0291
  %src.addr6.2.0.029_0924 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_0, i64 0, i64 %for.loop.idx373, i32 2, i32 0, i32 0
  %dst.addr5.2.0.030932 = getelementptr [8 x [4096 x %struct.dpkt_t]], [8 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 0, i64 %for.loop.idx373, i32 2, i32 0, i32 0
  %_0409 = call i1 @fpga_fifo_exist_1(i8* %_043)
  br i1 %_0409, label %src.addr6.2.0.029.case.0, label %.case.0419

.case.1402:                                       ; preds = %.case.1292
  %src.addr6.2.0.029_1953 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_1, i64 0, i64 %for.loop.idx373, i32 2, i32 0, i32 0
  %dst.addr5.2.0.030960 = getelementptr [8 x [4096 x %struct.dpkt_t]], [8 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 1, i64 %for.loop.idx373, i32 2, i32 0, i32 0
  %_1410 = call i1 @fpga_fifo_exist_1(i8* %_144)
  br i1 %_1410, label %src.addr6.2.0.029.case.1, label %.case.1420

.case.2403:                                       ; preds = %.case.2293
  %src.addr6.2.0.029_2973 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_2, i64 0, i64 %for.loop.idx373, i32 2, i32 0, i32 0
  %dst.addr5.2.0.030979 = getelementptr [8 x [4096 x %struct.dpkt_t]], [8 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 2, i64 %for.loop.idx373, i32 2, i32 0, i32 0
  %_2411 = call i1 @fpga_fifo_exist_1(i8* %_245)
  br i1 %_2411, label %src.addr6.2.0.029.case.2, label %.case.2421

.case.3404:                                       ; preds = %.case.3294
  %src.addr6.2.0.029_3993 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_3, i64 0, i64 %for.loop.idx373, i32 2, i32 0, i32 0
  %dst.addr5.2.0.030998 = getelementptr [8 x [4096 x %struct.dpkt_t]], [8 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 3, i64 %for.loop.idx373, i32 2, i32 0, i32 0
  %_3412 = call i1 @fpga_fifo_exist_1(i8* %_346)
  br i1 %_3412, label %src.addr6.2.0.029.case.3, label %.case.3422

.case.4405:                                       ; preds = %.case.4295
  %src.addr6.2.0.029_41013 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_4, i64 0, i64 %for.loop.idx373, i32 2, i32 0, i32 0
  %dst.addr5.2.0.0301017 = getelementptr [8 x [4096 x %struct.dpkt_t]], [8 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 4, i64 %for.loop.idx373, i32 2, i32 0, i32 0
  %_4413 = call i1 @fpga_fifo_exist_1(i8* %_447)
  br i1 %_4413, label %src.addr6.2.0.029.case.4, label %.case.4423

.case.5406:                                       ; preds = %.case.5296
  %src.addr6.2.0.029_51033 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_5, i64 0, i64 %for.loop.idx373, i32 2, i32 0, i32 0
  %dst.addr5.2.0.0301036 = getelementptr [8 x [4096 x %struct.dpkt_t]], [8 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 5, i64 %for.loop.idx373, i32 2, i32 0, i32 0
  %_5414 = call i1 @fpga_fifo_exist_1(i8* %_548)
  br i1 %_5414, label %src.addr6.2.0.029.case.5, label %.case.5424

.case.6407:                                       ; preds = %.case.6297
  %src.addr6.2.0.029_61053 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_6, i64 0, i64 %for.loop.idx373, i32 2, i32 0, i32 0
  %dst.addr5.2.0.0301055 = getelementptr [8 x [4096 x %struct.dpkt_t]], [8 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 6, i64 %for.loop.idx373, i32 2, i32 0, i32 0
  %_6415 = call i1 @fpga_fifo_exist_1(i8* %_649)
  br i1 %_6415, label %src.addr6.2.0.029.case.6, label %.case.6425

.exit400:                                         ; preds = %.exit290
  %src.addr6.2.0.029_7 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_7, i64 0, i64 %for.loop.idx373, i32 2, i32 0, i32 0
  %dst.addr5.2.0.030 = getelementptr [8 x [4096 x %struct.dpkt_t]], [8 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 7, i64 %for.loop.idx373, i32 2, i32 0, i32 0
  %_7416 = call i1 @fpga_fifo_exist_1(i8* %_750)
  br i1 %_7416, label %src.addr6.2.0.029.case.7, label %.case.7426

src.addr6.2.0.029.case.0:                         ; preds = %.case.0401
  call void @streamcpy_hls.p0struct.ssdm_int.20.21(%struct.ssdm_int* %dst.addr5.2.0.030932, %struct.ssdm_int* %src.addr6.2.0.029_0924)
  br label %src.addr6.225.exit

src.addr6.2.0.029.case.1:                         ; preds = %.case.1402
  call void @streamcpy_hls.p0struct.ssdm_int.20.21(%struct.ssdm_int* %dst.addr5.2.0.030960, %struct.ssdm_int* %src.addr6.2.0.029_1953)
  br label %src.addr6.225.exit

src.addr6.2.0.029.case.2:                         ; preds = %.case.2403
  call void @streamcpy_hls.p0struct.ssdm_int.20.21(%struct.ssdm_int* %dst.addr5.2.0.030979, %struct.ssdm_int* %src.addr6.2.0.029_2973)
  br label %src.addr6.225.exit

src.addr6.2.0.029.case.3:                         ; preds = %.case.3404
  call void @streamcpy_hls.p0struct.ssdm_int.20.21(%struct.ssdm_int* %dst.addr5.2.0.030998, %struct.ssdm_int* %src.addr6.2.0.029_3993)
  br label %src.addr6.225.exit

src.addr6.2.0.029.case.4:                         ; preds = %.case.4405
  call void @streamcpy_hls.p0struct.ssdm_int.20.21(%struct.ssdm_int* %dst.addr5.2.0.0301017, %struct.ssdm_int* %src.addr6.2.0.029_41013)
  br label %src.addr6.225.exit

src.addr6.2.0.029.case.5:                         ; preds = %.case.5406
  call void @streamcpy_hls.p0struct.ssdm_int.20.21(%struct.ssdm_int* %dst.addr5.2.0.0301036, %struct.ssdm_int* %src.addr6.2.0.029_51033)
  br label %src.addr6.225.exit

src.addr6.2.0.029.case.6:                         ; preds = %.case.6407
  call void @streamcpy_hls.p0struct.ssdm_int.20.21(%struct.ssdm_int* %dst.addr5.2.0.0301055, %struct.ssdm_int* %src.addr6.2.0.029_61053)
  br label %src.addr6.225.exit

src.addr6.2.0.029.case.7:                         ; preds = %.exit400
  call void @streamcpy_hls.p0struct.ssdm_int.20.21(%struct.ssdm_int* %dst.addr5.2.0.030, %struct.ssdm_int* %src.addr6.2.0.029_7)
  br label %src.addr6.225.exit

.case.0419:                                       ; preds = %.case.0401
  %dst.addr5.2.0.0.0321096 = getelementptr [8 x [4096 x %struct.dpkt_t]], [8 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 0, i64 %for.loop.idx373, i32 2, i32 0, i32 0, i32 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr5.2.0.0.0321096, i8* align 1 %_043, i64 1, i1 false)
  br label %src.addr6.225.exit

.case.1420:                                       ; preds = %.case.1402
  %dst.addr5.2.0.0.0321099 = getelementptr [8 x [4096 x %struct.dpkt_t]], [8 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 1, i64 %for.loop.idx373, i32 2, i32 0, i32 0, i32 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr5.2.0.0.0321099, i8* align 1 %_144, i64 1, i1 false)
  br label %src.addr6.225.exit

.case.2421:                                       ; preds = %.case.2403
  %dst.addr5.2.0.0.0321102 = getelementptr [8 x [4096 x %struct.dpkt_t]], [8 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 2, i64 %for.loop.idx373, i32 2, i32 0, i32 0, i32 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr5.2.0.0.0321102, i8* align 1 %_245, i64 1, i1 false)
  br label %src.addr6.225.exit

.case.3422:                                       ; preds = %.case.3404
  %dst.addr5.2.0.0.0321105 = getelementptr [8 x [4096 x %struct.dpkt_t]], [8 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 3, i64 %for.loop.idx373, i32 2, i32 0, i32 0, i32 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr5.2.0.0.0321105, i8* align 1 %_346, i64 1, i1 false)
  br label %src.addr6.225.exit

.case.4423:                                       ; preds = %.case.4405
  %dst.addr5.2.0.0.0321108 = getelementptr [8 x [4096 x %struct.dpkt_t]], [8 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 4, i64 %for.loop.idx373, i32 2, i32 0, i32 0, i32 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr5.2.0.0.0321108, i8* align 1 %_447, i64 1, i1 false)
  br label %src.addr6.225.exit

.case.5424:                                       ; preds = %.case.5406
  %dst.addr5.2.0.0.0321111 = getelementptr [8 x [4096 x %struct.dpkt_t]], [8 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 5, i64 %for.loop.idx373, i32 2, i32 0, i32 0, i32 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr5.2.0.0.0321111, i8* align 1 %_548, i64 1, i1 false)
  br label %src.addr6.225.exit

.case.6425:                                       ; preds = %.case.6407
  %dst.addr5.2.0.0.0321114 = getelementptr [8 x [4096 x %struct.dpkt_t]], [8 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 6, i64 %for.loop.idx373, i32 2, i32 0, i32 0, i32 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr5.2.0.0.0321114, i8* align 1 %_649, i64 1, i1 false)
  br label %src.addr6.225.exit

.case.7426:                                       ; preds = %.exit400
  %dst.addr5.2.0.0.032 = getelementptr [8 x [4096 x %struct.dpkt_t]], [8 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 7, i64 %for.loop.idx373, i32 2, i32 0, i32 0, i32 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr5.2.0.0.032, i8* align 1 %_750, i64 1, i1 false)
  br label %src.addr6.225.exit

src.addr6.225.exit:                               ; preds = %.case.7426, %.case.6425, %.case.5424, %.case.4423, %.case.3422, %.case.2421, %.case.1420, %.case.0419, %src.addr6.2.0.029.case.7, %src.addr6.2.0.029.case.6, %src.addr6.2.0.029.case.5, %src.addr6.2.0.029.case.4, %src.addr6.2.0.029.case.3, %src.addr6.2.0.029.case.2, %src.addr6.2.0.029.case.1, %src.addr6.2.0.029.case.0, %src.addr6.2.027.case.7, %src.addr6.2.027.case.6, %src.addr6.2.027.case.5, %src.addr6.2.027.case.4, %src.addr6.2.027.case.3, %src.addr6.2.027.case.2, %src.addr6.2.027.case.1, %src.addr6.2.027.case.0, %src.addr6.225.case.7, %src.addr6.225.case.6, %src.addr6.225.case.5, %src.addr6.225.case.4, %src.addr6.225.case.3, %src.addr6.225.case.2, %src.addr6.225.case.1, %src.addr6.225.case.0
  %src.addr6.333_0 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_0, i64 0, i64 %for.loop.idx373, i32 3
  %src.addr6.333_1 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_1, i64 0, i64 %for.loop.idx373, i32 3
  %src.addr6.333_2 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_2, i64 0, i64 %for.loop.idx373, i32 3
  %src.addr6.333_3 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_3, i64 0, i64 %for.loop.idx373, i32 3
  %src.addr6.333_4 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_4, i64 0, i64 %for.loop.idx373, i32 3
  %src.addr6.333_5 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_5, i64 0, i64 %for.loop.idx373, i32 3
  %src.addr6.333_6 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_6, i64 0, i64 %for.loop.idx373, i32 3
  %src.addr6.333_7 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_7, i64 0, i64 %for.loop.idx373, i32 3
  %dst.addr5.334 = getelementptr [8 x [4096 x %struct.dpkt_t]], [8 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 %for.loop.idx74, i64 %for.loop.idx373, i32 3
  %_069 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_0, i64 0, i64 %for.loop.idx373, i32 3, i32 0, i32 0, i32 0
  %_170 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_1, i64 0, i64 %for.loop.idx373, i32 3, i32 0, i32 0, i32 0
  %_271 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_2, i64 0, i64 %for.loop.idx373, i32 3, i32 0, i32 0, i32 0
  %_372 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_3, i64 0, i64 %for.loop.idx373, i32 3, i32 0, i32 0, i32 0
  %_473 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_4, i64 0, i64 %for.loop.idx373, i32 3, i32 0, i32 0, i32 0
  %_574 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_5, i64 0, i64 %for.loop.idx373, i32 3, i32 0, i32 0, i32 0
  %_675 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_6, i64 0, i64 %for.loop.idx373, i32 3, i32 0, i32 0, i32 0
  %_776 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_7, i64 0, i64 %for.loop.idx373, i32 3, i32 0, i32 0, i32 0
  switch i64 %for.loop.idx74, label %.default77 [
    i64 0, label %.case.079
    i64 1, label %.case.180
    i64 2, label %.case.281
    i64 3, label %.case.382
    i64 4, label %.case.483
    i64 5, label %.case.584
    i64 6, label %.case.685
    i64 7, label %.exit78
  ]

.default77:                                       ; preds = %src.addr6.225.exit
  unreachable

.case.079:                                        ; preds = %src.addr6.225.exit
  %_087 = call i1 @fpga_fifo_exist_1(i8* %_069)
  br i1 %_087, label %src.addr6.333.case.0, label %.case.0273

.case.180:                                        ; preds = %src.addr6.225.exit
  %_188 = call i1 @fpga_fifo_exist_1(i8* %_170)
  br i1 %_188, label %src.addr6.333.case.1, label %.case.1274

.case.281:                                        ; preds = %src.addr6.225.exit
  %_289 = call i1 @fpga_fifo_exist_1(i8* %_271)
  br i1 %_289, label %src.addr6.333.case.2, label %.case.2275

.case.382:                                        ; preds = %src.addr6.225.exit
  %_390 = call i1 @fpga_fifo_exist_1(i8* %_372)
  br i1 %_390, label %src.addr6.333.case.3, label %.case.3276

.case.483:                                        ; preds = %src.addr6.225.exit
  %_491 = call i1 @fpga_fifo_exist_1(i8* %_473)
  br i1 %_491, label %src.addr6.333.case.4, label %.case.4277

.case.584:                                        ; preds = %src.addr6.225.exit
  %_592 = call i1 @fpga_fifo_exist_1(i8* %_574)
  br i1 %_592, label %src.addr6.333.case.5, label %.case.5278

.case.685:                                        ; preds = %src.addr6.225.exit
  %_693 = call i1 @fpga_fifo_exist_1(i8* %_675)
  br i1 %_693, label %src.addr6.333.case.6, label %.case.6279

.exit78:                                          ; preds = %src.addr6.225.exit
  %_794 = call i1 @fpga_fifo_exist_1(i8* %_776)
  br i1 %_794, label %src.addr6.333.case.7, label %.exit272

src.addr6.333.case.0:                             ; preds = %.case.079
  call void @streamcpy_hls.p0struct.ap_uint.16.17(%struct.ap_uint* %dst.addr5.334, %struct.ap_uint* %src.addr6.333_0)
  br label %src.addr6.333.exit

src.addr6.333.case.1:                             ; preds = %.case.180
  call void @streamcpy_hls.p0struct.ap_uint.16.17(%struct.ap_uint* %dst.addr5.334, %struct.ap_uint* %src.addr6.333_1)
  br label %src.addr6.333.exit

src.addr6.333.case.2:                             ; preds = %.case.281
  call void @streamcpy_hls.p0struct.ap_uint.16.17(%struct.ap_uint* %dst.addr5.334, %struct.ap_uint* %src.addr6.333_2)
  br label %src.addr6.333.exit

src.addr6.333.case.3:                             ; preds = %.case.382
  call void @streamcpy_hls.p0struct.ap_uint.16.17(%struct.ap_uint* %dst.addr5.334, %struct.ap_uint* %src.addr6.333_3)
  br label %src.addr6.333.exit

src.addr6.333.case.4:                             ; preds = %.case.483
  call void @streamcpy_hls.p0struct.ap_uint.16.17(%struct.ap_uint* %dst.addr5.334, %struct.ap_uint* %src.addr6.333_4)
  br label %src.addr6.333.exit

src.addr6.333.case.5:                             ; preds = %.case.584
  call void @streamcpy_hls.p0struct.ap_uint.16.17(%struct.ap_uint* %dst.addr5.334, %struct.ap_uint* %src.addr6.333_5)
  br label %src.addr6.333.exit

src.addr6.333.case.6:                             ; preds = %.case.685
  call void @streamcpy_hls.p0struct.ap_uint.16.17(%struct.ap_uint* %dst.addr5.334, %struct.ap_uint* %src.addr6.333_6)
  br label %src.addr6.333.exit

src.addr6.333.case.7:                             ; preds = %.exit78
  call void @streamcpy_hls.p0struct.ap_uint.16.17(%struct.ap_uint* %dst.addr5.334, %struct.ap_uint* %src.addr6.333_7)
  br label %src.addr6.333.exit

.case.0273:                                       ; preds = %.case.079
  %src.addr6.3.035_01124 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_0, i64 0, i64 %for.loop.idx373, i32 3, i32 0
  %dst.addr5.3.0361132 = getelementptr [8 x [4096 x %struct.dpkt_t]], [8 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 0, i64 %for.loop.idx373, i32 3, i32 0
  %_0281 = call i1 @fpga_fifo_exist_1(i8* %_069)
  br i1 %_0281, label %src.addr6.3.035.case.0, label %.case.0429

.case.1274:                                       ; preds = %.case.180
  %src.addr6.3.035_11153 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_1, i64 0, i64 %for.loop.idx373, i32 3, i32 0
  %dst.addr5.3.0361160 = getelementptr [8 x [4096 x %struct.dpkt_t]], [8 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 1, i64 %for.loop.idx373, i32 3, i32 0
  %_1282 = call i1 @fpga_fifo_exist_1(i8* %_170)
  br i1 %_1282, label %src.addr6.3.035.case.1, label %.case.1430

.case.2275:                                       ; preds = %.case.281
  %src.addr6.3.035_21173 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_2, i64 0, i64 %for.loop.idx373, i32 3, i32 0
  %dst.addr5.3.0361179 = getelementptr [8 x [4096 x %struct.dpkt_t]], [8 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 2, i64 %for.loop.idx373, i32 3, i32 0
  %_2283 = call i1 @fpga_fifo_exist_1(i8* %_271)
  br i1 %_2283, label %src.addr6.3.035.case.2, label %.case.2431

.case.3276:                                       ; preds = %.case.382
  %src.addr6.3.035_31193 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_3, i64 0, i64 %for.loop.idx373, i32 3, i32 0
  %dst.addr5.3.0361198 = getelementptr [8 x [4096 x %struct.dpkt_t]], [8 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 3, i64 %for.loop.idx373, i32 3, i32 0
  %_3284 = call i1 @fpga_fifo_exist_1(i8* %_372)
  br i1 %_3284, label %src.addr6.3.035.case.3, label %.case.3432

.case.4277:                                       ; preds = %.case.483
  %src.addr6.3.035_41213 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_4, i64 0, i64 %for.loop.idx373, i32 3, i32 0
  %dst.addr5.3.0361217 = getelementptr [8 x [4096 x %struct.dpkt_t]], [8 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 4, i64 %for.loop.idx373, i32 3, i32 0
  %_4285 = call i1 @fpga_fifo_exist_1(i8* %_473)
  br i1 %_4285, label %src.addr6.3.035.case.4, label %.case.4433

.case.5278:                                       ; preds = %.case.584
  %src.addr6.3.035_51233 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_5, i64 0, i64 %for.loop.idx373, i32 3, i32 0
  %dst.addr5.3.0361236 = getelementptr [8 x [4096 x %struct.dpkt_t]], [8 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 5, i64 %for.loop.idx373, i32 3, i32 0
  %_5286 = call i1 @fpga_fifo_exist_1(i8* %_574)
  br i1 %_5286, label %src.addr6.3.035.case.5, label %.case.5434

.case.6279:                                       ; preds = %.case.685
  %src.addr6.3.035_61253 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_6, i64 0, i64 %for.loop.idx373, i32 3, i32 0
  %dst.addr5.3.0361255 = getelementptr [8 x [4096 x %struct.dpkt_t]], [8 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 6, i64 %for.loop.idx373, i32 3, i32 0
  %_6287 = call i1 @fpga_fifo_exist_1(i8* %_675)
  br i1 %_6287, label %src.addr6.3.035.case.6, label %.case.6435

.exit272:                                         ; preds = %.exit78
  %src.addr6.3.035_7 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_7, i64 0, i64 %for.loop.idx373, i32 3, i32 0
  %dst.addr5.3.036 = getelementptr [8 x [4096 x %struct.dpkt_t]], [8 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 7, i64 %for.loop.idx373, i32 3, i32 0
  %_7288 = call i1 @fpga_fifo_exist_1(i8* %_776)
  br i1 %_7288, label %src.addr6.3.035.case.7, label %.exit428

src.addr6.3.035.case.0:                           ; preds = %.case.0273
  call void @streamcpy_hls.p0struct.ap_int_base.18.19(%struct.ap_int_base* %dst.addr5.3.0361132, %struct.ap_int_base* %src.addr6.3.035_01124)
  br label %src.addr6.333.exit

src.addr6.3.035.case.1:                           ; preds = %.case.1274
  call void @streamcpy_hls.p0struct.ap_int_base.18.19(%struct.ap_int_base* %dst.addr5.3.0361160, %struct.ap_int_base* %src.addr6.3.035_11153)
  br label %src.addr6.333.exit

src.addr6.3.035.case.2:                           ; preds = %.case.2275
  call void @streamcpy_hls.p0struct.ap_int_base.18.19(%struct.ap_int_base* %dst.addr5.3.0361179, %struct.ap_int_base* %src.addr6.3.035_21173)
  br label %src.addr6.333.exit

src.addr6.3.035.case.3:                           ; preds = %.case.3276
  call void @streamcpy_hls.p0struct.ap_int_base.18.19(%struct.ap_int_base* %dst.addr5.3.0361198, %struct.ap_int_base* %src.addr6.3.035_31193)
  br label %src.addr6.333.exit

src.addr6.3.035.case.4:                           ; preds = %.case.4277
  call void @streamcpy_hls.p0struct.ap_int_base.18.19(%struct.ap_int_base* %dst.addr5.3.0361217, %struct.ap_int_base* %src.addr6.3.035_41213)
  br label %src.addr6.333.exit

src.addr6.3.035.case.5:                           ; preds = %.case.5278
  call void @streamcpy_hls.p0struct.ap_int_base.18.19(%struct.ap_int_base* %dst.addr5.3.0361236, %struct.ap_int_base* %src.addr6.3.035_51233)
  br label %src.addr6.333.exit

src.addr6.3.035.case.6:                           ; preds = %.case.6279
  call void @streamcpy_hls.p0struct.ap_int_base.18.19(%struct.ap_int_base* %dst.addr5.3.0361255, %struct.ap_int_base* %src.addr6.3.035_61253)
  br label %src.addr6.333.exit

src.addr6.3.035.case.7:                           ; preds = %.exit272
  call void @streamcpy_hls.p0struct.ap_int_base.18.19(%struct.ap_int_base* %dst.addr5.3.036, %struct.ap_int_base* %src.addr6.3.035_7)
  br label %src.addr6.333.exit

.case.0429:                                       ; preds = %.case.0273
  %src.addr6.3.0.037_01296 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_0, i64 0, i64 %for.loop.idx373, i32 3, i32 0, i32 0
  %dst.addr5.3.0.0381304 = getelementptr [8 x [4096 x %struct.dpkt_t]], [8 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 0, i64 %for.loop.idx373, i32 3, i32 0, i32 0
  %_0437 = call i1 @fpga_fifo_exist_1(i8* %_069)
  br i1 %_0437, label %src.addr6.3.0.037.case.0, label %.case.0447

.case.1430:                                       ; preds = %.case.1274
  %src.addr6.3.0.037_11325 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_1, i64 0, i64 %for.loop.idx373, i32 3, i32 0, i32 0
  %dst.addr5.3.0.0381332 = getelementptr [8 x [4096 x %struct.dpkt_t]], [8 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 1, i64 %for.loop.idx373, i32 3, i32 0, i32 0
  %_1438 = call i1 @fpga_fifo_exist_1(i8* %_170)
  br i1 %_1438, label %src.addr6.3.0.037.case.1, label %.case.1448

.case.2431:                                       ; preds = %.case.2275
  %src.addr6.3.0.037_21345 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_2, i64 0, i64 %for.loop.idx373, i32 3, i32 0, i32 0
  %dst.addr5.3.0.0381351 = getelementptr [8 x [4096 x %struct.dpkt_t]], [8 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 2, i64 %for.loop.idx373, i32 3, i32 0, i32 0
  %_2439 = call i1 @fpga_fifo_exist_1(i8* %_271)
  br i1 %_2439, label %src.addr6.3.0.037.case.2, label %.case.2449

.case.3432:                                       ; preds = %.case.3276
  %src.addr6.3.0.037_31365 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_3, i64 0, i64 %for.loop.idx373, i32 3, i32 0, i32 0
  %dst.addr5.3.0.0381370 = getelementptr [8 x [4096 x %struct.dpkt_t]], [8 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 3, i64 %for.loop.idx373, i32 3, i32 0, i32 0
  %_3440 = call i1 @fpga_fifo_exist_1(i8* %_372)
  br i1 %_3440, label %src.addr6.3.0.037.case.3, label %.case.3450

.case.4433:                                       ; preds = %.case.4277
  %src.addr6.3.0.037_41385 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_4, i64 0, i64 %for.loop.idx373, i32 3, i32 0, i32 0
  %dst.addr5.3.0.0381389 = getelementptr [8 x [4096 x %struct.dpkt_t]], [8 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 4, i64 %for.loop.idx373, i32 3, i32 0, i32 0
  %_4441 = call i1 @fpga_fifo_exist_1(i8* %_473)
  br i1 %_4441, label %src.addr6.3.0.037.case.4, label %.case.4451

.case.5434:                                       ; preds = %.case.5278
  %src.addr6.3.0.037_51405 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_5, i64 0, i64 %for.loop.idx373, i32 3, i32 0, i32 0
  %dst.addr5.3.0.0381408 = getelementptr [8 x [4096 x %struct.dpkt_t]], [8 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 5, i64 %for.loop.idx373, i32 3, i32 0, i32 0
  %_5442 = call i1 @fpga_fifo_exist_1(i8* %_574)
  br i1 %_5442, label %src.addr6.3.0.037.case.5, label %.case.5452

.case.6435:                                       ; preds = %.case.6279
  %src.addr6.3.0.037_61425 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_6, i64 0, i64 %for.loop.idx373, i32 3, i32 0, i32 0
  %dst.addr5.3.0.0381427 = getelementptr [8 x [4096 x %struct.dpkt_t]], [8 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 6, i64 %for.loop.idx373, i32 3, i32 0, i32 0
  %_6443 = call i1 @fpga_fifo_exist_1(i8* %_675)
  br i1 %_6443, label %src.addr6.3.0.037.case.6, label %.case.6453

.exit428:                                         ; preds = %.exit272
  %src.addr6.3.0.037_7 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_7, i64 0, i64 %for.loop.idx373, i32 3, i32 0, i32 0
  %dst.addr5.3.0.038 = getelementptr [8 x [4096 x %struct.dpkt_t]], [8 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 7, i64 %for.loop.idx373, i32 3, i32 0, i32 0
  %_7444 = call i1 @fpga_fifo_exist_1(i8* %_776)
  br i1 %_7444, label %src.addr6.3.0.037.case.7, label %.case.7454

src.addr6.3.0.037.case.0:                         ; preds = %.case.0429
  call void @streamcpy_hls.p0struct.ssdm_int.20.21(%struct.ssdm_int* %dst.addr5.3.0.0381304, %struct.ssdm_int* %src.addr6.3.0.037_01296)
  br label %src.addr6.333.exit

src.addr6.3.0.037.case.1:                         ; preds = %.case.1430
  call void @streamcpy_hls.p0struct.ssdm_int.20.21(%struct.ssdm_int* %dst.addr5.3.0.0381332, %struct.ssdm_int* %src.addr6.3.0.037_11325)
  br label %src.addr6.333.exit

src.addr6.3.0.037.case.2:                         ; preds = %.case.2431
  call void @streamcpy_hls.p0struct.ssdm_int.20.21(%struct.ssdm_int* %dst.addr5.3.0.0381351, %struct.ssdm_int* %src.addr6.3.0.037_21345)
  br label %src.addr6.333.exit

src.addr6.3.0.037.case.3:                         ; preds = %.case.3432
  call void @streamcpy_hls.p0struct.ssdm_int.20.21(%struct.ssdm_int* %dst.addr5.3.0.0381370, %struct.ssdm_int* %src.addr6.3.0.037_31365)
  br label %src.addr6.333.exit

src.addr6.3.0.037.case.4:                         ; preds = %.case.4433
  call void @streamcpy_hls.p0struct.ssdm_int.20.21(%struct.ssdm_int* %dst.addr5.3.0.0381389, %struct.ssdm_int* %src.addr6.3.0.037_41385)
  br label %src.addr6.333.exit

src.addr6.3.0.037.case.5:                         ; preds = %.case.5434
  call void @streamcpy_hls.p0struct.ssdm_int.20.21(%struct.ssdm_int* %dst.addr5.3.0.0381408, %struct.ssdm_int* %src.addr6.3.0.037_51405)
  br label %src.addr6.333.exit

src.addr6.3.0.037.case.6:                         ; preds = %.case.6435
  call void @streamcpy_hls.p0struct.ssdm_int.20.21(%struct.ssdm_int* %dst.addr5.3.0.0381427, %struct.ssdm_int* %src.addr6.3.0.037_61425)
  br label %src.addr6.333.exit

src.addr6.3.0.037.case.7:                         ; preds = %.exit428
  call void @streamcpy_hls.p0struct.ssdm_int.20.21(%struct.ssdm_int* %dst.addr5.3.0.038, %struct.ssdm_int* %src.addr6.3.0.037_7)
  br label %src.addr6.333.exit

.case.0447:                                       ; preds = %.case.0429
  %dst.addr5.3.0.0.0401468 = getelementptr [8 x [4096 x %struct.dpkt_t]], [8 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 0, i64 %for.loop.idx373, i32 3, i32 0, i32 0, i32 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr5.3.0.0.0401468, i8* align 1 %_069, i64 1, i1 false)
  br label %src.addr6.333.exit

.case.1448:                                       ; preds = %.case.1430
  %dst.addr5.3.0.0.0401471 = getelementptr [8 x [4096 x %struct.dpkt_t]], [8 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 1, i64 %for.loop.idx373, i32 3, i32 0, i32 0, i32 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr5.3.0.0.0401471, i8* align 1 %_170, i64 1, i1 false)
  br label %src.addr6.333.exit

.case.2449:                                       ; preds = %.case.2431
  %dst.addr5.3.0.0.0401474 = getelementptr [8 x [4096 x %struct.dpkt_t]], [8 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 2, i64 %for.loop.idx373, i32 3, i32 0, i32 0, i32 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr5.3.0.0.0401474, i8* align 1 %_271, i64 1, i1 false)
  br label %src.addr6.333.exit

.case.3450:                                       ; preds = %.case.3432
  %dst.addr5.3.0.0.0401477 = getelementptr [8 x [4096 x %struct.dpkt_t]], [8 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 3, i64 %for.loop.idx373, i32 3, i32 0, i32 0, i32 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr5.3.0.0.0401477, i8* align 1 %_372, i64 1, i1 false)
  br label %src.addr6.333.exit

.case.4451:                                       ; preds = %.case.4433
  %dst.addr5.3.0.0.0401480 = getelementptr [8 x [4096 x %struct.dpkt_t]], [8 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 4, i64 %for.loop.idx373, i32 3, i32 0, i32 0, i32 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr5.3.0.0.0401480, i8* align 1 %_473, i64 1, i1 false)
  br label %src.addr6.333.exit

.case.5452:                                       ; preds = %.case.5434
  %dst.addr5.3.0.0.0401483 = getelementptr [8 x [4096 x %struct.dpkt_t]], [8 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 5, i64 %for.loop.idx373, i32 3, i32 0, i32 0, i32 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr5.3.0.0.0401483, i8* align 1 %_574, i64 1, i1 false)
  br label %src.addr6.333.exit

.case.6453:                                       ; preds = %.case.6435
  %dst.addr5.3.0.0.0401486 = getelementptr [8 x [4096 x %struct.dpkt_t]], [8 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 6, i64 %for.loop.idx373, i32 3, i32 0, i32 0, i32 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr5.3.0.0.0401486, i8* align 1 %_675, i64 1, i1 false)
  br label %src.addr6.333.exit

.case.7454:                                       ; preds = %.exit428
  %dst.addr5.3.0.0.040 = getelementptr [8 x [4096 x %struct.dpkt_t]], [8 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 7, i64 %for.loop.idx373, i32 3, i32 0, i32 0, i32 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr5.3.0.0.040, i8* align 1 %_776, i64 1, i1 false)
  br label %src.addr6.333.exit

src.addr6.333.exit:                               ; preds = %.case.7454, %.case.6453, %.case.5452, %.case.4451, %.case.3450, %.case.2449, %.case.1448, %.case.0447, %src.addr6.3.0.037.case.7, %src.addr6.3.0.037.case.6, %src.addr6.3.0.037.case.5, %src.addr6.3.0.037.case.4, %src.addr6.3.0.037.case.3, %src.addr6.3.0.037.case.2, %src.addr6.3.0.037.case.1, %src.addr6.3.0.037.case.0, %src.addr6.3.035.case.7, %src.addr6.3.035.case.6, %src.addr6.3.035.case.5, %src.addr6.3.035.case.4, %src.addr6.3.035.case.3, %src.addr6.3.035.case.2, %src.addr6.3.035.case.1, %src.addr6.3.035.case.0, %src.addr6.333.case.7, %src.addr6.333.case.6, %src.addr6.333.case.5, %src.addr6.333.case.4, %src.addr6.333.case.3, %src.addr6.333.case.2, %src.addr6.333.case.1, %src.addr6.333.case.0
  %src.addr6.441_0 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_0, i64 0, i64 %for.loop.idx373, i32 4
  %src.addr6.441_1 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_1, i64 0, i64 %for.loop.idx373, i32 4
  %src.addr6.441_2 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_2, i64 0, i64 %for.loop.idx373, i32 4
  %src.addr6.441_3 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_3, i64 0, i64 %for.loop.idx373, i32 4
  %src.addr6.441_4 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_4, i64 0, i64 %for.loop.idx373, i32 4
  %src.addr6.441_5 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_5, i64 0, i64 %for.loop.idx373, i32 4
  %src.addr6.441_6 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_6, i64 0, i64 %for.loop.idx373, i32 4
  %src.addr6.441_7 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_7, i64 0, i64 %for.loop.idx373, i32 4
  %dst.addr5.442 = getelementptr [8 x [4096 x %struct.dpkt_t]], [8 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 %for.loop.idx74, i64 %for.loop.idx373, i32 4
  %_095 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_0, i64 0, i64 %for.loop.idx373, i32 4, i32 0, i32 0, i32 0
  %_196 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_1, i64 0, i64 %for.loop.idx373, i32 4, i32 0, i32 0, i32 0
  %_297 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_2, i64 0, i64 %for.loop.idx373, i32 4, i32 0, i32 0, i32 0
  %_398 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_3, i64 0, i64 %for.loop.idx373, i32 4, i32 0, i32 0, i32 0
  %_499 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_4, i64 0, i64 %for.loop.idx373, i32 4, i32 0, i32 0, i32 0
  %_5100 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_5, i64 0, i64 %for.loop.idx373, i32 4, i32 0, i32 0, i32 0
  %_6101 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_6, i64 0, i64 %for.loop.idx373, i32 4, i32 0, i32 0, i32 0
  %_7102 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_7, i64 0, i64 %for.loop.idx373, i32 4, i32 0, i32 0, i32 0
  switch i64 %for.loop.idx74, label %.default103 [
    i64 0, label %.case.0105
    i64 1, label %.case.1106
    i64 2, label %.case.2107
    i64 3, label %.case.3108
    i64 4, label %.case.4109
    i64 5, label %.case.5110
    i64 6, label %.case.6111
    i64 7, label %.exit104
  ]

.default103:                                      ; preds = %src.addr6.333.exit
  unreachable

.case.0105:                                       ; preds = %src.addr6.333.exit
  %_0113 = call i1 @fpga_fifo_exist_1(i8* %_095)
  br i1 %_0113, label %src.addr6.441.case.0, label %.case.0255

.case.1106:                                       ; preds = %src.addr6.333.exit
  %_1114 = call i1 @fpga_fifo_exist_1(i8* %_196)
  br i1 %_1114, label %src.addr6.441.case.1, label %.case.1256

.case.2107:                                       ; preds = %src.addr6.333.exit
  %_2115 = call i1 @fpga_fifo_exist_1(i8* %_297)
  br i1 %_2115, label %src.addr6.441.case.2, label %.case.2257

.case.3108:                                       ; preds = %src.addr6.333.exit
  %_3116 = call i1 @fpga_fifo_exist_1(i8* %_398)
  br i1 %_3116, label %src.addr6.441.case.3, label %.case.3258

.case.4109:                                       ; preds = %src.addr6.333.exit
  %_4117 = call i1 @fpga_fifo_exist_1(i8* %_499)
  br i1 %_4117, label %src.addr6.441.case.4, label %.case.4259

.case.5110:                                       ; preds = %src.addr6.333.exit
  %_5118 = call i1 @fpga_fifo_exist_1(i8* %_5100)
  br i1 %_5118, label %src.addr6.441.case.5, label %.case.5260

.case.6111:                                       ; preds = %src.addr6.333.exit
  %_6119 = call i1 @fpga_fifo_exist_1(i8* %_6101)
  br i1 %_6119, label %src.addr6.441.case.6, label %.case.6261

.exit104:                                         ; preds = %src.addr6.333.exit
  %_7120 = call i1 @fpga_fifo_exist_1(i8* %_7102)
  br i1 %_7120, label %src.addr6.441.case.7, label %.exit254

src.addr6.441.case.0:                             ; preds = %.case.0105
  call void @streamcpy_hls.p0struct.ap_uint.16.17(%struct.ap_uint* %dst.addr5.442, %struct.ap_uint* %src.addr6.441_0)
  br label %src.addr6.441.exit

src.addr6.441.case.1:                             ; preds = %.case.1106
  call void @streamcpy_hls.p0struct.ap_uint.16.17(%struct.ap_uint* %dst.addr5.442, %struct.ap_uint* %src.addr6.441_1)
  br label %src.addr6.441.exit

src.addr6.441.case.2:                             ; preds = %.case.2107
  call void @streamcpy_hls.p0struct.ap_uint.16.17(%struct.ap_uint* %dst.addr5.442, %struct.ap_uint* %src.addr6.441_2)
  br label %src.addr6.441.exit

src.addr6.441.case.3:                             ; preds = %.case.3108
  call void @streamcpy_hls.p0struct.ap_uint.16.17(%struct.ap_uint* %dst.addr5.442, %struct.ap_uint* %src.addr6.441_3)
  br label %src.addr6.441.exit

src.addr6.441.case.4:                             ; preds = %.case.4109
  call void @streamcpy_hls.p0struct.ap_uint.16.17(%struct.ap_uint* %dst.addr5.442, %struct.ap_uint* %src.addr6.441_4)
  br label %src.addr6.441.exit

src.addr6.441.case.5:                             ; preds = %.case.5110
  call void @streamcpy_hls.p0struct.ap_uint.16.17(%struct.ap_uint* %dst.addr5.442, %struct.ap_uint* %src.addr6.441_5)
  br label %src.addr6.441.exit

src.addr6.441.case.6:                             ; preds = %.case.6111
  call void @streamcpy_hls.p0struct.ap_uint.16.17(%struct.ap_uint* %dst.addr5.442, %struct.ap_uint* %src.addr6.441_6)
  br label %src.addr6.441.exit

src.addr6.441.case.7:                             ; preds = %.exit104
  call void @streamcpy_hls.p0struct.ap_uint.16.17(%struct.ap_uint* %dst.addr5.442, %struct.ap_uint* %src.addr6.441_7)
  br label %src.addr6.441.exit

.case.0255:                                       ; preds = %.case.0105
  %src.addr6.4.043_01496 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_0, i64 0, i64 %for.loop.idx373, i32 4, i32 0
  %dst.addr5.4.0441504 = getelementptr [8 x [4096 x %struct.dpkt_t]], [8 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 0, i64 %for.loop.idx373, i32 4, i32 0
  %_0263 = call i1 @fpga_fifo_exist_1(i8* %_095)
  br i1 %_0263, label %src.addr6.4.043.case.0, label %.case.0457

.case.1256:                                       ; preds = %.case.1106
  %src.addr6.4.043_11525 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_1, i64 0, i64 %for.loop.idx373, i32 4, i32 0
  %dst.addr5.4.0441532 = getelementptr [8 x [4096 x %struct.dpkt_t]], [8 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 1, i64 %for.loop.idx373, i32 4, i32 0
  %_1264 = call i1 @fpga_fifo_exist_1(i8* %_196)
  br i1 %_1264, label %src.addr6.4.043.case.1, label %.case.1458

.case.2257:                                       ; preds = %.case.2107
  %src.addr6.4.043_21545 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_2, i64 0, i64 %for.loop.idx373, i32 4, i32 0
  %dst.addr5.4.0441551 = getelementptr [8 x [4096 x %struct.dpkt_t]], [8 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 2, i64 %for.loop.idx373, i32 4, i32 0
  %_2265 = call i1 @fpga_fifo_exist_1(i8* %_297)
  br i1 %_2265, label %src.addr6.4.043.case.2, label %.case.2459

.case.3258:                                       ; preds = %.case.3108
  %src.addr6.4.043_31565 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_3, i64 0, i64 %for.loop.idx373, i32 4, i32 0
  %dst.addr5.4.0441570 = getelementptr [8 x [4096 x %struct.dpkt_t]], [8 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 3, i64 %for.loop.idx373, i32 4, i32 0
  %_3266 = call i1 @fpga_fifo_exist_1(i8* %_398)
  br i1 %_3266, label %src.addr6.4.043.case.3, label %.case.3460

.case.4259:                                       ; preds = %.case.4109
  %src.addr6.4.043_41585 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_4, i64 0, i64 %for.loop.idx373, i32 4, i32 0
  %dst.addr5.4.0441589 = getelementptr [8 x [4096 x %struct.dpkt_t]], [8 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 4, i64 %for.loop.idx373, i32 4, i32 0
  %_4267 = call i1 @fpga_fifo_exist_1(i8* %_499)
  br i1 %_4267, label %src.addr6.4.043.case.4, label %.case.4461

.case.5260:                                       ; preds = %.case.5110
  %src.addr6.4.043_51605 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_5, i64 0, i64 %for.loop.idx373, i32 4, i32 0
  %dst.addr5.4.0441608 = getelementptr [8 x [4096 x %struct.dpkt_t]], [8 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 5, i64 %for.loop.idx373, i32 4, i32 0
  %_5268 = call i1 @fpga_fifo_exist_1(i8* %_5100)
  br i1 %_5268, label %src.addr6.4.043.case.5, label %.case.5462

.case.6261:                                       ; preds = %.case.6111
  %src.addr6.4.043_61625 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_6, i64 0, i64 %for.loop.idx373, i32 4, i32 0
  %dst.addr5.4.0441627 = getelementptr [8 x [4096 x %struct.dpkt_t]], [8 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 6, i64 %for.loop.idx373, i32 4, i32 0
  %_6269 = call i1 @fpga_fifo_exist_1(i8* %_6101)
  br i1 %_6269, label %src.addr6.4.043.case.6, label %.case.6463

.exit254:                                         ; preds = %.exit104
  %src.addr6.4.043_7 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_7, i64 0, i64 %for.loop.idx373, i32 4, i32 0
  %dst.addr5.4.044 = getelementptr [8 x [4096 x %struct.dpkt_t]], [8 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 7, i64 %for.loop.idx373, i32 4, i32 0
  %_7270 = call i1 @fpga_fifo_exist_1(i8* %_7102)
  br i1 %_7270, label %src.addr6.4.043.case.7, label %.exit456

src.addr6.4.043.case.0:                           ; preds = %.case.0255
  call void @streamcpy_hls.p0struct.ap_int_base.18.19(%struct.ap_int_base* %dst.addr5.4.0441504, %struct.ap_int_base* %src.addr6.4.043_01496)
  br label %src.addr6.441.exit

src.addr6.4.043.case.1:                           ; preds = %.case.1256
  call void @streamcpy_hls.p0struct.ap_int_base.18.19(%struct.ap_int_base* %dst.addr5.4.0441532, %struct.ap_int_base* %src.addr6.4.043_11525)
  br label %src.addr6.441.exit

src.addr6.4.043.case.2:                           ; preds = %.case.2257
  call void @streamcpy_hls.p0struct.ap_int_base.18.19(%struct.ap_int_base* %dst.addr5.4.0441551, %struct.ap_int_base* %src.addr6.4.043_21545)
  br label %src.addr6.441.exit

src.addr6.4.043.case.3:                           ; preds = %.case.3258
  call void @streamcpy_hls.p0struct.ap_int_base.18.19(%struct.ap_int_base* %dst.addr5.4.0441570, %struct.ap_int_base* %src.addr6.4.043_31565)
  br label %src.addr6.441.exit

src.addr6.4.043.case.4:                           ; preds = %.case.4259
  call void @streamcpy_hls.p0struct.ap_int_base.18.19(%struct.ap_int_base* %dst.addr5.4.0441589, %struct.ap_int_base* %src.addr6.4.043_41585)
  br label %src.addr6.441.exit

src.addr6.4.043.case.5:                           ; preds = %.case.5260
  call void @streamcpy_hls.p0struct.ap_int_base.18.19(%struct.ap_int_base* %dst.addr5.4.0441608, %struct.ap_int_base* %src.addr6.4.043_51605)
  br label %src.addr6.441.exit

src.addr6.4.043.case.6:                           ; preds = %.case.6261
  call void @streamcpy_hls.p0struct.ap_int_base.18.19(%struct.ap_int_base* %dst.addr5.4.0441627, %struct.ap_int_base* %src.addr6.4.043_61625)
  br label %src.addr6.441.exit

src.addr6.4.043.case.7:                           ; preds = %.exit254
  call void @streamcpy_hls.p0struct.ap_int_base.18.19(%struct.ap_int_base* %dst.addr5.4.044, %struct.ap_int_base* %src.addr6.4.043_7)
  br label %src.addr6.441.exit

.case.0457:                                       ; preds = %.case.0255
  %src.addr6.4.0.045_01668 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_0, i64 0, i64 %for.loop.idx373, i32 4, i32 0, i32 0
  %dst.addr5.4.0.0461676 = getelementptr [8 x [4096 x %struct.dpkt_t]], [8 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 0, i64 %for.loop.idx373, i32 4, i32 0, i32 0
  %_0465 = call i1 @fpga_fifo_exist_1(i8* %_095)
  br i1 %_0465, label %src.addr6.4.0.045.case.0, label %.case.0475

.case.1458:                                       ; preds = %.case.1256
  %src.addr6.4.0.045_11697 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_1, i64 0, i64 %for.loop.idx373, i32 4, i32 0, i32 0
  %dst.addr5.4.0.0461704 = getelementptr [8 x [4096 x %struct.dpkt_t]], [8 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 1, i64 %for.loop.idx373, i32 4, i32 0, i32 0
  %_1466 = call i1 @fpga_fifo_exist_1(i8* %_196)
  br i1 %_1466, label %src.addr6.4.0.045.case.1, label %.case.1476

.case.2459:                                       ; preds = %.case.2257
  %src.addr6.4.0.045_21717 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_2, i64 0, i64 %for.loop.idx373, i32 4, i32 0, i32 0
  %dst.addr5.4.0.0461723 = getelementptr [8 x [4096 x %struct.dpkt_t]], [8 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 2, i64 %for.loop.idx373, i32 4, i32 0, i32 0
  %_2467 = call i1 @fpga_fifo_exist_1(i8* %_297)
  br i1 %_2467, label %src.addr6.4.0.045.case.2, label %.case.2477

.case.3460:                                       ; preds = %.case.3258
  %src.addr6.4.0.045_31737 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_3, i64 0, i64 %for.loop.idx373, i32 4, i32 0, i32 0
  %dst.addr5.4.0.0461742 = getelementptr [8 x [4096 x %struct.dpkt_t]], [8 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 3, i64 %for.loop.idx373, i32 4, i32 0, i32 0
  %_3468 = call i1 @fpga_fifo_exist_1(i8* %_398)
  br i1 %_3468, label %src.addr6.4.0.045.case.3, label %.case.3478

.case.4461:                                       ; preds = %.case.4259
  %src.addr6.4.0.045_41757 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_4, i64 0, i64 %for.loop.idx373, i32 4, i32 0, i32 0
  %dst.addr5.4.0.0461761 = getelementptr [8 x [4096 x %struct.dpkt_t]], [8 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 4, i64 %for.loop.idx373, i32 4, i32 0, i32 0
  %_4469 = call i1 @fpga_fifo_exist_1(i8* %_499)
  br i1 %_4469, label %src.addr6.4.0.045.case.4, label %.case.4479

.case.5462:                                       ; preds = %.case.5260
  %src.addr6.4.0.045_51777 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_5, i64 0, i64 %for.loop.idx373, i32 4, i32 0, i32 0
  %dst.addr5.4.0.0461780 = getelementptr [8 x [4096 x %struct.dpkt_t]], [8 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 5, i64 %for.loop.idx373, i32 4, i32 0, i32 0
  %_5470 = call i1 @fpga_fifo_exist_1(i8* %_5100)
  br i1 %_5470, label %src.addr6.4.0.045.case.5, label %.case.5480

.case.6463:                                       ; preds = %.case.6261
  %src.addr6.4.0.045_61797 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_6, i64 0, i64 %for.loop.idx373, i32 4, i32 0, i32 0
  %dst.addr5.4.0.0461799 = getelementptr [8 x [4096 x %struct.dpkt_t]], [8 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 6, i64 %for.loop.idx373, i32 4, i32 0, i32 0
  %_6471 = call i1 @fpga_fifo_exist_1(i8* %_6101)
  br i1 %_6471, label %src.addr6.4.0.045.case.6, label %.case.6481

.exit456:                                         ; preds = %.exit254
  %src.addr6.4.0.045_7 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_7, i64 0, i64 %for.loop.idx373, i32 4, i32 0, i32 0
  %dst.addr5.4.0.046 = getelementptr [8 x [4096 x %struct.dpkt_t]], [8 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 7, i64 %for.loop.idx373, i32 4, i32 0, i32 0
  %_7472 = call i1 @fpga_fifo_exist_1(i8* %_7102)
  br i1 %_7472, label %src.addr6.4.0.045.case.7, label %.case.7482

src.addr6.4.0.045.case.0:                         ; preds = %.case.0457
  call void @streamcpy_hls.p0struct.ssdm_int.20.21(%struct.ssdm_int* %dst.addr5.4.0.0461676, %struct.ssdm_int* %src.addr6.4.0.045_01668)
  br label %src.addr6.441.exit

src.addr6.4.0.045.case.1:                         ; preds = %.case.1458
  call void @streamcpy_hls.p0struct.ssdm_int.20.21(%struct.ssdm_int* %dst.addr5.4.0.0461704, %struct.ssdm_int* %src.addr6.4.0.045_11697)
  br label %src.addr6.441.exit

src.addr6.4.0.045.case.2:                         ; preds = %.case.2459
  call void @streamcpy_hls.p0struct.ssdm_int.20.21(%struct.ssdm_int* %dst.addr5.4.0.0461723, %struct.ssdm_int* %src.addr6.4.0.045_21717)
  br label %src.addr6.441.exit

src.addr6.4.0.045.case.3:                         ; preds = %.case.3460
  call void @streamcpy_hls.p0struct.ssdm_int.20.21(%struct.ssdm_int* %dst.addr5.4.0.0461742, %struct.ssdm_int* %src.addr6.4.0.045_31737)
  br label %src.addr6.441.exit

src.addr6.4.0.045.case.4:                         ; preds = %.case.4461
  call void @streamcpy_hls.p0struct.ssdm_int.20.21(%struct.ssdm_int* %dst.addr5.4.0.0461761, %struct.ssdm_int* %src.addr6.4.0.045_41757)
  br label %src.addr6.441.exit

src.addr6.4.0.045.case.5:                         ; preds = %.case.5462
  call void @streamcpy_hls.p0struct.ssdm_int.20.21(%struct.ssdm_int* %dst.addr5.4.0.0461780, %struct.ssdm_int* %src.addr6.4.0.045_51777)
  br label %src.addr6.441.exit

src.addr6.4.0.045.case.6:                         ; preds = %.case.6463
  call void @streamcpy_hls.p0struct.ssdm_int.20.21(%struct.ssdm_int* %dst.addr5.4.0.0461799, %struct.ssdm_int* %src.addr6.4.0.045_61797)
  br label %src.addr6.441.exit

src.addr6.4.0.045.case.7:                         ; preds = %.exit456
  call void @streamcpy_hls.p0struct.ssdm_int.20.21(%struct.ssdm_int* %dst.addr5.4.0.046, %struct.ssdm_int* %src.addr6.4.0.045_7)
  br label %src.addr6.441.exit

.case.0475:                                       ; preds = %.case.0457
  %dst.addr5.4.0.0.0481840 = getelementptr [8 x [4096 x %struct.dpkt_t]], [8 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 0, i64 %for.loop.idx373, i32 4, i32 0, i32 0, i32 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr5.4.0.0.0481840, i8* align 1 %_095, i64 1, i1 false)
  br label %src.addr6.441.exit

.case.1476:                                       ; preds = %.case.1458
  %dst.addr5.4.0.0.0481843 = getelementptr [8 x [4096 x %struct.dpkt_t]], [8 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 1, i64 %for.loop.idx373, i32 4, i32 0, i32 0, i32 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr5.4.0.0.0481843, i8* align 1 %_196, i64 1, i1 false)
  br label %src.addr6.441.exit

.case.2477:                                       ; preds = %.case.2459
  %dst.addr5.4.0.0.0481846 = getelementptr [8 x [4096 x %struct.dpkt_t]], [8 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 2, i64 %for.loop.idx373, i32 4, i32 0, i32 0, i32 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr5.4.0.0.0481846, i8* align 1 %_297, i64 1, i1 false)
  br label %src.addr6.441.exit

.case.3478:                                       ; preds = %.case.3460
  %dst.addr5.4.0.0.0481849 = getelementptr [8 x [4096 x %struct.dpkt_t]], [8 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 3, i64 %for.loop.idx373, i32 4, i32 0, i32 0, i32 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr5.4.0.0.0481849, i8* align 1 %_398, i64 1, i1 false)
  br label %src.addr6.441.exit

.case.4479:                                       ; preds = %.case.4461
  %dst.addr5.4.0.0.0481852 = getelementptr [8 x [4096 x %struct.dpkt_t]], [8 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 4, i64 %for.loop.idx373, i32 4, i32 0, i32 0, i32 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr5.4.0.0.0481852, i8* align 1 %_499, i64 1, i1 false)
  br label %src.addr6.441.exit

.case.5480:                                       ; preds = %.case.5462
  %dst.addr5.4.0.0.0481855 = getelementptr [8 x [4096 x %struct.dpkt_t]], [8 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 5, i64 %for.loop.idx373, i32 4, i32 0, i32 0, i32 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr5.4.0.0.0481855, i8* align 1 %_5100, i64 1, i1 false)
  br label %src.addr6.441.exit

.case.6481:                                       ; preds = %.case.6463
  %dst.addr5.4.0.0.0481858 = getelementptr [8 x [4096 x %struct.dpkt_t]], [8 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 6, i64 %for.loop.idx373, i32 4, i32 0, i32 0, i32 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr5.4.0.0.0481858, i8* align 1 %_6101, i64 1, i1 false)
  br label %src.addr6.441.exit

.case.7482:                                       ; preds = %.exit456
  %dst.addr5.4.0.0.048 = getelementptr [8 x [4096 x %struct.dpkt_t]], [8 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 7, i64 %for.loop.idx373, i32 4, i32 0, i32 0, i32 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr5.4.0.0.048, i8* align 1 %_7102, i64 1, i1 false)
  br label %src.addr6.441.exit

src.addr6.441.exit:                               ; preds = %.case.7482, %.case.6481, %.case.5480, %.case.4479, %.case.3478, %.case.2477, %.case.1476, %.case.0475, %src.addr6.4.0.045.case.7, %src.addr6.4.0.045.case.6, %src.addr6.4.0.045.case.5, %src.addr6.4.0.045.case.4, %src.addr6.4.0.045.case.3, %src.addr6.4.0.045.case.2, %src.addr6.4.0.045.case.1, %src.addr6.4.0.045.case.0, %src.addr6.4.043.case.7, %src.addr6.4.043.case.6, %src.addr6.4.043.case.5, %src.addr6.4.043.case.4, %src.addr6.4.043.case.3, %src.addr6.4.043.case.2, %src.addr6.4.043.case.1, %src.addr6.4.043.case.0, %src.addr6.441.case.7, %src.addr6.441.case.6, %src.addr6.441.case.5, %src.addr6.441.case.4, %src.addr6.441.case.3, %src.addr6.441.case.2, %src.addr6.441.case.1, %src.addr6.441.case.0
  %src.addr6.549_0 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_0, i64 0, i64 %for.loop.idx373, i32 5
  %src.addr6.549_1 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_1, i64 0, i64 %for.loop.idx373, i32 5
  %src.addr6.549_2 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_2, i64 0, i64 %for.loop.idx373, i32 5
  %src.addr6.549_3 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_3, i64 0, i64 %for.loop.idx373, i32 5
  %src.addr6.549_4 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_4, i64 0, i64 %for.loop.idx373, i32 5
  %src.addr6.549_5 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_5, i64 0, i64 %for.loop.idx373, i32 5
  %src.addr6.549_6 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_6, i64 0, i64 %for.loop.idx373, i32 5
  %src.addr6.549_7 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_7, i64 0, i64 %for.loop.idx373, i32 5
  %dst.addr5.550 = getelementptr [8 x [4096 x %struct.dpkt_t]], [8 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 %for.loop.idx74, i64 %for.loop.idx373, i32 5
  %_0121 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_0, i64 0, i64 %for.loop.idx373, i32 5, i32 0, i32 0, i32 0
  %_1122 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_1, i64 0, i64 %for.loop.idx373, i32 5, i32 0, i32 0, i32 0
  %_2123 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_2, i64 0, i64 %for.loop.idx373, i32 5, i32 0, i32 0, i32 0
  %_3124 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_3, i64 0, i64 %for.loop.idx373, i32 5, i32 0, i32 0, i32 0
  %_4125 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_4, i64 0, i64 %for.loop.idx373, i32 5, i32 0, i32 0, i32 0
  %_5126 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_5, i64 0, i64 %for.loop.idx373, i32 5, i32 0, i32 0, i32 0
  %_6127 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_6, i64 0, i64 %for.loop.idx373, i32 5, i32 0, i32 0, i32 0
  %_7128 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_7, i64 0, i64 %for.loop.idx373, i32 5, i32 0, i32 0, i32 0
  switch i64 %for.loop.idx74, label %.default129 [
    i64 0, label %.case.0131
    i64 1, label %.case.1132
    i64 2, label %.case.2133
    i64 3, label %.case.3134
    i64 4, label %.case.4135
    i64 5, label %.case.5136
    i64 6, label %.case.6137
    i64 7, label %.exit130
  ]

.default129:                                      ; preds = %src.addr6.441.exit
  unreachable

.case.0131:                                       ; preds = %src.addr6.441.exit
  %_0139 = call i1 @fpga_fifo_exist_1(i8* %_0121)
  br i1 %_0139, label %src.addr6.549.case.0, label %.case.0237

.case.1132:                                       ; preds = %src.addr6.441.exit
  %_1140 = call i1 @fpga_fifo_exist_1(i8* %_1122)
  br i1 %_1140, label %src.addr6.549.case.1, label %.case.1238

.case.2133:                                       ; preds = %src.addr6.441.exit
  %_2141 = call i1 @fpga_fifo_exist_1(i8* %_2123)
  br i1 %_2141, label %src.addr6.549.case.2, label %.case.2239

.case.3134:                                       ; preds = %src.addr6.441.exit
  %_3142 = call i1 @fpga_fifo_exist_1(i8* %_3124)
  br i1 %_3142, label %src.addr6.549.case.3, label %.case.3240

.case.4135:                                       ; preds = %src.addr6.441.exit
  %_4143 = call i1 @fpga_fifo_exist_1(i8* %_4125)
  br i1 %_4143, label %src.addr6.549.case.4, label %.case.4241

.case.5136:                                       ; preds = %src.addr6.441.exit
  %_5144 = call i1 @fpga_fifo_exist_1(i8* %_5126)
  br i1 %_5144, label %src.addr6.549.case.5, label %.case.5242

.case.6137:                                       ; preds = %src.addr6.441.exit
  %_6145 = call i1 @fpga_fifo_exist_1(i8* %_6127)
  br i1 %_6145, label %src.addr6.549.case.6, label %.case.6243

.exit130:                                         ; preds = %src.addr6.441.exit
  %_7146 = call i1 @fpga_fifo_exist_1(i8* %_7128)
  br i1 %_7146, label %src.addr6.549.case.7, label %.exit236

src.addr6.549.case.0:                             ; preds = %.case.0131
  call void @streamcpy_hls.p0struct.ap_uint.16.17(%struct.ap_uint* %dst.addr5.550, %struct.ap_uint* %src.addr6.549_0)
  br label %src.addr6.549.exit

src.addr6.549.case.1:                             ; preds = %.case.1132
  call void @streamcpy_hls.p0struct.ap_uint.16.17(%struct.ap_uint* %dst.addr5.550, %struct.ap_uint* %src.addr6.549_1)
  br label %src.addr6.549.exit

src.addr6.549.case.2:                             ; preds = %.case.2133
  call void @streamcpy_hls.p0struct.ap_uint.16.17(%struct.ap_uint* %dst.addr5.550, %struct.ap_uint* %src.addr6.549_2)
  br label %src.addr6.549.exit

src.addr6.549.case.3:                             ; preds = %.case.3134
  call void @streamcpy_hls.p0struct.ap_uint.16.17(%struct.ap_uint* %dst.addr5.550, %struct.ap_uint* %src.addr6.549_3)
  br label %src.addr6.549.exit

src.addr6.549.case.4:                             ; preds = %.case.4135
  call void @streamcpy_hls.p0struct.ap_uint.16.17(%struct.ap_uint* %dst.addr5.550, %struct.ap_uint* %src.addr6.549_4)
  br label %src.addr6.549.exit

src.addr6.549.case.5:                             ; preds = %.case.5136
  call void @streamcpy_hls.p0struct.ap_uint.16.17(%struct.ap_uint* %dst.addr5.550, %struct.ap_uint* %src.addr6.549_5)
  br label %src.addr6.549.exit

src.addr6.549.case.6:                             ; preds = %.case.6137
  call void @streamcpy_hls.p0struct.ap_uint.16.17(%struct.ap_uint* %dst.addr5.550, %struct.ap_uint* %src.addr6.549_6)
  br label %src.addr6.549.exit

src.addr6.549.case.7:                             ; preds = %.exit130
  call void @streamcpy_hls.p0struct.ap_uint.16.17(%struct.ap_uint* %dst.addr5.550, %struct.ap_uint* %src.addr6.549_7)
  br label %src.addr6.549.exit

.case.0237:                                       ; preds = %.case.0131
  %src.addr6.5.051_01868 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_0, i64 0, i64 %for.loop.idx373, i32 5, i32 0
  %dst.addr5.5.0521876 = getelementptr [8 x [4096 x %struct.dpkt_t]], [8 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 0, i64 %for.loop.idx373, i32 5, i32 0
  %_0245 = call i1 @fpga_fifo_exist_1(i8* %_0121)
  br i1 %_0245, label %src.addr6.5.051.case.0, label %.case.0485

.case.1238:                                       ; preds = %.case.1132
  %src.addr6.5.051_11897 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_1, i64 0, i64 %for.loop.idx373, i32 5, i32 0
  %dst.addr5.5.0521904 = getelementptr [8 x [4096 x %struct.dpkt_t]], [8 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 1, i64 %for.loop.idx373, i32 5, i32 0
  %_1246 = call i1 @fpga_fifo_exist_1(i8* %_1122)
  br i1 %_1246, label %src.addr6.5.051.case.1, label %.case.1486

.case.2239:                                       ; preds = %.case.2133
  %src.addr6.5.051_21917 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_2, i64 0, i64 %for.loop.idx373, i32 5, i32 0
  %dst.addr5.5.0521923 = getelementptr [8 x [4096 x %struct.dpkt_t]], [8 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 2, i64 %for.loop.idx373, i32 5, i32 0
  %_2247 = call i1 @fpga_fifo_exist_1(i8* %_2123)
  br i1 %_2247, label %src.addr6.5.051.case.2, label %.case.2487

.case.3240:                                       ; preds = %.case.3134
  %src.addr6.5.051_31937 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_3, i64 0, i64 %for.loop.idx373, i32 5, i32 0
  %dst.addr5.5.0521942 = getelementptr [8 x [4096 x %struct.dpkt_t]], [8 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 3, i64 %for.loop.idx373, i32 5, i32 0
  %_3248 = call i1 @fpga_fifo_exist_1(i8* %_3124)
  br i1 %_3248, label %src.addr6.5.051.case.3, label %.case.3488

.case.4241:                                       ; preds = %.case.4135
  %src.addr6.5.051_41957 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_4, i64 0, i64 %for.loop.idx373, i32 5, i32 0
  %dst.addr5.5.0521961 = getelementptr [8 x [4096 x %struct.dpkt_t]], [8 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 4, i64 %for.loop.idx373, i32 5, i32 0
  %_4249 = call i1 @fpga_fifo_exist_1(i8* %_4125)
  br i1 %_4249, label %src.addr6.5.051.case.4, label %.case.4489

.case.5242:                                       ; preds = %.case.5136
  %src.addr6.5.051_51977 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_5, i64 0, i64 %for.loop.idx373, i32 5, i32 0
  %dst.addr5.5.0521980 = getelementptr [8 x [4096 x %struct.dpkt_t]], [8 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 5, i64 %for.loop.idx373, i32 5, i32 0
  %_5250 = call i1 @fpga_fifo_exist_1(i8* %_5126)
  br i1 %_5250, label %src.addr6.5.051.case.5, label %.case.5490

.case.6243:                                       ; preds = %.case.6137
  %src.addr6.5.051_61997 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_6, i64 0, i64 %for.loop.idx373, i32 5, i32 0
  %dst.addr5.5.0521999 = getelementptr [8 x [4096 x %struct.dpkt_t]], [8 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 6, i64 %for.loop.idx373, i32 5, i32 0
  %_6251 = call i1 @fpga_fifo_exist_1(i8* %_6127)
  br i1 %_6251, label %src.addr6.5.051.case.6, label %.case.6491

.exit236:                                         ; preds = %.exit130
  %src.addr6.5.051_7 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_7, i64 0, i64 %for.loop.idx373, i32 5, i32 0
  %dst.addr5.5.052 = getelementptr [8 x [4096 x %struct.dpkt_t]], [8 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 7, i64 %for.loop.idx373, i32 5, i32 0
  %_7252 = call i1 @fpga_fifo_exist_1(i8* %_7128)
  br i1 %_7252, label %src.addr6.5.051.case.7, label %.exit484

src.addr6.5.051.case.0:                           ; preds = %.case.0237
  call void @streamcpy_hls.p0struct.ap_int_base.18.19(%struct.ap_int_base* %dst.addr5.5.0521876, %struct.ap_int_base* %src.addr6.5.051_01868)
  br label %src.addr6.549.exit

src.addr6.5.051.case.1:                           ; preds = %.case.1238
  call void @streamcpy_hls.p0struct.ap_int_base.18.19(%struct.ap_int_base* %dst.addr5.5.0521904, %struct.ap_int_base* %src.addr6.5.051_11897)
  br label %src.addr6.549.exit

src.addr6.5.051.case.2:                           ; preds = %.case.2239
  call void @streamcpy_hls.p0struct.ap_int_base.18.19(%struct.ap_int_base* %dst.addr5.5.0521923, %struct.ap_int_base* %src.addr6.5.051_21917)
  br label %src.addr6.549.exit

src.addr6.5.051.case.3:                           ; preds = %.case.3240
  call void @streamcpy_hls.p0struct.ap_int_base.18.19(%struct.ap_int_base* %dst.addr5.5.0521942, %struct.ap_int_base* %src.addr6.5.051_31937)
  br label %src.addr6.549.exit

src.addr6.5.051.case.4:                           ; preds = %.case.4241
  call void @streamcpy_hls.p0struct.ap_int_base.18.19(%struct.ap_int_base* %dst.addr5.5.0521961, %struct.ap_int_base* %src.addr6.5.051_41957)
  br label %src.addr6.549.exit

src.addr6.5.051.case.5:                           ; preds = %.case.5242
  call void @streamcpy_hls.p0struct.ap_int_base.18.19(%struct.ap_int_base* %dst.addr5.5.0521980, %struct.ap_int_base* %src.addr6.5.051_51977)
  br label %src.addr6.549.exit

src.addr6.5.051.case.6:                           ; preds = %.case.6243
  call void @streamcpy_hls.p0struct.ap_int_base.18.19(%struct.ap_int_base* %dst.addr5.5.0521999, %struct.ap_int_base* %src.addr6.5.051_61997)
  br label %src.addr6.549.exit

src.addr6.5.051.case.7:                           ; preds = %.exit236
  call void @streamcpy_hls.p0struct.ap_int_base.18.19(%struct.ap_int_base* %dst.addr5.5.052, %struct.ap_int_base* %src.addr6.5.051_7)
  br label %src.addr6.549.exit

.case.0485:                                       ; preds = %.case.0237
  %src.addr6.5.0.053_02040 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_0, i64 0, i64 %for.loop.idx373, i32 5, i32 0, i32 0
  %dst.addr5.5.0.0542048 = getelementptr [8 x [4096 x %struct.dpkt_t]], [8 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 0, i64 %for.loop.idx373, i32 5, i32 0, i32 0
  %_0493 = call i1 @fpga_fifo_exist_1(i8* %_0121)
  br i1 %_0493, label %src.addr6.5.0.053.case.0, label %.case.0503

.case.1486:                                       ; preds = %.case.1238
  %src.addr6.5.0.053_12069 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_1, i64 0, i64 %for.loop.idx373, i32 5, i32 0, i32 0
  %dst.addr5.5.0.0542076 = getelementptr [8 x [4096 x %struct.dpkt_t]], [8 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 1, i64 %for.loop.idx373, i32 5, i32 0, i32 0
  %_1494 = call i1 @fpga_fifo_exist_1(i8* %_1122)
  br i1 %_1494, label %src.addr6.5.0.053.case.1, label %.case.1504

.case.2487:                                       ; preds = %.case.2239
  %src.addr6.5.0.053_22089 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_2, i64 0, i64 %for.loop.idx373, i32 5, i32 0, i32 0
  %dst.addr5.5.0.0542095 = getelementptr [8 x [4096 x %struct.dpkt_t]], [8 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 2, i64 %for.loop.idx373, i32 5, i32 0, i32 0
  %_2495 = call i1 @fpga_fifo_exist_1(i8* %_2123)
  br i1 %_2495, label %src.addr6.5.0.053.case.2, label %.case.2505

.case.3488:                                       ; preds = %.case.3240
  %src.addr6.5.0.053_32109 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_3, i64 0, i64 %for.loop.idx373, i32 5, i32 0, i32 0
  %dst.addr5.5.0.0542114 = getelementptr [8 x [4096 x %struct.dpkt_t]], [8 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 3, i64 %for.loop.idx373, i32 5, i32 0, i32 0
  %_3496 = call i1 @fpga_fifo_exist_1(i8* %_3124)
  br i1 %_3496, label %src.addr6.5.0.053.case.3, label %.case.3506

.case.4489:                                       ; preds = %.case.4241
  %src.addr6.5.0.053_42129 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_4, i64 0, i64 %for.loop.idx373, i32 5, i32 0, i32 0
  %dst.addr5.5.0.0542133 = getelementptr [8 x [4096 x %struct.dpkt_t]], [8 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 4, i64 %for.loop.idx373, i32 5, i32 0, i32 0
  %_4497 = call i1 @fpga_fifo_exist_1(i8* %_4125)
  br i1 %_4497, label %src.addr6.5.0.053.case.4, label %.case.4507

.case.5490:                                       ; preds = %.case.5242
  %src.addr6.5.0.053_52149 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_5, i64 0, i64 %for.loop.idx373, i32 5, i32 0, i32 0
  %dst.addr5.5.0.0542152 = getelementptr [8 x [4096 x %struct.dpkt_t]], [8 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 5, i64 %for.loop.idx373, i32 5, i32 0, i32 0
  %_5498 = call i1 @fpga_fifo_exist_1(i8* %_5126)
  br i1 %_5498, label %src.addr6.5.0.053.case.5, label %.case.5508

.case.6491:                                       ; preds = %.case.6243
  %src.addr6.5.0.053_62169 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_6, i64 0, i64 %for.loop.idx373, i32 5, i32 0, i32 0
  %dst.addr5.5.0.0542171 = getelementptr [8 x [4096 x %struct.dpkt_t]], [8 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 6, i64 %for.loop.idx373, i32 5, i32 0, i32 0
  %_6499 = call i1 @fpga_fifo_exist_1(i8* %_6127)
  br i1 %_6499, label %src.addr6.5.0.053.case.6, label %.case.6509

.exit484:                                         ; preds = %.exit236
  %src.addr6.5.0.053_7 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_7, i64 0, i64 %for.loop.idx373, i32 5, i32 0, i32 0
  %dst.addr5.5.0.054 = getelementptr [8 x [4096 x %struct.dpkt_t]], [8 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 7, i64 %for.loop.idx373, i32 5, i32 0, i32 0
  %_7500 = call i1 @fpga_fifo_exist_1(i8* %_7128)
  br i1 %_7500, label %src.addr6.5.0.053.case.7, label %.case.7510

src.addr6.5.0.053.case.0:                         ; preds = %.case.0485
  call void @streamcpy_hls.p0struct.ssdm_int.20.21(%struct.ssdm_int* %dst.addr5.5.0.0542048, %struct.ssdm_int* %src.addr6.5.0.053_02040)
  br label %src.addr6.549.exit

src.addr6.5.0.053.case.1:                         ; preds = %.case.1486
  call void @streamcpy_hls.p0struct.ssdm_int.20.21(%struct.ssdm_int* %dst.addr5.5.0.0542076, %struct.ssdm_int* %src.addr6.5.0.053_12069)
  br label %src.addr6.549.exit

src.addr6.5.0.053.case.2:                         ; preds = %.case.2487
  call void @streamcpy_hls.p0struct.ssdm_int.20.21(%struct.ssdm_int* %dst.addr5.5.0.0542095, %struct.ssdm_int* %src.addr6.5.0.053_22089)
  br label %src.addr6.549.exit

src.addr6.5.0.053.case.3:                         ; preds = %.case.3488
  call void @streamcpy_hls.p0struct.ssdm_int.20.21(%struct.ssdm_int* %dst.addr5.5.0.0542114, %struct.ssdm_int* %src.addr6.5.0.053_32109)
  br label %src.addr6.549.exit

src.addr6.5.0.053.case.4:                         ; preds = %.case.4489
  call void @streamcpy_hls.p0struct.ssdm_int.20.21(%struct.ssdm_int* %dst.addr5.5.0.0542133, %struct.ssdm_int* %src.addr6.5.0.053_42129)
  br label %src.addr6.549.exit

src.addr6.5.0.053.case.5:                         ; preds = %.case.5490
  call void @streamcpy_hls.p0struct.ssdm_int.20.21(%struct.ssdm_int* %dst.addr5.5.0.0542152, %struct.ssdm_int* %src.addr6.5.0.053_52149)
  br label %src.addr6.549.exit

src.addr6.5.0.053.case.6:                         ; preds = %.case.6491
  call void @streamcpy_hls.p0struct.ssdm_int.20.21(%struct.ssdm_int* %dst.addr5.5.0.0542171, %struct.ssdm_int* %src.addr6.5.0.053_62169)
  br label %src.addr6.549.exit

src.addr6.5.0.053.case.7:                         ; preds = %.exit484
  call void @streamcpy_hls.p0struct.ssdm_int.20.21(%struct.ssdm_int* %dst.addr5.5.0.054, %struct.ssdm_int* %src.addr6.5.0.053_7)
  br label %src.addr6.549.exit

.case.0503:                                       ; preds = %.case.0485
  %dst.addr5.5.0.0.0562212 = getelementptr [8 x [4096 x %struct.dpkt_t]], [8 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 0, i64 %for.loop.idx373, i32 5, i32 0, i32 0, i32 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr5.5.0.0.0562212, i8* align 1 %_0121, i64 1, i1 false)
  br label %src.addr6.549.exit

.case.1504:                                       ; preds = %.case.1486
  %dst.addr5.5.0.0.0562215 = getelementptr [8 x [4096 x %struct.dpkt_t]], [8 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 1, i64 %for.loop.idx373, i32 5, i32 0, i32 0, i32 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr5.5.0.0.0562215, i8* align 1 %_1122, i64 1, i1 false)
  br label %src.addr6.549.exit

.case.2505:                                       ; preds = %.case.2487
  %dst.addr5.5.0.0.0562218 = getelementptr [8 x [4096 x %struct.dpkt_t]], [8 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 2, i64 %for.loop.idx373, i32 5, i32 0, i32 0, i32 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr5.5.0.0.0562218, i8* align 1 %_2123, i64 1, i1 false)
  br label %src.addr6.549.exit

.case.3506:                                       ; preds = %.case.3488
  %dst.addr5.5.0.0.0562221 = getelementptr [8 x [4096 x %struct.dpkt_t]], [8 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 3, i64 %for.loop.idx373, i32 5, i32 0, i32 0, i32 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr5.5.0.0.0562221, i8* align 1 %_3124, i64 1, i1 false)
  br label %src.addr6.549.exit

.case.4507:                                       ; preds = %.case.4489
  %dst.addr5.5.0.0.0562224 = getelementptr [8 x [4096 x %struct.dpkt_t]], [8 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 4, i64 %for.loop.idx373, i32 5, i32 0, i32 0, i32 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr5.5.0.0.0562224, i8* align 1 %_4125, i64 1, i1 false)
  br label %src.addr6.549.exit

.case.5508:                                       ; preds = %.case.5490
  %dst.addr5.5.0.0.0562227 = getelementptr [8 x [4096 x %struct.dpkt_t]], [8 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 5, i64 %for.loop.idx373, i32 5, i32 0, i32 0, i32 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr5.5.0.0.0562227, i8* align 1 %_5126, i64 1, i1 false)
  br label %src.addr6.549.exit

.case.6509:                                       ; preds = %.case.6491
  %dst.addr5.5.0.0.0562230 = getelementptr [8 x [4096 x %struct.dpkt_t]], [8 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 6, i64 %for.loop.idx373, i32 5, i32 0, i32 0, i32 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr5.5.0.0.0562230, i8* align 1 %_6127, i64 1, i1 false)
  br label %src.addr6.549.exit

.case.7510:                                       ; preds = %.exit484
  %dst.addr5.5.0.0.056 = getelementptr [8 x [4096 x %struct.dpkt_t]], [8 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 7, i64 %for.loop.idx373, i32 5, i32 0, i32 0, i32 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr5.5.0.0.056, i8* align 1 %_7128, i64 1, i1 false)
  br label %src.addr6.549.exit

src.addr6.549.exit:                               ; preds = %.case.7510, %.case.6509, %.case.5508, %.case.4507, %.case.3506, %.case.2505, %.case.1504, %.case.0503, %src.addr6.5.0.053.case.7, %src.addr6.5.0.053.case.6, %src.addr6.5.0.053.case.5, %src.addr6.5.0.053.case.4, %src.addr6.5.0.053.case.3, %src.addr6.5.0.053.case.2, %src.addr6.5.0.053.case.1, %src.addr6.5.0.053.case.0, %src.addr6.5.051.case.7, %src.addr6.5.051.case.6, %src.addr6.5.051.case.5, %src.addr6.5.051.case.4, %src.addr6.5.051.case.3, %src.addr6.5.051.case.2, %src.addr6.5.051.case.1, %src.addr6.5.051.case.0, %src.addr6.549.case.7, %src.addr6.549.case.6, %src.addr6.549.case.5, %src.addr6.549.case.4, %src.addr6.549.case.3, %src.addr6.549.case.2, %src.addr6.549.case.1, %src.addr6.549.case.0
  %src.addr6.657_0 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_0, i64 0, i64 %for.loop.idx373, i32 6
  %src.addr6.657_1 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_1, i64 0, i64 %for.loop.idx373, i32 6
  %src.addr6.657_2 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_2, i64 0, i64 %for.loop.idx373, i32 6
  %src.addr6.657_3 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_3, i64 0, i64 %for.loop.idx373, i32 6
  %src.addr6.657_4 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_4, i64 0, i64 %for.loop.idx373, i32 6
  %src.addr6.657_5 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_5, i64 0, i64 %for.loop.idx373, i32 6
  %src.addr6.657_6 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_6, i64 0, i64 %for.loop.idx373, i32 6
  %src.addr6.657_7 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_7, i64 0, i64 %for.loop.idx373, i32 6
  %dst.addr5.658 = getelementptr [8 x [4096 x %struct.dpkt_t]], [8 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 %for.loop.idx74, i64 %for.loop.idx373, i32 6
  %_0147 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_0, i64 0, i64 %for.loop.idx373, i32 6, i32 0, i32 0, i32 0
  %_1148 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_1, i64 0, i64 %for.loop.idx373, i32 6, i32 0, i32 0, i32 0
  %_2149 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_2, i64 0, i64 %for.loop.idx373, i32 6, i32 0, i32 0, i32 0
  %_3150 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_3, i64 0, i64 %for.loop.idx373, i32 6, i32 0, i32 0, i32 0
  %_4151 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_4, i64 0, i64 %for.loop.idx373, i32 6, i32 0, i32 0, i32 0
  %_5152 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_5, i64 0, i64 %for.loop.idx373, i32 6, i32 0, i32 0, i32 0
  %_6153 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_6, i64 0, i64 %for.loop.idx373, i32 6, i32 0, i32 0, i32 0
  %_7154 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_7, i64 0, i64 %for.loop.idx373, i32 6, i32 0, i32 0, i32 0
  switch i64 %for.loop.idx74, label %.default155 [
    i64 0, label %.case.0157
    i64 1, label %.case.1158
    i64 2, label %.case.2159
    i64 3, label %.case.3160
    i64 4, label %.case.4161
    i64 5, label %.case.5162
    i64 6, label %.case.6163
    i64 7, label %.exit156
  ]

.default155:                                      ; preds = %src.addr6.549.exit
  unreachable

.case.0157:                                       ; preds = %src.addr6.549.exit
  %_0165 = call i1 @fpga_fifo_exist_1(i8* %_0147)
  br i1 %_0165, label %src.addr6.657.case.0, label %.case.0219

.case.1158:                                       ; preds = %src.addr6.549.exit
  %_1166 = call i1 @fpga_fifo_exist_1(i8* %_1148)
  br i1 %_1166, label %src.addr6.657.case.1, label %.case.1220

.case.2159:                                       ; preds = %src.addr6.549.exit
  %_2167 = call i1 @fpga_fifo_exist_1(i8* %_2149)
  br i1 %_2167, label %src.addr6.657.case.2, label %.case.2221

.case.3160:                                       ; preds = %src.addr6.549.exit
  %_3168 = call i1 @fpga_fifo_exist_1(i8* %_3150)
  br i1 %_3168, label %src.addr6.657.case.3, label %.case.3222

.case.4161:                                       ; preds = %src.addr6.549.exit
  %_4169 = call i1 @fpga_fifo_exist_1(i8* %_4151)
  br i1 %_4169, label %src.addr6.657.case.4, label %.case.4223

.case.5162:                                       ; preds = %src.addr6.549.exit
  %_5170 = call i1 @fpga_fifo_exist_1(i8* %_5152)
  br i1 %_5170, label %src.addr6.657.case.5, label %.case.5224

.case.6163:                                       ; preds = %src.addr6.549.exit
  %_6171 = call i1 @fpga_fifo_exist_1(i8* %_6153)
  br i1 %_6171, label %src.addr6.657.case.6, label %.case.6225

.exit156:                                         ; preds = %src.addr6.549.exit
  %_7172 = call i1 @fpga_fifo_exist_1(i8* %_7154)
  br i1 %_7172, label %src.addr6.657.case.7, label %.exit218

src.addr6.657.case.0:                             ; preds = %.case.0157
  call void @streamcpy_hls.p0struct.ap_uint.16.17(%struct.ap_uint* %dst.addr5.658, %struct.ap_uint* %src.addr6.657_0)
  br label %src.addr6.657.exit

src.addr6.657.case.1:                             ; preds = %.case.1158
  call void @streamcpy_hls.p0struct.ap_uint.16.17(%struct.ap_uint* %dst.addr5.658, %struct.ap_uint* %src.addr6.657_1)
  br label %src.addr6.657.exit

src.addr6.657.case.2:                             ; preds = %.case.2159
  call void @streamcpy_hls.p0struct.ap_uint.16.17(%struct.ap_uint* %dst.addr5.658, %struct.ap_uint* %src.addr6.657_2)
  br label %src.addr6.657.exit

src.addr6.657.case.3:                             ; preds = %.case.3160
  call void @streamcpy_hls.p0struct.ap_uint.16.17(%struct.ap_uint* %dst.addr5.658, %struct.ap_uint* %src.addr6.657_3)
  br label %src.addr6.657.exit

src.addr6.657.case.4:                             ; preds = %.case.4161
  call void @streamcpy_hls.p0struct.ap_uint.16.17(%struct.ap_uint* %dst.addr5.658, %struct.ap_uint* %src.addr6.657_4)
  br label %src.addr6.657.exit

src.addr6.657.case.5:                             ; preds = %.case.5162
  call void @streamcpy_hls.p0struct.ap_uint.16.17(%struct.ap_uint* %dst.addr5.658, %struct.ap_uint* %src.addr6.657_5)
  br label %src.addr6.657.exit

src.addr6.657.case.6:                             ; preds = %.case.6163
  call void @streamcpy_hls.p0struct.ap_uint.16.17(%struct.ap_uint* %dst.addr5.658, %struct.ap_uint* %src.addr6.657_6)
  br label %src.addr6.657.exit

src.addr6.657.case.7:                             ; preds = %.exit156
  call void @streamcpy_hls.p0struct.ap_uint.16.17(%struct.ap_uint* %dst.addr5.658, %struct.ap_uint* %src.addr6.657_7)
  br label %src.addr6.657.exit

.case.0219:                                       ; preds = %.case.0157
  %src.addr6.6.059_02240 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_0, i64 0, i64 %for.loop.idx373, i32 6, i32 0
  %dst.addr5.6.0602248 = getelementptr [8 x [4096 x %struct.dpkt_t]], [8 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 0, i64 %for.loop.idx373, i32 6, i32 0
  %_0227 = call i1 @fpga_fifo_exist_1(i8* %_0147)
  br i1 %_0227, label %src.addr6.6.059.case.0, label %.case.0513

.case.1220:                                       ; preds = %.case.1158
  %src.addr6.6.059_12269 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_1, i64 0, i64 %for.loop.idx373, i32 6, i32 0
  %dst.addr5.6.0602276 = getelementptr [8 x [4096 x %struct.dpkt_t]], [8 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 1, i64 %for.loop.idx373, i32 6, i32 0
  %_1228 = call i1 @fpga_fifo_exist_1(i8* %_1148)
  br i1 %_1228, label %src.addr6.6.059.case.1, label %.case.1514

.case.2221:                                       ; preds = %.case.2159
  %src.addr6.6.059_22289 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_2, i64 0, i64 %for.loop.idx373, i32 6, i32 0
  %dst.addr5.6.0602295 = getelementptr [8 x [4096 x %struct.dpkt_t]], [8 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 2, i64 %for.loop.idx373, i32 6, i32 0
  %_2229 = call i1 @fpga_fifo_exist_1(i8* %_2149)
  br i1 %_2229, label %src.addr6.6.059.case.2, label %.case.2515

.case.3222:                                       ; preds = %.case.3160
  %src.addr6.6.059_32309 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_3, i64 0, i64 %for.loop.idx373, i32 6, i32 0
  %dst.addr5.6.0602314 = getelementptr [8 x [4096 x %struct.dpkt_t]], [8 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 3, i64 %for.loop.idx373, i32 6, i32 0
  %_3230 = call i1 @fpga_fifo_exist_1(i8* %_3150)
  br i1 %_3230, label %src.addr6.6.059.case.3, label %.case.3516

.case.4223:                                       ; preds = %.case.4161
  %src.addr6.6.059_42329 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_4, i64 0, i64 %for.loop.idx373, i32 6, i32 0
  %dst.addr5.6.0602333 = getelementptr [8 x [4096 x %struct.dpkt_t]], [8 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 4, i64 %for.loop.idx373, i32 6, i32 0
  %_4231 = call i1 @fpga_fifo_exist_1(i8* %_4151)
  br i1 %_4231, label %src.addr6.6.059.case.4, label %.case.4517

.case.5224:                                       ; preds = %.case.5162
  %src.addr6.6.059_52349 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_5, i64 0, i64 %for.loop.idx373, i32 6, i32 0
  %dst.addr5.6.0602352 = getelementptr [8 x [4096 x %struct.dpkt_t]], [8 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 5, i64 %for.loop.idx373, i32 6, i32 0
  %_5232 = call i1 @fpga_fifo_exist_1(i8* %_5152)
  br i1 %_5232, label %src.addr6.6.059.case.5, label %.case.5518

.case.6225:                                       ; preds = %.case.6163
  %src.addr6.6.059_62369 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_6, i64 0, i64 %for.loop.idx373, i32 6, i32 0
  %dst.addr5.6.0602371 = getelementptr [8 x [4096 x %struct.dpkt_t]], [8 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 6, i64 %for.loop.idx373, i32 6, i32 0
  %_6233 = call i1 @fpga_fifo_exist_1(i8* %_6153)
  br i1 %_6233, label %src.addr6.6.059.case.6, label %.case.6519

.exit218:                                         ; preds = %.exit156
  %src.addr6.6.059_7 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_7, i64 0, i64 %for.loop.idx373, i32 6, i32 0
  %dst.addr5.6.060 = getelementptr [8 x [4096 x %struct.dpkt_t]], [8 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 7, i64 %for.loop.idx373, i32 6, i32 0
  %_7234 = call i1 @fpga_fifo_exist_1(i8* %_7154)
  br i1 %_7234, label %src.addr6.6.059.case.7, label %.exit512

src.addr6.6.059.case.0:                           ; preds = %.case.0219
  call void @streamcpy_hls.p0struct.ap_int_base.18.19(%struct.ap_int_base* %dst.addr5.6.0602248, %struct.ap_int_base* %src.addr6.6.059_02240)
  br label %src.addr6.657.exit

src.addr6.6.059.case.1:                           ; preds = %.case.1220
  call void @streamcpy_hls.p0struct.ap_int_base.18.19(%struct.ap_int_base* %dst.addr5.6.0602276, %struct.ap_int_base* %src.addr6.6.059_12269)
  br label %src.addr6.657.exit

src.addr6.6.059.case.2:                           ; preds = %.case.2221
  call void @streamcpy_hls.p0struct.ap_int_base.18.19(%struct.ap_int_base* %dst.addr5.6.0602295, %struct.ap_int_base* %src.addr6.6.059_22289)
  br label %src.addr6.657.exit

src.addr6.6.059.case.3:                           ; preds = %.case.3222
  call void @streamcpy_hls.p0struct.ap_int_base.18.19(%struct.ap_int_base* %dst.addr5.6.0602314, %struct.ap_int_base* %src.addr6.6.059_32309)
  br label %src.addr6.657.exit

src.addr6.6.059.case.4:                           ; preds = %.case.4223
  call void @streamcpy_hls.p0struct.ap_int_base.18.19(%struct.ap_int_base* %dst.addr5.6.0602333, %struct.ap_int_base* %src.addr6.6.059_42329)
  br label %src.addr6.657.exit

src.addr6.6.059.case.5:                           ; preds = %.case.5224
  call void @streamcpy_hls.p0struct.ap_int_base.18.19(%struct.ap_int_base* %dst.addr5.6.0602352, %struct.ap_int_base* %src.addr6.6.059_52349)
  br label %src.addr6.657.exit

src.addr6.6.059.case.6:                           ; preds = %.case.6225
  call void @streamcpy_hls.p0struct.ap_int_base.18.19(%struct.ap_int_base* %dst.addr5.6.0602371, %struct.ap_int_base* %src.addr6.6.059_62369)
  br label %src.addr6.657.exit

src.addr6.6.059.case.7:                           ; preds = %.exit218
  call void @streamcpy_hls.p0struct.ap_int_base.18.19(%struct.ap_int_base* %dst.addr5.6.060, %struct.ap_int_base* %src.addr6.6.059_7)
  br label %src.addr6.657.exit

.case.0513:                                       ; preds = %.case.0219
  %src.addr6.6.0.061_02412 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_0, i64 0, i64 %for.loop.idx373, i32 6, i32 0, i32 0
  %dst.addr5.6.0.0622420 = getelementptr [8 x [4096 x %struct.dpkt_t]], [8 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 0, i64 %for.loop.idx373, i32 6, i32 0, i32 0
  %_0521 = call i1 @fpga_fifo_exist_1(i8* %_0147)
  br i1 %_0521, label %src.addr6.6.0.061.case.0, label %.case.0531

.case.1514:                                       ; preds = %.case.1220
  %src.addr6.6.0.061_12441 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_1, i64 0, i64 %for.loop.idx373, i32 6, i32 0, i32 0
  %dst.addr5.6.0.0622448 = getelementptr [8 x [4096 x %struct.dpkt_t]], [8 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 1, i64 %for.loop.idx373, i32 6, i32 0, i32 0
  %_1522 = call i1 @fpga_fifo_exist_1(i8* %_1148)
  br i1 %_1522, label %src.addr6.6.0.061.case.1, label %.case.1532

.case.2515:                                       ; preds = %.case.2221
  %src.addr6.6.0.061_22461 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_2, i64 0, i64 %for.loop.idx373, i32 6, i32 0, i32 0
  %dst.addr5.6.0.0622467 = getelementptr [8 x [4096 x %struct.dpkt_t]], [8 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 2, i64 %for.loop.idx373, i32 6, i32 0, i32 0
  %_2523 = call i1 @fpga_fifo_exist_1(i8* %_2149)
  br i1 %_2523, label %src.addr6.6.0.061.case.2, label %.case.2533

.case.3516:                                       ; preds = %.case.3222
  %src.addr6.6.0.061_32481 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_3, i64 0, i64 %for.loop.idx373, i32 6, i32 0, i32 0
  %dst.addr5.6.0.0622486 = getelementptr [8 x [4096 x %struct.dpkt_t]], [8 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 3, i64 %for.loop.idx373, i32 6, i32 0, i32 0
  %_3524 = call i1 @fpga_fifo_exist_1(i8* %_3150)
  br i1 %_3524, label %src.addr6.6.0.061.case.3, label %.case.3534

.case.4517:                                       ; preds = %.case.4223
  %src.addr6.6.0.061_42501 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_4, i64 0, i64 %for.loop.idx373, i32 6, i32 0, i32 0
  %dst.addr5.6.0.0622505 = getelementptr [8 x [4096 x %struct.dpkt_t]], [8 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 4, i64 %for.loop.idx373, i32 6, i32 0, i32 0
  %_4525 = call i1 @fpga_fifo_exist_1(i8* %_4151)
  br i1 %_4525, label %src.addr6.6.0.061.case.4, label %.case.4535

.case.5518:                                       ; preds = %.case.5224
  %src.addr6.6.0.061_52521 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_5, i64 0, i64 %for.loop.idx373, i32 6, i32 0, i32 0
  %dst.addr5.6.0.0622524 = getelementptr [8 x [4096 x %struct.dpkt_t]], [8 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 5, i64 %for.loop.idx373, i32 6, i32 0, i32 0
  %_5526 = call i1 @fpga_fifo_exist_1(i8* %_5152)
  br i1 %_5526, label %src.addr6.6.0.061.case.5, label %.case.5536

.case.6519:                                       ; preds = %.case.6225
  %src.addr6.6.0.061_62541 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_6, i64 0, i64 %for.loop.idx373, i32 6, i32 0, i32 0
  %dst.addr5.6.0.0622543 = getelementptr [8 x [4096 x %struct.dpkt_t]], [8 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 6, i64 %for.loop.idx373, i32 6, i32 0, i32 0
  %_6527 = call i1 @fpga_fifo_exist_1(i8* %_6153)
  br i1 %_6527, label %src.addr6.6.0.061.case.6, label %.case.6537

.exit512:                                         ; preds = %.exit218
  %src.addr6.6.0.061_7 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_7, i64 0, i64 %for.loop.idx373, i32 6, i32 0, i32 0
  %dst.addr5.6.0.062 = getelementptr [8 x [4096 x %struct.dpkt_t]], [8 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 7, i64 %for.loop.idx373, i32 6, i32 0, i32 0
  %_7528 = call i1 @fpga_fifo_exist_1(i8* %_7154)
  br i1 %_7528, label %src.addr6.6.0.061.case.7, label %.case.7538

src.addr6.6.0.061.case.0:                         ; preds = %.case.0513
  call void @streamcpy_hls.p0struct.ssdm_int.20.21(%struct.ssdm_int* %dst.addr5.6.0.0622420, %struct.ssdm_int* %src.addr6.6.0.061_02412)
  br label %src.addr6.657.exit

src.addr6.6.0.061.case.1:                         ; preds = %.case.1514
  call void @streamcpy_hls.p0struct.ssdm_int.20.21(%struct.ssdm_int* %dst.addr5.6.0.0622448, %struct.ssdm_int* %src.addr6.6.0.061_12441)
  br label %src.addr6.657.exit

src.addr6.6.0.061.case.2:                         ; preds = %.case.2515
  call void @streamcpy_hls.p0struct.ssdm_int.20.21(%struct.ssdm_int* %dst.addr5.6.0.0622467, %struct.ssdm_int* %src.addr6.6.0.061_22461)
  br label %src.addr6.657.exit

src.addr6.6.0.061.case.3:                         ; preds = %.case.3516
  call void @streamcpy_hls.p0struct.ssdm_int.20.21(%struct.ssdm_int* %dst.addr5.6.0.0622486, %struct.ssdm_int* %src.addr6.6.0.061_32481)
  br label %src.addr6.657.exit

src.addr6.6.0.061.case.4:                         ; preds = %.case.4517
  call void @streamcpy_hls.p0struct.ssdm_int.20.21(%struct.ssdm_int* %dst.addr5.6.0.0622505, %struct.ssdm_int* %src.addr6.6.0.061_42501)
  br label %src.addr6.657.exit

src.addr6.6.0.061.case.5:                         ; preds = %.case.5518
  call void @streamcpy_hls.p0struct.ssdm_int.20.21(%struct.ssdm_int* %dst.addr5.6.0.0622524, %struct.ssdm_int* %src.addr6.6.0.061_52521)
  br label %src.addr6.657.exit

src.addr6.6.0.061.case.6:                         ; preds = %.case.6519
  call void @streamcpy_hls.p0struct.ssdm_int.20.21(%struct.ssdm_int* %dst.addr5.6.0.0622543, %struct.ssdm_int* %src.addr6.6.0.061_62541)
  br label %src.addr6.657.exit

src.addr6.6.0.061.case.7:                         ; preds = %.exit512
  call void @streamcpy_hls.p0struct.ssdm_int.20.21(%struct.ssdm_int* %dst.addr5.6.0.062, %struct.ssdm_int* %src.addr6.6.0.061_7)
  br label %src.addr6.657.exit

.case.0531:                                       ; preds = %.case.0513
  %dst.addr5.6.0.0.0642584 = getelementptr [8 x [4096 x %struct.dpkt_t]], [8 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 0, i64 %for.loop.idx373, i32 6, i32 0, i32 0, i32 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr5.6.0.0.0642584, i8* align 1 %_0147, i64 1, i1 false)
  br label %src.addr6.657.exit

.case.1532:                                       ; preds = %.case.1514
  %dst.addr5.6.0.0.0642587 = getelementptr [8 x [4096 x %struct.dpkt_t]], [8 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 1, i64 %for.loop.idx373, i32 6, i32 0, i32 0, i32 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr5.6.0.0.0642587, i8* align 1 %_1148, i64 1, i1 false)
  br label %src.addr6.657.exit

.case.2533:                                       ; preds = %.case.2515
  %dst.addr5.6.0.0.0642590 = getelementptr [8 x [4096 x %struct.dpkt_t]], [8 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 2, i64 %for.loop.idx373, i32 6, i32 0, i32 0, i32 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr5.6.0.0.0642590, i8* align 1 %_2149, i64 1, i1 false)
  br label %src.addr6.657.exit

.case.3534:                                       ; preds = %.case.3516
  %dst.addr5.6.0.0.0642593 = getelementptr [8 x [4096 x %struct.dpkt_t]], [8 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 3, i64 %for.loop.idx373, i32 6, i32 0, i32 0, i32 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr5.6.0.0.0642593, i8* align 1 %_3150, i64 1, i1 false)
  br label %src.addr6.657.exit

.case.4535:                                       ; preds = %.case.4517
  %dst.addr5.6.0.0.0642596 = getelementptr [8 x [4096 x %struct.dpkt_t]], [8 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 4, i64 %for.loop.idx373, i32 6, i32 0, i32 0, i32 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr5.6.0.0.0642596, i8* align 1 %_4151, i64 1, i1 false)
  br label %src.addr6.657.exit

.case.5536:                                       ; preds = %.case.5518
  %dst.addr5.6.0.0.0642599 = getelementptr [8 x [4096 x %struct.dpkt_t]], [8 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 5, i64 %for.loop.idx373, i32 6, i32 0, i32 0, i32 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr5.6.0.0.0642599, i8* align 1 %_5152, i64 1, i1 false)
  br label %src.addr6.657.exit

.case.6537:                                       ; preds = %.case.6519
  %dst.addr5.6.0.0.0642602 = getelementptr [8 x [4096 x %struct.dpkt_t]], [8 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 6, i64 %for.loop.idx373, i32 6, i32 0, i32 0, i32 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr5.6.0.0.0642602, i8* align 1 %_6153, i64 1, i1 false)
  br label %src.addr6.657.exit

.case.7538:                                       ; preds = %.exit512
  %dst.addr5.6.0.0.064 = getelementptr [8 x [4096 x %struct.dpkt_t]], [8 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 7, i64 %for.loop.idx373, i32 6, i32 0, i32 0, i32 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr5.6.0.0.064, i8* align 1 %_7154, i64 1, i1 false)
  br label %src.addr6.657.exit

src.addr6.657.exit:                               ; preds = %.case.7538, %.case.6537, %.case.5536, %.case.4535, %.case.3534, %.case.2533, %.case.1532, %.case.0531, %src.addr6.6.0.061.case.7, %src.addr6.6.0.061.case.6, %src.addr6.6.0.061.case.5, %src.addr6.6.0.061.case.4, %src.addr6.6.0.061.case.3, %src.addr6.6.0.061.case.2, %src.addr6.6.0.061.case.1, %src.addr6.6.0.061.case.0, %src.addr6.6.059.case.7, %src.addr6.6.059.case.6, %src.addr6.6.059.case.5, %src.addr6.6.059.case.4, %src.addr6.6.059.case.3, %src.addr6.6.059.case.2, %src.addr6.6.059.case.1, %src.addr6.6.059.case.0, %src.addr6.657.case.7, %src.addr6.657.case.6, %src.addr6.657.case.5, %src.addr6.657.case.4, %src.addr6.657.case.3, %src.addr6.657.case.2, %src.addr6.657.case.1, %src.addr6.657.case.0
  %src.addr6.765_0 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_0, i64 0, i64 %for.loop.idx373, i32 7
  %src.addr6.765_1 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_1, i64 0, i64 %for.loop.idx373, i32 7
  %src.addr6.765_2 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_2, i64 0, i64 %for.loop.idx373, i32 7
  %src.addr6.765_3 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_3, i64 0, i64 %for.loop.idx373, i32 7
  %src.addr6.765_4 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_4, i64 0, i64 %for.loop.idx373, i32 7
  %src.addr6.765_5 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_5, i64 0, i64 %for.loop.idx373, i32 7
  %src.addr6.765_6 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_6, i64 0, i64 %for.loop.idx373, i32 7
  %src.addr6.765_7 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_7, i64 0, i64 %for.loop.idx373, i32 7
  %dst.addr5.766 = getelementptr [8 x [4096 x %struct.dpkt_t]], [8 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 %for.loop.idx74, i64 %for.loop.idx373, i32 7
  %_0173 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_0, i64 0, i64 %for.loop.idx373, i32 7, i32 0, i32 0, i32 0
  %_1174 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_1, i64 0, i64 %for.loop.idx373, i32 7, i32 0, i32 0, i32 0
  %_2175 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_2, i64 0, i64 %for.loop.idx373, i32 7, i32 0, i32 0, i32 0
  %_3176 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_3, i64 0, i64 %for.loop.idx373, i32 7, i32 0, i32 0, i32 0
  %_4177 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_4, i64 0, i64 %for.loop.idx373, i32 7, i32 0, i32 0, i32 0
  %_5178 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_5, i64 0, i64 %for.loop.idx373, i32 7, i32 0, i32 0, i32 0
  %_6179 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_6, i64 0, i64 %for.loop.idx373, i32 7, i32 0, i32 0, i32 0
  %_7180 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_7, i64 0, i64 %for.loop.idx373, i32 7, i32 0, i32 0, i32 0
  switch i64 %for.loop.idx74, label %.default181 [
    i64 0, label %.case.0183
    i64 1, label %.case.1184
    i64 2, label %.case.2185
    i64 3, label %.case.3186
    i64 4, label %.case.4187
    i64 5, label %.case.5188
    i64 6, label %.case.6189
    i64 7, label %.exit182
  ]

.default181:                                      ; preds = %src.addr6.657.exit
  unreachable

.case.0183:                                       ; preds = %src.addr6.657.exit
  %_0191 = call i1 @fpga_fifo_exist_1(i8* %_0173)
  br i1 %_0191, label %src.addr6.765.case.0, label %.case.0201

.case.1184:                                       ; preds = %src.addr6.657.exit
  %_1192 = call i1 @fpga_fifo_exist_1(i8* %_1174)
  br i1 %_1192, label %src.addr6.765.case.1, label %.case.1202

.case.2185:                                       ; preds = %src.addr6.657.exit
  %_2193 = call i1 @fpga_fifo_exist_1(i8* %_2175)
  br i1 %_2193, label %src.addr6.765.case.2, label %.case.2203

.case.3186:                                       ; preds = %src.addr6.657.exit
  %_3194 = call i1 @fpga_fifo_exist_1(i8* %_3176)
  br i1 %_3194, label %src.addr6.765.case.3, label %.case.3204

.case.4187:                                       ; preds = %src.addr6.657.exit
  %_4195 = call i1 @fpga_fifo_exist_1(i8* %_4177)
  br i1 %_4195, label %src.addr6.765.case.4, label %.case.4205

.case.5188:                                       ; preds = %src.addr6.657.exit
  %_5196 = call i1 @fpga_fifo_exist_1(i8* %_5178)
  br i1 %_5196, label %src.addr6.765.case.5, label %.case.5206

.case.6189:                                       ; preds = %src.addr6.657.exit
  %_6197 = call i1 @fpga_fifo_exist_1(i8* %_6179)
  br i1 %_6197, label %src.addr6.765.case.6, label %.case.6207

.exit182:                                         ; preds = %src.addr6.657.exit
  %_7198 = call i1 @fpga_fifo_exist_1(i8* %_7180)
  br i1 %_7198, label %src.addr6.765.case.7, label %.exit200

src.addr6.765.case.0:                             ; preds = %.case.0183
  call void @streamcpy_hls.p0struct.ap_uint.16.17(%struct.ap_uint* %dst.addr5.766, %struct.ap_uint* %src.addr6.765_0)
  br label %for.loop.head1

src.addr6.765.case.1:                             ; preds = %.case.1184
  call void @streamcpy_hls.p0struct.ap_uint.16.17(%struct.ap_uint* %dst.addr5.766, %struct.ap_uint* %src.addr6.765_1)
  br label %for.loop.head1

src.addr6.765.case.2:                             ; preds = %.case.2185
  call void @streamcpy_hls.p0struct.ap_uint.16.17(%struct.ap_uint* %dst.addr5.766, %struct.ap_uint* %src.addr6.765_2)
  br label %for.loop.head1

src.addr6.765.case.3:                             ; preds = %.case.3186
  call void @streamcpy_hls.p0struct.ap_uint.16.17(%struct.ap_uint* %dst.addr5.766, %struct.ap_uint* %src.addr6.765_3)
  br label %for.loop.head1

src.addr6.765.case.4:                             ; preds = %.case.4187
  call void @streamcpy_hls.p0struct.ap_uint.16.17(%struct.ap_uint* %dst.addr5.766, %struct.ap_uint* %src.addr6.765_4)
  br label %for.loop.head1

src.addr6.765.case.5:                             ; preds = %.case.5188
  call void @streamcpy_hls.p0struct.ap_uint.16.17(%struct.ap_uint* %dst.addr5.766, %struct.ap_uint* %src.addr6.765_5)
  br label %for.loop.head1

src.addr6.765.case.6:                             ; preds = %.case.6189
  call void @streamcpy_hls.p0struct.ap_uint.16.17(%struct.ap_uint* %dst.addr5.766, %struct.ap_uint* %src.addr6.765_6)
  br label %for.loop.head1

src.addr6.765.case.7:                             ; preds = %.exit182
  call void @streamcpy_hls.p0struct.ap_uint.16.17(%struct.ap_uint* %dst.addr5.766, %struct.ap_uint* %src.addr6.765_7)
  br label %for.loop.head1

.case.0201:                                       ; preds = %.case.0183
  %src.addr6.7.067_02612 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_0, i64 0, i64 %for.loop.idx373, i32 7, i32 0
  %dst.addr5.7.0682620 = getelementptr [8 x [4096 x %struct.dpkt_t]], [8 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 0, i64 %for.loop.idx373, i32 7, i32 0
  %_0209 = call i1 @fpga_fifo_exist_1(i8* %_0173)
  br i1 %_0209, label %src.addr6.7.067.case.0, label %.case.0541

.case.1202:                                       ; preds = %.case.1184
  %src.addr6.7.067_12641 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_1, i64 0, i64 %for.loop.idx373, i32 7, i32 0
  %dst.addr5.7.0682648 = getelementptr [8 x [4096 x %struct.dpkt_t]], [8 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 1, i64 %for.loop.idx373, i32 7, i32 0
  %_1210 = call i1 @fpga_fifo_exist_1(i8* %_1174)
  br i1 %_1210, label %src.addr6.7.067.case.1, label %.case.1542

.case.2203:                                       ; preds = %.case.2185
  %src.addr6.7.067_22661 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_2, i64 0, i64 %for.loop.idx373, i32 7, i32 0
  %dst.addr5.7.0682667 = getelementptr [8 x [4096 x %struct.dpkt_t]], [8 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 2, i64 %for.loop.idx373, i32 7, i32 0
  %_2211 = call i1 @fpga_fifo_exist_1(i8* %_2175)
  br i1 %_2211, label %src.addr6.7.067.case.2, label %.case.2543

.case.3204:                                       ; preds = %.case.3186
  %src.addr6.7.067_32681 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_3, i64 0, i64 %for.loop.idx373, i32 7, i32 0
  %dst.addr5.7.0682686 = getelementptr [8 x [4096 x %struct.dpkt_t]], [8 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 3, i64 %for.loop.idx373, i32 7, i32 0
  %_3212 = call i1 @fpga_fifo_exist_1(i8* %_3176)
  br i1 %_3212, label %src.addr6.7.067.case.3, label %.case.3544

.case.4205:                                       ; preds = %.case.4187
  %src.addr6.7.067_42701 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_4, i64 0, i64 %for.loop.idx373, i32 7, i32 0
  %dst.addr5.7.0682705 = getelementptr [8 x [4096 x %struct.dpkt_t]], [8 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 4, i64 %for.loop.idx373, i32 7, i32 0
  %_4213 = call i1 @fpga_fifo_exist_1(i8* %_4177)
  br i1 %_4213, label %src.addr6.7.067.case.4, label %.case.4545

.case.5206:                                       ; preds = %.case.5188
  %src.addr6.7.067_52721 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_5, i64 0, i64 %for.loop.idx373, i32 7, i32 0
  %dst.addr5.7.0682724 = getelementptr [8 x [4096 x %struct.dpkt_t]], [8 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 5, i64 %for.loop.idx373, i32 7, i32 0
  %_5214 = call i1 @fpga_fifo_exist_1(i8* %_5178)
  br i1 %_5214, label %src.addr6.7.067.case.5, label %.case.5546

.case.6207:                                       ; preds = %.case.6189
  %src.addr6.7.067_62741 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_6, i64 0, i64 %for.loop.idx373, i32 7, i32 0
  %dst.addr5.7.0682743 = getelementptr [8 x [4096 x %struct.dpkt_t]], [8 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 6, i64 %for.loop.idx373, i32 7, i32 0
  %_6215 = call i1 @fpga_fifo_exist_1(i8* %_6179)
  br i1 %_6215, label %src.addr6.7.067.case.6, label %.case.6547

.exit200:                                         ; preds = %.exit182
  %src.addr6.7.067_7 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_7, i64 0, i64 %for.loop.idx373, i32 7, i32 0
  %dst.addr5.7.068 = getelementptr [8 x [4096 x %struct.dpkt_t]], [8 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 7, i64 %for.loop.idx373, i32 7, i32 0
  %_7216 = call i1 @fpga_fifo_exist_1(i8* %_7180)
  br i1 %_7216, label %src.addr6.7.067.case.7, label %.exit540

src.addr6.7.067.case.0:                           ; preds = %.case.0201
  call void @streamcpy_hls.p0struct.ap_int_base.18.19(%struct.ap_int_base* %dst.addr5.7.0682620, %struct.ap_int_base* %src.addr6.7.067_02612)
  br label %for.loop.head1

src.addr6.7.067.case.1:                           ; preds = %.case.1202
  call void @streamcpy_hls.p0struct.ap_int_base.18.19(%struct.ap_int_base* %dst.addr5.7.0682648, %struct.ap_int_base* %src.addr6.7.067_12641)
  br label %for.loop.head1

src.addr6.7.067.case.2:                           ; preds = %.case.2203
  call void @streamcpy_hls.p0struct.ap_int_base.18.19(%struct.ap_int_base* %dst.addr5.7.0682667, %struct.ap_int_base* %src.addr6.7.067_22661)
  br label %for.loop.head1

src.addr6.7.067.case.3:                           ; preds = %.case.3204
  call void @streamcpy_hls.p0struct.ap_int_base.18.19(%struct.ap_int_base* %dst.addr5.7.0682686, %struct.ap_int_base* %src.addr6.7.067_32681)
  br label %for.loop.head1

src.addr6.7.067.case.4:                           ; preds = %.case.4205
  call void @streamcpy_hls.p0struct.ap_int_base.18.19(%struct.ap_int_base* %dst.addr5.7.0682705, %struct.ap_int_base* %src.addr6.7.067_42701)
  br label %for.loop.head1

src.addr6.7.067.case.5:                           ; preds = %.case.5206
  call void @streamcpy_hls.p0struct.ap_int_base.18.19(%struct.ap_int_base* %dst.addr5.7.0682724, %struct.ap_int_base* %src.addr6.7.067_52721)
  br label %for.loop.head1

src.addr6.7.067.case.6:                           ; preds = %.case.6207
  call void @streamcpy_hls.p0struct.ap_int_base.18.19(%struct.ap_int_base* %dst.addr5.7.0682743, %struct.ap_int_base* %src.addr6.7.067_62741)
  br label %for.loop.head1

src.addr6.7.067.case.7:                           ; preds = %.exit200
  call void @streamcpy_hls.p0struct.ap_int_base.18.19(%struct.ap_int_base* %dst.addr5.7.068, %struct.ap_int_base* %src.addr6.7.067_7)
  br label %for.loop.head1

.case.0541:                                       ; preds = %.case.0201
  %src.addr6.7.0.069_02784 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_0, i64 0, i64 %for.loop.idx373, i32 7, i32 0, i32 0
  %dst.addr5.7.0.0702792 = getelementptr [8 x [4096 x %struct.dpkt_t]], [8 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 0, i64 %for.loop.idx373, i32 7, i32 0, i32 0
  %_0549 = call i1 @fpga_fifo_exist_1(i8* %_0173)
  br i1 %_0549, label %src.addr6.7.0.069.case.0, label %.case.0559

.case.1542:                                       ; preds = %.case.1202
  %src.addr6.7.0.069_12813 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_1, i64 0, i64 %for.loop.idx373, i32 7, i32 0, i32 0
  %dst.addr5.7.0.0702820 = getelementptr [8 x [4096 x %struct.dpkt_t]], [8 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 1, i64 %for.loop.idx373, i32 7, i32 0, i32 0
  %_1550 = call i1 @fpga_fifo_exist_1(i8* %_1174)
  br i1 %_1550, label %src.addr6.7.0.069.case.1, label %.case.1560

.case.2543:                                       ; preds = %.case.2203
  %src.addr6.7.0.069_22833 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_2, i64 0, i64 %for.loop.idx373, i32 7, i32 0, i32 0
  %dst.addr5.7.0.0702839 = getelementptr [8 x [4096 x %struct.dpkt_t]], [8 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 2, i64 %for.loop.idx373, i32 7, i32 0, i32 0
  %_2551 = call i1 @fpga_fifo_exist_1(i8* %_2175)
  br i1 %_2551, label %src.addr6.7.0.069.case.2, label %.case.2561

.case.3544:                                       ; preds = %.case.3204
  %src.addr6.7.0.069_32853 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_3, i64 0, i64 %for.loop.idx373, i32 7, i32 0, i32 0
  %dst.addr5.7.0.0702858 = getelementptr [8 x [4096 x %struct.dpkt_t]], [8 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 3, i64 %for.loop.idx373, i32 7, i32 0, i32 0
  %_3552 = call i1 @fpga_fifo_exist_1(i8* %_3176)
  br i1 %_3552, label %src.addr6.7.0.069.case.3, label %.case.3562

.case.4545:                                       ; preds = %.case.4205
  %src.addr6.7.0.069_42873 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_4, i64 0, i64 %for.loop.idx373, i32 7, i32 0, i32 0
  %dst.addr5.7.0.0702877 = getelementptr [8 x [4096 x %struct.dpkt_t]], [8 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 4, i64 %for.loop.idx373, i32 7, i32 0, i32 0
  %_4553 = call i1 @fpga_fifo_exist_1(i8* %_4177)
  br i1 %_4553, label %src.addr6.7.0.069.case.4, label %.case.4563

.case.5546:                                       ; preds = %.case.5206
  %src.addr6.7.0.069_52893 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_5, i64 0, i64 %for.loop.idx373, i32 7, i32 0, i32 0
  %dst.addr5.7.0.0702896 = getelementptr [8 x [4096 x %struct.dpkt_t]], [8 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 5, i64 %for.loop.idx373, i32 7, i32 0, i32 0
  %_5554 = call i1 @fpga_fifo_exist_1(i8* %_5178)
  br i1 %_5554, label %src.addr6.7.0.069.case.5, label %.case.5564

.case.6547:                                       ; preds = %.case.6207
  %src.addr6.7.0.069_62913 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_6, i64 0, i64 %for.loop.idx373, i32 7, i32 0, i32 0
  %dst.addr5.7.0.0702915 = getelementptr [8 x [4096 x %struct.dpkt_t]], [8 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 6, i64 %for.loop.idx373, i32 7, i32 0, i32 0
  %_6555 = call i1 @fpga_fifo_exist_1(i8* %_6179)
  br i1 %_6555, label %src.addr6.7.0.069.case.6, label %.case.6565

.exit540:                                         ; preds = %.exit200
  %src.addr6.7.0.069_7 = getelementptr [4096 x %struct.dpkt_t], [4096 x %struct.dpkt_t]* %_7, i64 0, i64 %for.loop.idx373, i32 7, i32 0, i32 0
  %dst.addr5.7.0.070 = getelementptr [8 x [4096 x %struct.dpkt_t]], [8 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 7, i64 %for.loop.idx373, i32 7, i32 0, i32 0
  %_7556 = call i1 @fpga_fifo_exist_1(i8* %_7180)
  br i1 %_7556, label %src.addr6.7.0.069.case.7, label %.case.7566

src.addr6.7.0.069.case.0:                         ; preds = %.case.0541
  call void @streamcpy_hls.p0struct.ssdm_int.20.21(%struct.ssdm_int* %dst.addr5.7.0.0702792, %struct.ssdm_int* %src.addr6.7.0.069_02784)
  br label %for.loop.head1

src.addr6.7.0.069.case.1:                         ; preds = %.case.1542
  call void @streamcpy_hls.p0struct.ssdm_int.20.21(%struct.ssdm_int* %dst.addr5.7.0.0702820, %struct.ssdm_int* %src.addr6.7.0.069_12813)
  br label %for.loop.head1

src.addr6.7.0.069.case.2:                         ; preds = %.case.2543
  call void @streamcpy_hls.p0struct.ssdm_int.20.21(%struct.ssdm_int* %dst.addr5.7.0.0702839, %struct.ssdm_int* %src.addr6.7.0.069_22833)
  br label %for.loop.head1

src.addr6.7.0.069.case.3:                         ; preds = %.case.3544
  call void @streamcpy_hls.p0struct.ssdm_int.20.21(%struct.ssdm_int* %dst.addr5.7.0.0702858, %struct.ssdm_int* %src.addr6.7.0.069_32853)
  br label %for.loop.head1

src.addr6.7.0.069.case.4:                         ; preds = %.case.4545
  call void @streamcpy_hls.p0struct.ssdm_int.20.21(%struct.ssdm_int* %dst.addr5.7.0.0702877, %struct.ssdm_int* %src.addr6.7.0.069_42873)
  br label %for.loop.head1

src.addr6.7.0.069.case.5:                         ; preds = %.case.5546
  call void @streamcpy_hls.p0struct.ssdm_int.20.21(%struct.ssdm_int* %dst.addr5.7.0.0702896, %struct.ssdm_int* %src.addr6.7.0.069_52893)
  br label %for.loop.head1

src.addr6.7.0.069.case.6:                         ; preds = %.case.6547
  call void @streamcpy_hls.p0struct.ssdm_int.20.21(%struct.ssdm_int* %dst.addr5.7.0.0702915, %struct.ssdm_int* %src.addr6.7.0.069_62913)
  br label %for.loop.head1

src.addr6.7.0.069.case.7:                         ; preds = %.exit540
  call void @streamcpy_hls.p0struct.ssdm_int.20.21(%struct.ssdm_int* %dst.addr5.7.0.070, %struct.ssdm_int* %src.addr6.7.0.069_7)
  br label %for.loop.head1

.case.0559:                                       ; preds = %.case.0541
  %dst.addr5.7.0.0.0722956 = getelementptr [8 x [4096 x %struct.dpkt_t]], [8 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 0, i64 %for.loop.idx373, i32 7, i32 0, i32 0, i32 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr5.7.0.0.0722956, i8* align 1 %_0173, i64 1, i1 false)
  br label %for.loop.head1

.case.1560:                                       ; preds = %.case.1542
  %dst.addr5.7.0.0.0722959 = getelementptr [8 x [4096 x %struct.dpkt_t]], [8 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 1, i64 %for.loop.idx373, i32 7, i32 0, i32 0, i32 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr5.7.0.0.0722959, i8* align 1 %_1174, i64 1, i1 false)
  br label %for.loop.head1

.case.2561:                                       ; preds = %.case.2543
  %dst.addr5.7.0.0.0722962 = getelementptr [8 x [4096 x %struct.dpkt_t]], [8 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 2, i64 %for.loop.idx373, i32 7, i32 0, i32 0, i32 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr5.7.0.0.0722962, i8* align 1 %_2175, i64 1, i1 false)
  br label %for.loop.head1

.case.3562:                                       ; preds = %.case.3544
  %dst.addr5.7.0.0.0722965 = getelementptr [8 x [4096 x %struct.dpkt_t]], [8 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 3, i64 %for.loop.idx373, i32 7, i32 0, i32 0, i32 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr5.7.0.0.0722965, i8* align 1 %_3176, i64 1, i1 false)
  br label %for.loop.head1

.case.4563:                                       ; preds = %.case.4545
  %dst.addr5.7.0.0.0722968 = getelementptr [8 x [4096 x %struct.dpkt_t]], [8 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 4, i64 %for.loop.idx373, i32 7, i32 0, i32 0, i32 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr5.7.0.0.0722968, i8* align 1 %_4177, i64 1, i1 false)
  br label %for.loop.head1

.case.5564:                                       ; preds = %.case.5546
  %dst.addr5.7.0.0.0722971 = getelementptr [8 x [4096 x %struct.dpkt_t]], [8 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 5, i64 %for.loop.idx373, i32 7, i32 0, i32 0, i32 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr5.7.0.0.0722971, i8* align 1 %_5178, i64 1, i1 false)
  br label %for.loop.head1

.case.6565:                                       ; preds = %.case.6547
  %dst.addr5.7.0.0.0722974 = getelementptr [8 x [4096 x %struct.dpkt_t]], [8 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 6, i64 %for.loop.idx373, i32 7, i32 0, i32 0, i32 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr5.7.0.0.0722974, i8* align 1 %_6179, i64 1, i1 false)
  br label %for.loop.head1

.case.7566:                                       ; preds = %.exit540
  %dst.addr5.7.0.0.072 = getelementptr [8 x [4096 x %struct.dpkt_t]], [8 x [4096 x %struct.dpkt_t]]* %0, i64 0, i64 7, i64 %for.loop.idx373, i32 7, i32 0, i32 0, i32 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst.addr5.7.0.0.072, i8* align 1 %_7180, i64 1, i1 false)
  br label %for.loop.head1

for.loop.head1:                                   ; preds = %.case.7566, %.case.6565, %.case.5564, %.case.4563, %.case.3562, %.case.2561, %.case.1560, %.case.0559, %src.addr6.7.0.069.case.7, %src.addr6.7.0.069.case.6, %src.addr6.7.0.069.case.5, %src.addr6.7.0.069.case.4, %src.addr6.7.0.069.case.3, %src.addr6.7.0.069.case.2, %src.addr6.7.0.069.case.1, %src.addr6.7.0.069.case.0, %src.addr6.7.067.case.7, %src.addr6.7.067.case.6, %src.addr6.7.067.case.5, %src.addr6.7.067.case.4, %src.addr6.7.067.case.3, %src.addr6.7.067.case.2, %src.addr6.7.067.case.1, %src.addr6.7.067.case.0, %src.addr6.765.case.7, %src.addr6.765.case.6, %src.addr6.765.case.5, %src.addr6.765.case.4, %src.addr6.765.case.3, %src.addr6.765.case.2, %src.addr6.765.case.1, %src.addr6.765.case.0
  %for.loop.idx3.next = add nuw nsw i64 %for.loop.idx373, 1
  %exitcond = icmp ne i64 %for.loop.idx3.next, 4096
  br i1 %exitcond, label %for.loop2, label %for.loop.split

for.loop.split:                                   ; preds = %for.loop.head1
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx74, 1
  %exitcond75 = icmp ne i64 %for.loop.idx.next, 8
  br i1 %exitcond75, label %for.loop, label %ret

ret:                                              ; preds = %for.loop.split, %entry
  ret void
}

; Function Attrs: noinline
define internal void @copy_out(i32* "orig.arg.no"="0", i32* noalias readonly align 512 "orig.arg.no"="1", i1* "orig.arg.no"="2", i1* noalias readonly align 512 "orig.arg.no"="3", [8 x [4096 x %struct.dpkt_t]]* "orig.arg.no"="4", [4096 x %struct.dpkt_t]* noalias "orig.arg.no"="5" %_0, [4096 x %struct.dpkt_t]* noalias "orig.arg.no"="5" %_1, [4096 x %struct.dpkt_t]* noalias "orig.arg.no"="5" %_2, [4096 x %struct.dpkt_t]* noalias "orig.arg.no"="5" %_3, [4096 x %struct.dpkt_t]* noalias "orig.arg.no"="5" %_4, [4096 x %struct.dpkt_t]* noalias "orig.arg.no"="5" %_5, [4096 x %struct.dpkt_t]* noalias "orig.arg.no"="5" %_6, [4096 x %struct.dpkt_t]* noalias "orig.arg.no"="5" %_7) #6 {
entry:
  call fastcc void @onebyonecpy_hls.p0i32(i32* %0, i32* align 512 %1)
  call fastcc void @onebyonecpy_hls.p0i1(i1* %2, i1* align 512 %3)
  call void @onebyonecpy_hls.p0a8a4096struct.dpkt_t.15.22([8 x [4096 x %struct.dpkt_t]]* %4, [4096 x %struct.dpkt_t]* %_0, [4096 x %struct.dpkt_t]* %_1, [4096 x %struct.dpkt_t]* %_2, [4096 x %struct.dpkt_t]* %_3, [4096 x %struct.dpkt_t]* %_4, [4096 x %struct.dpkt_t]* %_5, [4096 x %struct.dpkt_t]* %_6, [4096 x %struct.dpkt_t]* %_7)
  ret void
}

declare void @apatb_BFS_Gather_hw(i8, i32*, i1*, [4096 x %struct.dpkt_t]*, [4096 x %struct.dpkt_t]*, [4096 x %struct.dpkt_t]*, [4096 x %struct.dpkt_t]*, [4096 x %struct.dpkt_t]*, [4096 x %struct.dpkt_t]*, [4096 x %struct.dpkt_t]*, [4096 x %struct.dpkt_t]*)

define void @BFS_Gather_hw_stub_wrapper(i8, i32*, i1*, [4096 x %struct.dpkt_t]*, [4096 x %struct.dpkt_t]*, [4096 x %struct.dpkt_t]*, [4096 x %struct.dpkt_t]*, [4096 x %struct.dpkt_t]*, [4096 x %struct.dpkt_t]*, [4096 x %struct.dpkt_t]*, [4096 x %struct.dpkt_t]*) #7 {
entry:
  %11 = alloca [8 x [4096 x %struct.dpkt_t]]
  call void @copy_out(i32* null, i32* %1, i1* null, i1* %2, [8 x [4096 x %struct.dpkt_t]]* %11, [4096 x %struct.dpkt_t]* %3, [4096 x %struct.dpkt_t]* %4, [4096 x %struct.dpkt_t]* %5, [4096 x %struct.dpkt_t]* %6, [4096 x %struct.dpkt_t]* %7, [4096 x %struct.dpkt_t]* %8, [4096 x %struct.dpkt_t]* %9, [4096 x %struct.dpkt_t]* %10)
  %12 = bitcast [8 x [4096 x %struct.dpkt_t]]* %11 to [4096 x %struct.dpkt_t]*
  call void @BFS_Gather_hw_stub(i8 %0, i32* %1, i1* %2, [4096 x %struct.dpkt_t]* %12)
  call void @copy_in(i32* null, i32* %1, i1* null, i1* %2, [8 x [4096 x %struct.dpkt_t]]* %11, [4096 x %struct.dpkt_t]* %3, [4096 x %struct.dpkt_t]* %4, [4096 x %struct.dpkt_t]* %5, [4096 x %struct.dpkt_t]* %6, [4096 x %struct.dpkt_t]* %7, [4096 x %struct.dpkt_t]* %8, [4096 x %struct.dpkt_t]* %9, [4096 x %struct.dpkt_t]* %10)
  ret void
}

declare void @BFS_Gather_hw_stub(i8, i32*, i1*, [4096 x %struct.dpkt_t]*)

declare i1 @fpga_fifo_not_empty_1(i8*)

declare void @fpga_fifo_pop_1(i8*, i8*)

declare void @fpga_fifo_push_1(i8*, i8*)

attributes #0 = { noinline "fpga.wrapper.func"="wrapper" }
attributes #1 = { argmemonly noinline "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #2 = { argmemonly nounwind }
attributes #3 = { argmemonly noinline "fpga.wrapper.func"="streamcpy_hls" }
attributes #4 = { noinline "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #5 = { noinline "fpga.wrapper.func"="copyin" }
attributes #6 = { noinline "fpga.wrapper.func"="copyout" }
attributes #7 = { "fpga.wrapper.func"="stub" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.rotate.disable"}
!7 = distinct !{!7, !6}
!8 = distinct !{!8, !6}
