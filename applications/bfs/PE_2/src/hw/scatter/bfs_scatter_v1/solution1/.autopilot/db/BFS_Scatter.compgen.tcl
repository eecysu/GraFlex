# This script segment is generated automatically by AutoPilot

# Memory (RAM/ROM)  definition:
set ID 159
set hasByteEnable 0
set MemName BFS_Scatter_ofst_buff
set CoreName ap_simcore_mem
set PortList { 1 2 }
set DataWd 64
set AddrRange 786432
set AddrWd 20
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
set ID 160
set hasByteEnable 0
set MemName BFS_Scatter_mem_req_buff_V_0
set CoreName ap_simcore_mem
set PortList { 1 0 }
set DataWd 32
set AddrRange 4096
set AddrWd 12
set impl_style block
set TrueReset 0
set HasInitializer 0
set IsROM 0
set ROMData {}
set NumOfStage 2
set MaxLatency -1
set DelayBudget 1.23
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
    id 166 \
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
    id 167 \
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
    id 168 \
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
    id 169 \
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
    id 170 \
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
    id 171 \
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
    id 172 \
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
    id 173 \
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
    id 189 \
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
    id 190 \
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
    id 191 \
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
    id 192 \
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
    id 193 \
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
    id 194 \
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
    id 195 \
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
    id 196 \
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
    id 197 \
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
    id 198 \
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
    id 199 \
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
    id 200 \
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
    id 201 \
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
    id 202 \
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
    id 203 \
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
    id 204 \
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
    id 205 \
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
    id 206 \
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
    id 207 \
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
    id 208 \
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
    id 209 \
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
    id 210 \
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
    id 211 \
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
    id 212 \
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
    id 213 \
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
    id 214 \
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
    id 215 \
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
    id 216 \
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
    id 217 \
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
    id 218 \
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
    id 219 \
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
    id 220 \
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


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 221 \
    name tmp_dist_32 \
    reset_level 0 \
    sync_rst true \
    dir IO \
    corename tmp_dist_32 \
    op interface \
    ports { tmp_dist_32_address0 { O 12 vector } tmp_dist_32_ce0 { O 1 bit } tmp_dist_32_we0 { O 1 bit } tmp_dist_32_d0 { O 64 vector } tmp_dist_32_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'tmp_dist_32'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 222 \
    name tmp_dist_33 \
    reset_level 0 \
    sync_rst true \
    dir IO \
    corename tmp_dist_33 \
    op interface \
    ports { tmp_dist_33_address0 { O 12 vector } tmp_dist_33_ce0 { O 1 bit } tmp_dist_33_we0 { O 1 bit } tmp_dist_33_d0 { O 64 vector } tmp_dist_33_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'tmp_dist_33'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 223 \
    name tmp_dist_34 \
    reset_level 0 \
    sync_rst true \
    dir IO \
    corename tmp_dist_34 \
    op interface \
    ports { tmp_dist_34_address0 { O 12 vector } tmp_dist_34_ce0 { O 1 bit } tmp_dist_34_we0 { O 1 bit } tmp_dist_34_d0 { O 64 vector } tmp_dist_34_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'tmp_dist_34'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 224 \
    name tmp_dist_35 \
    reset_level 0 \
    sync_rst true \
    dir IO \
    corename tmp_dist_35 \
    op interface \
    ports { tmp_dist_35_address0 { O 12 vector } tmp_dist_35_ce0 { O 1 bit } tmp_dist_35_we0 { O 1 bit } tmp_dist_35_d0 { O 64 vector } tmp_dist_35_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'tmp_dist_35'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 225 \
    name tmp_dist_36 \
    reset_level 0 \
    sync_rst true \
    dir IO \
    corename tmp_dist_36 \
    op interface \
    ports { tmp_dist_36_address0 { O 12 vector } tmp_dist_36_ce0 { O 1 bit } tmp_dist_36_we0 { O 1 bit } tmp_dist_36_d0 { O 64 vector } tmp_dist_36_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'tmp_dist_36'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 226 \
    name tmp_dist_37 \
    reset_level 0 \
    sync_rst true \
    dir IO \
    corename tmp_dist_37 \
    op interface \
    ports { tmp_dist_37_address0 { O 12 vector } tmp_dist_37_ce0 { O 1 bit } tmp_dist_37_we0 { O 1 bit } tmp_dist_37_d0 { O 64 vector } tmp_dist_37_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'tmp_dist_37'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 227 \
    name tmp_dist_38 \
    reset_level 0 \
    sync_rst true \
    dir IO \
    corename tmp_dist_38 \
    op interface \
    ports { tmp_dist_38_address0 { O 12 vector } tmp_dist_38_ce0 { O 1 bit } tmp_dist_38_we0 { O 1 bit } tmp_dist_38_d0 { O 64 vector } tmp_dist_38_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'tmp_dist_38'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 228 \
    name tmp_dist_39 \
    reset_level 0 \
    sync_rst true \
    dir IO \
    corename tmp_dist_39 \
    op interface \
    ports { tmp_dist_39_address0 { O 12 vector } tmp_dist_39_ce0 { O 1 bit } tmp_dist_39_we0 { O 1 bit } tmp_dist_39_d0 { O 64 vector } tmp_dist_39_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'tmp_dist_39'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 229 \
    name tmp_dist_40 \
    reset_level 0 \
    sync_rst true \
    dir IO \
    corename tmp_dist_40 \
    op interface \
    ports { tmp_dist_40_address0 { O 12 vector } tmp_dist_40_ce0 { O 1 bit } tmp_dist_40_we0 { O 1 bit } tmp_dist_40_d0 { O 64 vector } tmp_dist_40_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'tmp_dist_40'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 230 \
    name tmp_dist_41 \
    reset_level 0 \
    sync_rst true \
    dir IO \
    corename tmp_dist_41 \
    op interface \
    ports { tmp_dist_41_address0 { O 12 vector } tmp_dist_41_ce0 { O 1 bit } tmp_dist_41_we0 { O 1 bit } tmp_dist_41_d0 { O 64 vector } tmp_dist_41_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'tmp_dist_41'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 231 \
    name tmp_dist_42 \
    reset_level 0 \
    sync_rst true \
    dir IO \
    corename tmp_dist_42 \
    op interface \
    ports { tmp_dist_42_address0 { O 12 vector } tmp_dist_42_ce0 { O 1 bit } tmp_dist_42_we0 { O 1 bit } tmp_dist_42_d0 { O 64 vector } tmp_dist_42_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'tmp_dist_42'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 232 \
    name tmp_dist_43 \
    reset_level 0 \
    sync_rst true \
    dir IO \
    corename tmp_dist_43 \
    op interface \
    ports { tmp_dist_43_address0 { O 12 vector } tmp_dist_43_ce0 { O 1 bit } tmp_dist_43_we0 { O 1 bit } tmp_dist_43_d0 { O 64 vector } tmp_dist_43_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'tmp_dist_43'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 233 \
    name tmp_dist_44 \
    reset_level 0 \
    sync_rst true \
    dir IO \
    corename tmp_dist_44 \
    op interface \
    ports { tmp_dist_44_address0 { O 12 vector } tmp_dist_44_ce0 { O 1 bit } tmp_dist_44_we0 { O 1 bit } tmp_dist_44_d0 { O 64 vector } tmp_dist_44_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'tmp_dist_44'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 234 \
    name tmp_dist_45 \
    reset_level 0 \
    sync_rst true \
    dir IO \
    corename tmp_dist_45 \
    op interface \
    ports { tmp_dist_45_address0 { O 12 vector } tmp_dist_45_ce0 { O 1 bit } tmp_dist_45_we0 { O 1 bit } tmp_dist_45_d0 { O 64 vector } tmp_dist_45_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'tmp_dist_45'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 235 \
    name tmp_dist_46 \
    reset_level 0 \
    sync_rst true \
    dir IO \
    corename tmp_dist_46 \
    op interface \
    ports { tmp_dist_46_address0 { O 12 vector } tmp_dist_46_ce0 { O 1 bit } tmp_dist_46_we0 { O 1 bit } tmp_dist_46_d0 { O 64 vector } tmp_dist_46_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'tmp_dist_46'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 236 \
    name tmp_dist_47 \
    reset_level 0 \
    sync_rst true \
    dir IO \
    corename tmp_dist_47 \
    op interface \
    ports { tmp_dist_47_address0 { O 12 vector } tmp_dist_47_ce0 { O 1 bit } tmp_dist_47_we0 { O 1 bit } tmp_dist_47_d0 { O 64 vector } tmp_dist_47_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'tmp_dist_47'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 237 \
    name tmp_dist_48 \
    reset_level 0 \
    sync_rst true \
    dir IO \
    corename tmp_dist_48 \
    op interface \
    ports { tmp_dist_48_address0 { O 12 vector } tmp_dist_48_ce0 { O 1 bit } tmp_dist_48_we0 { O 1 bit } tmp_dist_48_d0 { O 64 vector } tmp_dist_48_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'tmp_dist_48'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 238 \
    name tmp_dist_49 \
    reset_level 0 \
    sync_rst true \
    dir IO \
    corename tmp_dist_49 \
    op interface \
    ports { tmp_dist_49_address0 { O 12 vector } tmp_dist_49_ce0 { O 1 bit } tmp_dist_49_we0 { O 1 bit } tmp_dist_49_d0 { O 64 vector } tmp_dist_49_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'tmp_dist_49'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 239 \
    name tmp_dist_50 \
    reset_level 0 \
    sync_rst true \
    dir IO \
    corename tmp_dist_50 \
    op interface \
    ports { tmp_dist_50_address0 { O 12 vector } tmp_dist_50_ce0 { O 1 bit } tmp_dist_50_we0 { O 1 bit } tmp_dist_50_d0 { O 64 vector } tmp_dist_50_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'tmp_dist_50'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 240 \
    name tmp_dist_51 \
    reset_level 0 \
    sync_rst true \
    dir IO \
    corename tmp_dist_51 \
    op interface \
    ports { tmp_dist_51_address0 { O 12 vector } tmp_dist_51_ce0 { O 1 bit } tmp_dist_51_we0 { O 1 bit } tmp_dist_51_d0 { O 64 vector } tmp_dist_51_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'tmp_dist_51'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 241 \
    name tmp_dist_52 \
    reset_level 0 \
    sync_rst true \
    dir IO \
    corename tmp_dist_52 \
    op interface \
    ports { tmp_dist_52_address0 { O 12 vector } tmp_dist_52_ce0 { O 1 bit } tmp_dist_52_we0 { O 1 bit } tmp_dist_52_d0 { O 64 vector } tmp_dist_52_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'tmp_dist_52'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 242 \
    name tmp_dist_53 \
    reset_level 0 \
    sync_rst true \
    dir IO \
    corename tmp_dist_53 \
    op interface \
    ports { tmp_dist_53_address0 { O 12 vector } tmp_dist_53_ce0 { O 1 bit } tmp_dist_53_we0 { O 1 bit } tmp_dist_53_d0 { O 64 vector } tmp_dist_53_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'tmp_dist_53'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 243 \
    name tmp_dist_54 \
    reset_level 0 \
    sync_rst true \
    dir IO \
    corename tmp_dist_54 \
    op interface \
    ports { tmp_dist_54_address0 { O 12 vector } tmp_dist_54_ce0 { O 1 bit } tmp_dist_54_we0 { O 1 bit } tmp_dist_54_d0 { O 64 vector } tmp_dist_54_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'tmp_dist_54'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 244 \
    name tmp_dist_55 \
    reset_level 0 \
    sync_rst true \
    dir IO \
    corename tmp_dist_55 \
    op interface \
    ports { tmp_dist_55_address0 { O 12 vector } tmp_dist_55_ce0 { O 1 bit } tmp_dist_55_we0 { O 1 bit } tmp_dist_55_d0 { O 64 vector } tmp_dist_55_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'tmp_dist_55'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 245 \
    name tmp_dist_56 \
    reset_level 0 \
    sync_rst true \
    dir IO \
    corename tmp_dist_56 \
    op interface \
    ports { tmp_dist_56_address0 { O 12 vector } tmp_dist_56_ce0 { O 1 bit } tmp_dist_56_we0 { O 1 bit } tmp_dist_56_d0 { O 64 vector } tmp_dist_56_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'tmp_dist_56'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 246 \
    name tmp_dist_57 \
    reset_level 0 \
    sync_rst true \
    dir IO \
    corename tmp_dist_57 \
    op interface \
    ports { tmp_dist_57_address0 { O 12 vector } tmp_dist_57_ce0 { O 1 bit } tmp_dist_57_we0 { O 1 bit } tmp_dist_57_d0 { O 64 vector } tmp_dist_57_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'tmp_dist_57'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 247 \
    name tmp_dist_58 \
    reset_level 0 \
    sync_rst true \
    dir IO \
    corename tmp_dist_58 \
    op interface \
    ports { tmp_dist_58_address0 { O 12 vector } tmp_dist_58_ce0 { O 1 bit } tmp_dist_58_we0 { O 1 bit } tmp_dist_58_d0 { O 64 vector } tmp_dist_58_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'tmp_dist_58'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 248 \
    name tmp_dist_59 \
    reset_level 0 \
    sync_rst true \
    dir IO \
    corename tmp_dist_59 \
    op interface \
    ports { tmp_dist_59_address0 { O 12 vector } tmp_dist_59_ce0 { O 1 bit } tmp_dist_59_we0 { O 1 bit } tmp_dist_59_d0 { O 64 vector } tmp_dist_59_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'tmp_dist_59'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 249 \
    name tmp_dist_60 \
    reset_level 0 \
    sync_rst true \
    dir IO \
    corename tmp_dist_60 \
    op interface \
    ports { tmp_dist_60_address0 { O 12 vector } tmp_dist_60_ce0 { O 1 bit } tmp_dist_60_we0 { O 1 bit } tmp_dist_60_d0 { O 64 vector } tmp_dist_60_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'tmp_dist_60'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 250 \
    name tmp_dist_61 \
    reset_level 0 \
    sync_rst true \
    dir IO \
    corename tmp_dist_61 \
    op interface \
    ports { tmp_dist_61_address0 { O 12 vector } tmp_dist_61_ce0 { O 1 bit } tmp_dist_61_we0 { O 1 bit } tmp_dist_61_d0 { O 64 vector } tmp_dist_61_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'tmp_dist_61'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 251 \
    name tmp_dist_62 \
    reset_level 0 \
    sync_rst true \
    dir IO \
    corename tmp_dist_62 \
    op interface \
    ports { tmp_dist_62_address0 { O 12 vector } tmp_dist_62_ce0 { O 1 bit } tmp_dist_62_we0 { O 1 bit } tmp_dist_62_d0 { O 64 vector } tmp_dist_62_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'tmp_dist_62'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 252 \
    name tmp_dist_63 \
    reset_level 0 \
    sync_rst true \
    dir IO \
    corename tmp_dist_63 \
    op interface \
    ports { tmp_dist_63_address0 { O 12 vector } tmp_dist_63_ce0 { O 1 bit } tmp_dist_63_we0 { O 1 bit } tmp_dist_63_d0 { O 64 vector } tmp_dist_63_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'tmp_dist_63'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 161 \
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
    id 162 \
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
    id 163 \
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
    id 164 \
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
    id 165 \
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
    id 174 \
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
    id 175 \
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
    id 176 \
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
    id 177 \
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
    id 178 \
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
    id 179 \
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
    id 180 \
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
    id 181 \
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
    id 182 \
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
    id 183 \
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
    id 184 \
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
    id 185 \
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
    id 186 \
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
    id 187 \
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
    id 188 \
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
set ID 253
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
set ID 254
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
set ID 255
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
set ID 256
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
set ID 257
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
set ID 258
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
set ID 259
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
set ID 260
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


