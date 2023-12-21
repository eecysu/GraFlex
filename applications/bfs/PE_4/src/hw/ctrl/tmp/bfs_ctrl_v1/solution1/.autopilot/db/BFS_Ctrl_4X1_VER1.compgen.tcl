# This script segment is generated automatically by AutoPilot

# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

set axilite_register_dict [dict create]
# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2 \
    name dummyParam \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_dummyParam \
    op interface \
    ports { dummyParam { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3 \
    name N_Vertex \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_N_Vertex \
    op interface \
    ports { N_Vertex { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4 \
    name resWrite \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_resWrite \
    op interface \
    ports { resWrite { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5 \
    name glblIterIdx \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_glblIterIdx \
    op interface \
    ports { glblIterIdx { O 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6 \
    name cnt_scatter_0 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cnt_scatter_0 \
    op interface \
    ports { cnt_scatter_0 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7 \
    name cnt_scatter_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cnt_scatter_1 \
    op interface \
    ports { cnt_scatter_1 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8 \
    name cnt_scatter_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cnt_scatter_2 \
    op interface \
    ports { cnt_scatter_2 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 9 \
    name cnt_scatter_3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cnt_scatter_3 \
    op interface \
    ports { cnt_scatter_3 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 10 \
    name cnt_gather_0 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cnt_gather_0 \
    op interface \
    ports { cnt_gather_0 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 11 \
    name exist_0 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_exist_0 \
    op interface \
    ports { exist_0 { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12 \
    name exist_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_exist_1 \
    op interface \
    ports { exist_1 { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 13 \
    name exist_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_exist_2 \
    op interface \
    ports { exist_2 { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14 \
    name exist_3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_exist_3 \
    op interface \
    ports { exist_3 { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
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
    reset_level 1 \
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
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
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


