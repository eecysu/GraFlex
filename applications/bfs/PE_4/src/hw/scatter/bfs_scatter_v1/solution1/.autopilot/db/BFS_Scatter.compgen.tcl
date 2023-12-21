# This script segment is generated automatically by AutoPilot

# Memory (RAM/ROM)  definition:
set ID 95
set hasByteEnable 0
set MemName BFS_Scatter_ofst_buff
set CoreName ap_simcore_mem
set PortList { 1 2 }
set DataWd 64
set AddrRange 393216
set AddrWd 19
set impl_style ultra
set TrueReset 0
set HasInitializer 0
set IsROM 0
set ROMData {}
set NumOfStage 2
set MaxLatency -1
set DelayBudget 2.037
set ClkPeriod 5
set RegisteredInput 0
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mem] == "ap_gen_simcore_mem"} {
    eval "ap_gen_simcore_mem { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 2 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    style ${impl_style} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
} else {
    puts "@W \[IMPL-102\] Cannot find ap_gen_simcore_mem, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
  ::AP::rtl_comp_handler $MemName
}


set CoreName RAM_2P_URAM
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_RAM] == "::AESL_LIB_VIRTEX::xil_gen_RAM"} {
    eval "::AESL_LIB_VIRTEX::xil_gen_RAM { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 2 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    style ${impl_style} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
  } else {
    puts "@W \[IMPL-104\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_RAM, check your platform lib"
  }
}


# Memory (RAM/ROM)  definition:
set ID 96
set hasByteEnable 0
set MemName BFS_Scatter_mem_req_buff_V_0
set CoreName ap_simcore_mem
set PortList { 1 0 }
set DataWd 32
set AddrRange 2048
set AddrWd 11
set impl_style block
set TrueReset 0
set HasInitializer 0
set IsROM 0
set ROMData {}
set NumOfStage 2
set MaxLatency -1
set DelayBudget 1.203
set ClkPeriod 5
set RegisteredInput 0
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mem] == "ap_gen_simcore_mem"} {
    eval "ap_gen_simcore_mem { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 2 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    style ${impl_style} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
} else {
    puts "@W \[IMPL-102\] Cannot find ap_gen_simcore_mem, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
  ::AP::rtl_comp_handler $MemName
}


set CoreName RAM_2P_BRAM
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_RAM] == "::AESL_LIB_VIRTEX::xil_gen_RAM"} {
    eval "::AESL_LIB_VIRTEX::xil_gen_RAM { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 2 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    style ${impl_style} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
  } else {
    puts "@W \[IMPL-104\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_RAM, check your platform lib"
  }
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

set axilite_register_dict [dict create]
# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 102 \
    name rd_port_V_data_V \
    reset_level 0 \
    sync_rst true \
    corename {rd_port} \
    metadata {  } \
    op interface \
    ports { rd_port_TDATA { I 128 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'rd_port_V_data_V'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 103 \
    name rd_port_V_keep_V \
    reset_level 0 \
    sync_rst true \
    corename {rd_port} \
    metadata {  } \
    op interface \
    ports { rd_port_TKEEP { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'rd_port_V_keep_V'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 104 \
    name rd_port_V_strb_V \
    reset_level 0 \
    sync_rst true \
    corename {rd_port} \
    metadata {  } \
    op interface \
    ports { rd_port_TSTRB { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'rd_port_V_strb_V'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 105 \
    name rd_port_V_last_V \
    reset_level 0 \
    sync_rst true \
    corename {rd_port} \
    metadata {  } \
    op interface \
    ports { rd_port_TVALID { I 1 bit } rd_port_TREADY { O 1 bit } rd_port_TLAST { I 1 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'rd_port_V_last_V'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 106 \
    name wr_port_V_data_V \
    reset_level 0 \
    sync_rst true \
    corename {wr_port} \
    metadata {  } \
    op interface \
    ports { wr_port_TDATA { O 128 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'wr_port_V_data_V'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 107 \
    name wr_port_V_keep_V \
    reset_level 0 \
    sync_rst true \
    corename {wr_port} \
    metadata {  } \
    op interface \
    ports { wr_port_TKEEP { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'wr_port_V_keep_V'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 108 \
    name wr_port_V_strb_V \
    reset_level 0 \
    sync_rst true \
    corename {wr_port} \
    metadata {  } \
    op interface \
    ports { wr_port_TSTRB { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'wr_port_V_strb_V'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 109 \
    name wr_port_V_last_V \
    reset_level 0 \
    sync_rst true \
    corename {wr_port} \
    metadata {  } \
    op interface \
    ports { wr_port_TVALID { O 1 bit } wr_port_TREADY { I 1 bit } wr_port_TLAST { O 1 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'wr_port_V_last_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 125 \
    name tmp_dist_0 \
    reset_level 0 \
    sync_rst true \
    dir IO \
    corename tmp_dist_0 \
    op interface \
    ports { tmp_dist_0_address0 { O 12 vector } tmp_dist_0_ce0 { O 1 bit } tmp_dist_0_we0 { O 1 bit } tmp_dist_0_d0 { O 64 vector } tmp_dist_0_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'tmp_dist_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 126 \
    name tmp_dist_1 \
    reset_level 0 \
    sync_rst true \
    dir IO \
    corename tmp_dist_1 \
    op interface \
    ports { tmp_dist_1_address0 { O 12 vector } tmp_dist_1_ce0 { O 1 bit } tmp_dist_1_we0 { O 1 bit } tmp_dist_1_d0 { O 64 vector } tmp_dist_1_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'tmp_dist_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 127 \
    name tmp_dist_2 \
    reset_level 0 \
    sync_rst true \
    dir IO \
    corename tmp_dist_2 \
    op interface \
    ports { tmp_dist_2_address0 { O 12 vector } tmp_dist_2_ce0 { O 1 bit } tmp_dist_2_we0 { O 1 bit } tmp_dist_2_d0 { O 64 vector } tmp_dist_2_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'tmp_dist_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 128 \
    name tmp_dist_3 \
    reset_level 0 \
    sync_rst true \
    dir IO \
    corename tmp_dist_3 \
    op interface \
    ports { tmp_dist_3_address0 { O 12 vector } tmp_dist_3_ce0 { O 1 bit } tmp_dist_3_we0 { O 1 bit } tmp_dist_3_d0 { O 64 vector } tmp_dist_3_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'tmp_dist_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 129 \
    name tmp_dist_4 \
    reset_level 0 \
    sync_rst true \
    dir IO \
    corename tmp_dist_4 \
    op interface \
    ports { tmp_dist_4_address0 { O 12 vector } tmp_dist_4_ce0 { O 1 bit } tmp_dist_4_we0 { O 1 bit } tmp_dist_4_d0 { O 64 vector } tmp_dist_4_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'tmp_dist_4'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 130 \
    name tmp_dist_5 \
    reset_level 0 \
    sync_rst true \
    dir IO \
    corename tmp_dist_5 \
    op interface \
    ports { tmp_dist_5_address0 { O 12 vector } tmp_dist_5_ce0 { O 1 bit } tmp_dist_5_we0 { O 1 bit } tmp_dist_5_d0 { O 64 vector } tmp_dist_5_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'tmp_dist_5'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 131 \
    name tmp_dist_6 \
    reset_level 0 \
    sync_rst true \
    dir IO \
    corename tmp_dist_6 \
    op interface \
    ports { tmp_dist_6_address0 { O 12 vector } tmp_dist_6_ce0 { O 1 bit } tmp_dist_6_we0 { O 1 bit } tmp_dist_6_d0 { O 64 vector } tmp_dist_6_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'tmp_dist_6'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 132 \
    name tmp_dist_7 \
    reset_level 0 \
    sync_rst true \
    dir IO \
    corename tmp_dist_7 \
    op interface \
    ports { tmp_dist_7_address0 { O 12 vector } tmp_dist_7_ce0 { O 1 bit } tmp_dist_7_we0 { O 1 bit } tmp_dist_7_d0 { O 64 vector } tmp_dist_7_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'tmp_dist_7'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 133 \
    name tmp_dist_8 \
    reset_level 0 \
    sync_rst true \
    dir IO \
    corename tmp_dist_8 \
    op interface \
    ports { tmp_dist_8_address0 { O 12 vector } tmp_dist_8_ce0 { O 1 bit } tmp_dist_8_we0 { O 1 bit } tmp_dist_8_d0 { O 64 vector } tmp_dist_8_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'tmp_dist_8'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 134 \
    name tmp_dist_9 \
    reset_level 0 \
    sync_rst true \
    dir IO \
    corename tmp_dist_9 \
    op interface \
    ports { tmp_dist_9_address0 { O 12 vector } tmp_dist_9_ce0 { O 1 bit } tmp_dist_9_we0 { O 1 bit } tmp_dist_9_d0 { O 64 vector } tmp_dist_9_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'tmp_dist_9'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 135 \
    name tmp_dist_10 \
    reset_level 0 \
    sync_rst true \
    dir IO \
    corename tmp_dist_10 \
    op interface \
    ports { tmp_dist_10_address0 { O 12 vector } tmp_dist_10_ce0 { O 1 bit } tmp_dist_10_we0 { O 1 bit } tmp_dist_10_d0 { O 64 vector } tmp_dist_10_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'tmp_dist_10'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 136 \
    name tmp_dist_11 \
    reset_level 0 \
    sync_rst true \
    dir IO \
    corename tmp_dist_11 \
    op interface \
    ports { tmp_dist_11_address0 { O 12 vector } tmp_dist_11_ce0 { O 1 bit } tmp_dist_11_we0 { O 1 bit } tmp_dist_11_d0 { O 64 vector } tmp_dist_11_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'tmp_dist_11'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 137 \
    name tmp_dist_12 \
    reset_level 0 \
    sync_rst true \
    dir IO \
    corename tmp_dist_12 \
    op interface \
    ports { tmp_dist_12_address0 { O 12 vector } tmp_dist_12_ce0 { O 1 bit } tmp_dist_12_we0 { O 1 bit } tmp_dist_12_d0 { O 64 vector } tmp_dist_12_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'tmp_dist_12'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 138 \
    name tmp_dist_13 \
    reset_level 0 \
    sync_rst true \
    dir IO \
    corename tmp_dist_13 \
    op interface \
    ports { tmp_dist_13_address0 { O 12 vector } tmp_dist_13_ce0 { O 1 bit } tmp_dist_13_we0 { O 1 bit } tmp_dist_13_d0 { O 64 vector } tmp_dist_13_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'tmp_dist_13'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 139 \
    name tmp_dist_14 \
    reset_level 0 \
    sync_rst true \
    dir IO \
    corename tmp_dist_14 \
    op interface \
    ports { tmp_dist_14_address0 { O 12 vector } tmp_dist_14_ce0 { O 1 bit } tmp_dist_14_we0 { O 1 bit } tmp_dist_14_d0 { O 64 vector } tmp_dist_14_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'tmp_dist_14'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 140 \
    name tmp_dist_15 \
    reset_level 0 \
    sync_rst true \
    dir IO \
    corename tmp_dist_15 \
    op interface \
    ports { tmp_dist_15_address0 { O 12 vector } tmp_dist_15_ce0 { O 1 bit } tmp_dist_15_we0 { O 1 bit } tmp_dist_15_d0 { O 64 vector } tmp_dist_15_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'tmp_dist_15'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 141 \
    name tmp_dist_16 \
    reset_level 0 \
    sync_rst true \
    dir IO \
    corename tmp_dist_16 \
    op interface \
    ports { tmp_dist_16_address0 { O 12 vector } tmp_dist_16_ce0 { O 1 bit } tmp_dist_16_we0 { O 1 bit } tmp_dist_16_d0 { O 64 vector } tmp_dist_16_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'tmp_dist_16'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 142 \
    name tmp_dist_17 \
    reset_level 0 \
    sync_rst true \
    dir IO \
    corename tmp_dist_17 \
    op interface \
    ports { tmp_dist_17_address0 { O 12 vector } tmp_dist_17_ce0 { O 1 bit } tmp_dist_17_we0 { O 1 bit } tmp_dist_17_d0 { O 64 vector } tmp_dist_17_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'tmp_dist_17'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 143 \
    name tmp_dist_18 \
    reset_level 0 \
    sync_rst true \
    dir IO \
    corename tmp_dist_18 \
    op interface \
    ports { tmp_dist_18_address0 { O 12 vector } tmp_dist_18_ce0 { O 1 bit } tmp_dist_18_we0 { O 1 bit } tmp_dist_18_d0 { O 64 vector } tmp_dist_18_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'tmp_dist_18'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 144 \
    name tmp_dist_19 \
    reset_level 0 \
    sync_rst true \
    dir IO \
    corename tmp_dist_19 \
    op interface \
    ports { tmp_dist_19_address0 { O 12 vector } tmp_dist_19_ce0 { O 1 bit } tmp_dist_19_we0 { O 1 bit } tmp_dist_19_d0 { O 64 vector } tmp_dist_19_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'tmp_dist_19'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 145 \
    name tmp_dist_20 \
    reset_level 0 \
    sync_rst true \
    dir IO \
    corename tmp_dist_20 \
    op interface \
    ports { tmp_dist_20_address0 { O 12 vector } tmp_dist_20_ce0 { O 1 bit } tmp_dist_20_we0 { O 1 bit } tmp_dist_20_d0 { O 64 vector } tmp_dist_20_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'tmp_dist_20'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 146 \
    name tmp_dist_21 \
    reset_level 0 \
    sync_rst true \
    dir IO \
    corename tmp_dist_21 \
    op interface \
    ports { tmp_dist_21_address0 { O 12 vector } tmp_dist_21_ce0 { O 1 bit } tmp_dist_21_we0 { O 1 bit } tmp_dist_21_d0 { O 64 vector } tmp_dist_21_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'tmp_dist_21'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 147 \
    name tmp_dist_22 \
    reset_level 0 \
    sync_rst true \
    dir IO \
    corename tmp_dist_22 \
    op interface \
    ports { tmp_dist_22_address0 { O 12 vector } tmp_dist_22_ce0 { O 1 bit } tmp_dist_22_we0 { O 1 bit } tmp_dist_22_d0 { O 64 vector } tmp_dist_22_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'tmp_dist_22'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 148 \
    name tmp_dist_23 \
    reset_level 0 \
    sync_rst true \
    dir IO \
    corename tmp_dist_23 \
    op interface \
    ports { tmp_dist_23_address0 { O 12 vector } tmp_dist_23_ce0 { O 1 bit } tmp_dist_23_we0 { O 1 bit } tmp_dist_23_d0 { O 64 vector } tmp_dist_23_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'tmp_dist_23'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 149 \
    name tmp_dist_24 \
    reset_level 0 \
    sync_rst true \
    dir IO \
    corename tmp_dist_24 \
    op interface \
    ports { tmp_dist_24_address0 { O 12 vector } tmp_dist_24_ce0 { O 1 bit } tmp_dist_24_we0 { O 1 bit } tmp_dist_24_d0 { O 64 vector } tmp_dist_24_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'tmp_dist_24'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 150 \
    name tmp_dist_25 \
    reset_level 0 \
    sync_rst true \
    dir IO \
    corename tmp_dist_25 \
    op interface \
    ports { tmp_dist_25_address0 { O 12 vector } tmp_dist_25_ce0 { O 1 bit } tmp_dist_25_we0 { O 1 bit } tmp_dist_25_d0 { O 64 vector } tmp_dist_25_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'tmp_dist_25'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 151 \
    name tmp_dist_26 \
    reset_level 0 \
    sync_rst true \
    dir IO \
    corename tmp_dist_26 \
    op interface \
    ports { tmp_dist_26_address0 { O 12 vector } tmp_dist_26_ce0 { O 1 bit } tmp_dist_26_we0 { O 1 bit } tmp_dist_26_d0 { O 64 vector } tmp_dist_26_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'tmp_dist_26'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 152 \
    name tmp_dist_27 \
    reset_level 0 \
    sync_rst true \
    dir IO \
    corename tmp_dist_27 \
    op interface \
    ports { tmp_dist_27_address0 { O 12 vector } tmp_dist_27_ce0 { O 1 bit } tmp_dist_27_we0 { O 1 bit } tmp_dist_27_d0 { O 64 vector } tmp_dist_27_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'tmp_dist_27'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 153 \
    name tmp_dist_28 \
    reset_level 0 \
    sync_rst true \
    dir IO \
    corename tmp_dist_28 \
    op interface \
    ports { tmp_dist_28_address0 { O 12 vector } tmp_dist_28_ce0 { O 1 bit } tmp_dist_28_we0 { O 1 bit } tmp_dist_28_d0 { O 64 vector } tmp_dist_28_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'tmp_dist_28'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 154 \
    name tmp_dist_29 \
    reset_level 0 \
    sync_rst true \
    dir IO \
    corename tmp_dist_29 \
    op interface \
    ports { tmp_dist_29_address0 { O 12 vector } tmp_dist_29_ce0 { O 1 bit } tmp_dist_29_we0 { O 1 bit } tmp_dist_29_d0 { O 64 vector } tmp_dist_29_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'tmp_dist_29'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 155 \
    name tmp_dist_30 \
    reset_level 0 \
    sync_rst true \
    dir IO \
    corename tmp_dist_30 \
    op interface \
    ports { tmp_dist_30_address0 { O 12 vector } tmp_dist_30_ce0 { O 1 bit } tmp_dist_30_we0 { O 1 bit } tmp_dist_30_d0 { O 64 vector } tmp_dist_30_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'tmp_dist_30'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 156 \
    name tmp_dist_31 \
    reset_level 0 \
    sync_rst true \
    dir IO \
    corename tmp_dist_31 \
    op interface \
    ports { tmp_dist_31_address0 { O 12 vector } tmp_dist_31_ce0 { O 1 bit } tmp_dist_31_we0 { O 1 bit } tmp_dist_31_d0 { O 64 vector } tmp_dist_31_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'tmp_dist_31'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 97 \
    name CSR_V \
    type other \
    dir I \
    reset_level 0 \
    sync_rst true \
    corename dc_CSR_V \
    op interface \
    ports { CSR_V { I 33 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 98 \
    name CSR_E \
    type other \
    dir I \
    reset_level 0 \
    sync_rst true \
    corename dc_CSR_E \
    op interface \
    ports { CSR_E { I 33 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 99 \
    name glbl_d \
    type other \
    dir I \
    reset_level 0 \
    sync_rst true \
    corename dc_glbl_d \
    op interface \
    ports { glbl_d { I 33 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 100 \
    name rd_baseAddr \
    type other \
    dir O \
    reset_level 0 \
    sync_rst true \
    corename dc_rd_baseAddr \
    op interface \
    ports { rd_baseAddr { O 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 101 \
    name wr_baseAddr \
    type other \
    dir O \
    reset_level 0 \
    sync_rst true \
    corename dc_wr_baseAddr \
    op interface \
    ports { wr_baseAddr { O 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 110 \
    name rd_req_V \
    type fifo \
    dir O \
    reset_level 0 \
    sync_rst true \
    corename dc_rd_req_V \
    op interface \
    ports { rd_req_V_din { O 32 vector } rd_req_V_full_n { I 1 bit } rd_req_V_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 111 \
    name wr_len \
    type other \
    dir O \
    reset_level 0 \
    sync_rst true \
    corename dc_wr_len \
    op interface \
    ports { wr_len { O 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 112 \
    name rd_start \
    type other \
    dir O \
    reset_level 0 \
    sync_rst true \
    corename dc_rd_start \
    op interface \
    ports { rd_start { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 113 \
    name wr_start \
    type other \
    dir O \
    reset_level 0 \
    sync_rst true \
    corename dc_wr_start \
    op interface \
    ports { wr_start { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 114 \
    name N_Vertex \
    type other \
    dir I \
    reset_level 0 \
    sync_rst true \
    corename dc_N_Vertex \
    op interface \
    ports { N_Vertex { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 115 \
    name root \
    type other \
    dir I \
    reset_level 0 \
    sync_rst true \
    corename dc_root \
    op interface \
    ports { root { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 116 \
    name peID \
    type other \
    dir I \
    reset_level 0 \
    sync_rst true \
    corename dc_peID \
    op interface \
    ports { peID { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 117 \
    name sw_data_0_V \
    type fifo \
    dir O \
    reset_level 0 \
    sync_rst true \
    corename dc_sw_data_0_V \
    op interface \
    ports { sw_data_0_V_din { O 32 vector } sw_data_0_V_full_n { I 1 bit } sw_data_0_V_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 118 \
    name sw_data_1_V \
    type fifo \
    dir O \
    reset_level 0 \
    sync_rst true \
    corename dc_sw_data_1_V \
    op interface \
    ports { sw_data_1_V_din { O 32 vector } sw_data_1_V_full_n { I 1 bit } sw_data_1_V_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 119 \
    name sw_data_2_V \
    type fifo \
    dir O \
    reset_level 0 \
    sync_rst true \
    corename dc_sw_data_2_V \
    op interface \
    ports { sw_data_2_V_din { O 32 vector } sw_data_2_V_full_n { I 1 bit } sw_data_2_V_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 120 \
    name sw_data_3_V \
    type fifo \
    dir O \
    reset_level 0 \
    sync_rst true \
    corename dc_sw_data_3_V \
    op interface \
    ports { sw_data_3_V_din { O 32 vector } sw_data_3_V_full_n { I 1 bit } sw_data_3_V_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 121 \
    name glblIterIdx \
    type other \
    dir I \
    reset_level 0 \
    sync_rst true \
    corename dc_glblIterIdx \
    op interface \
    ports { glblIterIdx { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 122 \
    name cycle_cnt \
    type other \
    dir I \
    reset_level 0 \
    sync_rst true \
    corename dc_cycle_cnt \
    op interface \
    ports { cycle_cnt { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 123 \
    name launch_recv \
    type other \
    dir O \
    reset_level 0 \
    sync_rst true \
    corename dc_launch_recv \
    op interface \
    ports { launch_recv { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 124 \
    name resWrite \
    type other \
    dir I \
    reset_level 0 \
    sync_rst true \
    corename dc_resWrite \
    op interface \
    ports { resWrite { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 0 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
    name ${PortName} \
    reset_level 0 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst_n
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -3 \
    name ${PortName} \
    reset_level 0 \
    sync_rst true \
    corename apif_ap_rst_n \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


# RegSlice definition:
set ID 157
set RegSliceName BFS_Scatter_regslice_both
set RegSliceInstName BFS_Scatter_regslice_both_U
set CoreName ap_simcore_BFS_Scatter_regslice_both
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $RegSliceName
}


if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_regSlice] == "::AESL_LIB_VIRTEX::xil_gen_regSlice"} {
eval "::AESL_LIB_VIRTEX::xil_gen_regSlice { \
    name ${RegSliceName} \
    prefix BFS_Scatter_ \
    sliceTypeList 0\
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_regSlice, check your platform lib"
}
}


# RegSlice definition:
set ID 158
set RegSliceName BFS_Scatter_regslice_both
set RegSliceInstName BFS_Scatter_regslice_both_U
set CoreName ap_simcore_BFS_Scatter_regslice_both
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $RegSliceName
}


if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_regSlice] == "::AESL_LIB_VIRTEX::xil_gen_regSlice"} {
eval "::AESL_LIB_VIRTEX::xil_gen_regSlice { \
    name ${RegSliceName} \
    prefix BFS_Scatter_ \
    sliceTypeList 0\
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_regSlice, check your platform lib"
}
}


# RegSlice definition:
set ID 159
set RegSliceName BFS_Scatter_regslice_both
set RegSliceInstName BFS_Scatter_regslice_both_U
set CoreName ap_simcore_BFS_Scatter_regslice_both
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $RegSliceName
}


if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_regSlice] == "::AESL_LIB_VIRTEX::xil_gen_regSlice"} {
eval "::AESL_LIB_VIRTEX::xil_gen_regSlice { \
    name ${RegSliceName} \
    prefix BFS_Scatter_ \
    sliceTypeList 0\
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_regSlice, check your platform lib"
}
}


# RegSlice definition:
set ID 160
set RegSliceName BFS_Scatter_regslice_both
set RegSliceInstName BFS_Scatter_regslice_both_U
set CoreName ap_simcore_BFS_Scatter_regslice_both
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $RegSliceName
}


if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_regSlice] == "::AESL_LIB_VIRTEX::xil_gen_regSlice"} {
eval "::AESL_LIB_VIRTEX::xil_gen_regSlice { \
    name ${RegSliceName} \
    prefix BFS_Scatter_ \
    sliceTypeList 0\
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_regSlice, check your platform lib"
}
}


# RegSlice definition:
set ID 161
set RegSliceName BFS_Scatter_regslice_both
set RegSliceInstName BFS_Scatter_regslice_both_U
set CoreName ap_simcore_BFS_Scatter_regslice_both
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $RegSliceName
}


if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_regSlice] == "::AESL_LIB_VIRTEX::xil_gen_regSlice"} {
eval "::AESL_LIB_VIRTEX::xil_gen_regSlice { \
    name ${RegSliceName} \
    prefix BFS_Scatter_ \
    sliceTypeList 0\
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_regSlice, check your platform lib"
}
}


# RegSlice definition:
set ID 162
set RegSliceName BFS_Scatter_regslice_both
set RegSliceInstName BFS_Scatter_regslice_both_U
set CoreName ap_simcore_BFS_Scatter_regslice_both
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $RegSliceName
}


if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_regSlice] == "::AESL_LIB_VIRTEX::xil_gen_regSlice"} {
eval "::AESL_LIB_VIRTEX::xil_gen_regSlice { \
    name ${RegSliceName} \
    prefix BFS_Scatter_ \
    sliceTypeList 0\
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_regSlice, check your platform lib"
}
}


# RegSlice definition:
set ID 163
set RegSliceName BFS_Scatter_regslice_both
set RegSliceInstName BFS_Scatter_regslice_both_U
set CoreName ap_simcore_BFS_Scatter_regslice_both
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $RegSliceName
}


if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_regSlice] == "::AESL_LIB_VIRTEX::xil_gen_regSlice"} {
eval "::AESL_LIB_VIRTEX::xil_gen_regSlice { \
    name ${RegSliceName} \
    prefix BFS_Scatter_ \
    sliceTypeList 0\
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_regSlice, check your platform lib"
}
}


# RegSlice definition:
set ID 164
set RegSliceName BFS_Scatter_regslice_both
set RegSliceInstName BFS_Scatter_regslice_both_U
set CoreName ap_simcore_BFS_Scatter_regslice_both
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $RegSliceName
}


if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_regSlice] == "::AESL_LIB_VIRTEX::xil_gen_regSlice"} {
eval "::AESL_LIB_VIRTEX::xil_gen_regSlice { \
    name ${RegSliceName} \
    prefix BFS_Scatter_ \
    sliceTypeList 0\
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_regSlice, check your platform lib"
}
}


