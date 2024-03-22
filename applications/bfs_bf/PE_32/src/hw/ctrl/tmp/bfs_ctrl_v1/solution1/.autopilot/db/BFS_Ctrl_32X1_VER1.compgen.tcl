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
    name cnt_scatter_4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cnt_scatter_4 \
    op interface \
    ports { cnt_scatter_4 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 11 \
    name cnt_scatter_5 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cnt_scatter_5 \
    op interface \
    ports { cnt_scatter_5 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12 \
    name cnt_scatter_6 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cnt_scatter_6 \
    op interface \
    ports { cnt_scatter_6 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 13 \
    name cnt_scatter_7 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cnt_scatter_7 \
    op interface \
    ports { cnt_scatter_7 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14 \
    name cnt_scatter_8 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cnt_scatter_8 \
    op interface \
    ports { cnt_scatter_8 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 15 \
    name cnt_scatter_9 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cnt_scatter_9 \
    op interface \
    ports { cnt_scatter_9 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 16 \
    name cnt_scatter_10 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cnt_scatter_10 \
    op interface \
    ports { cnt_scatter_10 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 17 \
    name cnt_scatter_11 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cnt_scatter_11 \
    op interface \
    ports { cnt_scatter_11 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18 \
    name cnt_scatter_12 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cnt_scatter_12 \
    op interface \
    ports { cnt_scatter_12 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19 \
    name cnt_scatter_13 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cnt_scatter_13 \
    op interface \
    ports { cnt_scatter_13 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20 \
    name cnt_scatter_14 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cnt_scatter_14 \
    op interface \
    ports { cnt_scatter_14 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 21 \
    name cnt_scatter_15 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cnt_scatter_15 \
    op interface \
    ports { cnt_scatter_15 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 22 \
    name cnt_scatter_16 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cnt_scatter_16 \
    op interface \
    ports { cnt_scatter_16 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 23 \
    name cnt_scatter_17 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cnt_scatter_17 \
    op interface \
    ports { cnt_scatter_17 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 24 \
    name cnt_scatter_18 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cnt_scatter_18 \
    op interface \
    ports { cnt_scatter_18 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 25 \
    name cnt_scatter_19 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cnt_scatter_19 \
    op interface \
    ports { cnt_scatter_19 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 26 \
    name cnt_scatter_20 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cnt_scatter_20 \
    op interface \
    ports { cnt_scatter_20 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 27 \
    name cnt_scatter_21 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cnt_scatter_21 \
    op interface \
    ports { cnt_scatter_21 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 28 \
    name cnt_scatter_22 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cnt_scatter_22 \
    op interface \
    ports { cnt_scatter_22 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 29 \
    name cnt_scatter_23 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cnt_scatter_23 \
    op interface \
    ports { cnt_scatter_23 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 30 \
    name cnt_scatter_24 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cnt_scatter_24 \
    op interface \
    ports { cnt_scatter_24 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 31 \
    name cnt_scatter_25 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cnt_scatter_25 \
    op interface \
    ports { cnt_scatter_25 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 32 \
    name cnt_scatter_26 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cnt_scatter_26 \
    op interface \
    ports { cnt_scatter_26 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 33 \
    name cnt_scatter_27 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cnt_scatter_27 \
    op interface \
    ports { cnt_scatter_27 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 34 \
    name cnt_scatter_28 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cnt_scatter_28 \
    op interface \
    ports { cnt_scatter_28 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 35 \
    name cnt_scatter_29 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cnt_scatter_29 \
    op interface \
    ports { cnt_scatter_29 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 36 \
    name cnt_scatter_30 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cnt_scatter_30 \
    op interface \
    ports { cnt_scatter_30 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 37 \
    name cnt_scatter_31 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cnt_scatter_31 \
    op interface \
    ports { cnt_scatter_31 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 38 \
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
    id 39 \
    name cnt_gather_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cnt_gather_1 \
    op interface \
    ports { cnt_gather_1 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 40 \
    name cnt_gather_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cnt_gather_2 \
    op interface \
    ports { cnt_gather_2 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 41 \
    name cnt_gather_3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cnt_gather_3 \
    op interface \
    ports { cnt_gather_3 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 42 \
    name cnt_gather_4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cnt_gather_4 \
    op interface \
    ports { cnt_gather_4 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 43 \
    name cnt_gather_5 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cnt_gather_5 \
    op interface \
    ports { cnt_gather_5 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 44 \
    name cnt_gather_6 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cnt_gather_6 \
    op interface \
    ports { cnt_gather_6 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 45 \
    name cnt_gather_7 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cnt_gather_7 \
    op interface \
    ports { cnt_gather_7 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 46 \
    name cnt_gather_8 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cnt_gather_8 \
    op interface \
    ports { cnt_gather_8 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 47 \
    name cnt_gather_9 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cnt_gather_9 \
    op interface \
    ports { cnt_gather_9 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 48 \
    name cnt_gather_10 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cnt_gather_10 \
    op interface \
    ports { cnt_gather_10 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 49 \
    name cnt_gather_11 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cnt_gather_11 \
    op interface \
    ports { cnt_gather_11 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 50 \
    name cnt_gather_12 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cnt_gather_12 \
    op interface \
    ports { cnt_gather_12 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 51 \
    name cnt_gather_13 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cnt_gather_13 \
    op interface \
    ports { cnt_gather_13 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 52 \
    name cnt_gather_14 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cnt_gather_14 \
    op interface \
    ports { cnt_gather_14 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 53 \
    name cnt_gather_15 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cnt_gather_15 \
    op interface \
    ports { cnt_gather_15 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 54 \
    name cnt_gather_16 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cnt_gather_16 \
    op interface \
    ports { cnt_gather_16 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 55 \
    name cnt_gather_17 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cnt_gather_17 \
    op interface \
    ports { cnt_gather_17 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 56 \
    name cnt_gather_18 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cnt_gather_18 \
    op interface \
    ports { cnt_gather_18 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 57 \
    name cnt_gather_19 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cnt_gather_19 \
    op interface \
    ports { cnt_gather_19 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 58 \
    name cnt_gather_20 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cnt_gather_20 \
    op interface \
    ports { cnt_gather_20 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 59 \
    name cnt_gather_21 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cnt_gather_21 \
    op interface \
    ports { cnt_gather_21 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 60 \
    name cnt_gather_22 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cnt_gather_22 \
    op interface \
    ports { cnt_gather_22 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 61 \
    name cnt_gather_23 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cnt_gather_23 \
    op interface \
    ports { cnt_gather_23 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 62 \
    name cnt_gather_24 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cnt_gather_24 \
    op interface \
    ports { cnt_gather_24 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 63 \
    name cnt_gather_25 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cnt_gather_25 \
    op interface \
    ports { cnt_gather_25 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 64 \
    name cnt_gather_26 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cnt_gather_26 \
    op interface \
    ports { cnt_gather_26 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 65 \
    name cnt_gather_27 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cnt_gather_27 \
    op interface \
    ports { cnt_gather_27 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 66 \
    name cnt_gather_28 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cnt_gather_28 \
    op interface \
    ports { cnt_gather_28 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 67 \
    name cnt_gather_29 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cnt_gather_29 \
    op interface \
    ports { cnt_gather_29 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 68 \
    name cnt_gather_30 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cnt_gather_30 \
    op interface \
    ports { cnt_gather_30 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 69 \
    name cnt_gather_31 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cnt_gather_31 \
    op interface \
    ports { cnt_gather_31 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 70 \
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
    id 71 \
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
    id 72 \
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
    id 73 \
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
    id 74 \
    name exist_4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_exist_4 \
    op interface \
    ports { exist_4 { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 75 \
    name exist_5 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_exist_5 \
    op interface \
    ports { exist_5 { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 76 \
    name exist_6 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_exist_6 \
    op interface \
    ports { exist_6 { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 77 \
    name exist_7 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_exist_7 \
    op interface \
    ports { exist_7 { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 78 \
    name exist_8 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_exist_8 \
    op interface \
    ports { exist_8 { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 79 \
    name exist_9 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_exist_9 \
    op interface \
    ports { exist_9 { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 80 \
    name exist_10 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_exist_10 \
    op interface \
    ports { exist_10 { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 81 \
    name exist_11 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_exist_11 \
    op interface \
    ports { exist_11 { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 82 \
    name exist_12 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_exist_12 \
    op interface \
    ports { exist_12 { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 83 \
    name exist_13 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_exist_13 \
    op interface \
    ports { exist_13 { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 84 \
    name exist_14 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_exist_14 \
    op interface \
    ports { exist_14 { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 85 \
    name exist_15 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_exist_15 \
    op interface \
    ports { exist_15 { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 86 \
    name exist_16 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_exist_16 \
    op interface \
    ports { exist_16 { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 87 \
    name exist_17 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_exist_17 \
    op interface \
    ports { exist_17 { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 88 \
    name exist_18 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_exist_18 \
    op interface \
    ports { exist_18 { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 89 \
    name exist_19 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_exist_19 \
    op interface \
    ports { exist_19 { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 90 \
    name exist_20 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_exist_20 \
    op interface \
    ports { exist_20 { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 91 \
    name exist_21 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_exist_21 \
    op interface \
    ports { exist_21 { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 92 \
    name exist_22 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_exist_22 \
    op interface \
    ports { exist_22 { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 93 \
    name exist_23 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_exist_23 \
    op interface \
    ports { exist_23 { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 94 \
    name exist_24 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_exist_24 \
    op interface \
    ports { exist_24 { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 95 \
    name exist_25 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_exist_25 \
    op interface \
    ports { exist_25 { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 96 \
    name exist_26 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_exist_26 \
    op interface \
    ports { exist_26 { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 97 \
    name exist_27 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_exist_27 \
    op interface \
    ports { exist_27 { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 98 \
    name exist_28 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_exist_28 \
    op interface \
    ports { exist_28 { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 99 \
    name exist_29 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_exist_29 \
    op interface \
    ports { exist_29 { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 100 \
    name exist_30 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_exist_30 \
    op interface \
    ports { exist_30 { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 101 \
    name exist_31 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_exist_31 \
    op interface \
    ports { exist_31 { I 1 bit } } \
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


