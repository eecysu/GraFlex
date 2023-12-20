-makelib xcelium_lib/xpm -sv \
  "/opt/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
  "/opt/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
  "/opt/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
-endlib
-makelib xcelium_lib/xpm \
  "/opt/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib -sv \
  "../../../bd/custom_m_axi_128/ipshared/c1ff/axi_counter.sv" \
  "../../../bd/custom_m_axi_128/ipshared/c1ff/mread_master.sv" \
  "../../../bd/custom_m_axi_128/ip/custom_m_axi_128_mread_master_0_0/sim/custom_m_axi_128_mread_master_0_0.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/custom_m_axi_128/ipshared/5f70/s2p.v" \
  "../../../bd/custom_m_axi_128/ip/custom_m_axi_128_step_to_pulse_0_0/sim/custom_m_axi_128_step_to_pulse_0_0.v" \
  "../../../bd/custom_m_axi_128/ip/custom_m_axi_128_step_to_pulse_0_1/sim/custom_m_axi_128_step_to_pulse_0_1.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib -sv \
  "../../../bd/custom_m_axi_128/ipshared/b5fc/s_wr_master.sv" \
  "../../../bd/custom_m_axi_128/ip/custom_m_axi_128_swr_engine_0_0/sim/custom_m_axi_128_swr_engine_0_0.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/custom_m_axi_128/sim/custom_m_axi_128.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib

