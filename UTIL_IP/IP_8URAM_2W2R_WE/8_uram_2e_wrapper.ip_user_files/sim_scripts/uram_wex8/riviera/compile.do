vlib work
vlib riviera

vlib riviera/xil_defaultlib

vmap xil_defaultlib riviera/xil_defaultlib

vlog -work xil_defaultlib  -v2k5 \
"../../../bd/uram_wex8/ipshared/9c97/uram_2w_2r_we.v" \
"../../../bd/uram_wex8/ip/uram_wex8_uram_2w_2r_we_0_0/sim/uram_wex8_uram_2w_2r_we_0_0.v" \
"../../../bd/uram_wex8/ip/uram_wex8_uram_2w_2r_we_0_1/sim/uram_wex8_uram_2w_2r_we_0_1.v" \
"../../../bd/uram_wex8/ip/uram_wex8_uram_2w_2r_we_0_2/sim/uram_wex8_uram_2w_2r_we_0_2.v" \
"../../../bd/uram_wex8/ip/uram_wex8_uram_2w_2r_we_1_0/sim/uram_wex8_uram_2w_2r_we_1_0.v" \
"../../../bd/uram_wex8/ip/uram_wex8_uram_2w_2r_we_3_0/sim/uram_wex8_uram_2w_2r_we_3_0.v" \
"../../../bd/uram_wex8/ip/uram_wex8_uram_2w_2r_we_4_0/sim/uram_wex8_uram_2w_2r_we_4_0.v" \
"../../../bd/uram_wex8/ip/uram_wex8_uram_2w_2r_we_5_0/sim/uram_wex8_uram_2w_2r_we_5_0.v" \
"../../../bd/uram_wex8/ip/uram_wex8_uram_2w_2r_we_6_0/sim/uram_wex8_uram_2w_2r_we_6_0.v" \
"../../../bd/uram_wex8/sim/uram_wex8.v" \


vlog -work xil_defaultlib \
"glbl.v"

