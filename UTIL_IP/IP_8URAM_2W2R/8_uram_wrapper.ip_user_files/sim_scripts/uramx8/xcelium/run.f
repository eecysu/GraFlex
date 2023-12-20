-makelib xcelium_lib/xpm -sv \
  "/opt/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib xcelium_lib/xpm \
  "/opt/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/uramx8/ipshared/074c/uram_2w2r.srcs/sources_1/new/uram_2w_2r.v" \
  "../../../bd/uramx8/ip/uramx8_uram_2w_2r_0_0/sim/uramx8_uram_2w_2r_0_0.v" \
  "../../../bd/uramx8/ip/uramx8_uram_2w_2r_0_1/sim/uramx8_uram_2w_2r_0_1.v" \
  "../../../bd/uramx8/ip/uramx8_uram_2w_2r_0_2/sim/uramx8_uram_2w_2r_0_2.v" \
  "../../../bd/uramx8/ip/uramx8_uram_2w_2r_0_3/sim/uramx8_uram_2w_2r_0_3.v" \
  "../../../bd/uramx8/ip/uramx8_uram_2w_2r_1_0/sim/uramx8_uram_2w_2r_1_0.v" \
  "../../../bd/uramx8/ip/uramx8_uram_2w_2r_1_1/sim/uramx8_uram_2w_2r_1_1.v" \
  "../../../bd/uramx8/ip/uramx8_uram_2w_2r_2_0/sim/uramx8_uram_2w_2r_2_0.v" \
  "../../../bd/uramx8/ip/uramx8_uram_2w_2r_3_0/sim/uramx8_uram_2w_2r_3_0.v" \
  "../../../bd/uramx8/sim/uramx8.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib

