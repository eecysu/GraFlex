vlib work
vlib riviera

vlib riviera/xil_defaultlib

vmap xil_defaultlib riviera/xil_defaultlib

vlog -work xil_defaultlib  -v2k5 \
"../../../bd/uram_wex4/ipshared/ec9b/uram_2w_2r_we.v" \
"../../../bd/uram_wex4/ip/uram_wex4_uram_2w_2r_we_0_0/sim/uram_wex4_uram_2w_2r_we_0_0.v" \
"../../../bd/uram_wex4/ip/uram_wex4_uram_2w_2r_we_0_1/sim/uram_wex4_uram_2w_2r_we_0_1.v" \
"../../../bd/uram_wex4/ip/uram_wex4_uram_2w_2r_we_1_0/sim/uram_wex4_uram_2w_2r_we_1_0.v" \
"../../../bd/uram_wex4/ip/uram_wex4_uram_2w_2r_we_0_2/sim/uram_wex4_uram_2w_2r_we_0_2.v" \
"../../../bd/uram_wex4/sim/uram_wex4.v" \


vlog -work xil_defaultlib \
"glbl.v"

