-makelib ies_lib/xpm -sv \
  "/opt/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
  "/opt/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
  "/opt/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
-endlib
-makelib ies_lib/xpm \
  "/opt/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/custom_m_axi_s_256/ipshared/5f70/s2p.v" \
  "../../../bd/custom_m_axi_s_256/ip/custom_m_axi_s_256_step_to_pulse_0_0/sim/custom_m_axi_s_256_step_to_pulse_0_0.v" \
  "../../../bd/custom_m_axi_s_256/ip/custom_m_axi_s_256_step_to_pulse_0_1/sim/custom_m_axi_s_256_step_to_pulse_0_1.v" \
-endlib
-makelib ies_lib/xil_defaultlib -sv \
  "../../../bd/custom_m_axi_s_256/ipshared/c1ff/axi_counter.sv" \
  "../../../bd/custom_m_axi_s_256/ipshared/c1ff/mread_master.sv" \
  "../../../bd/custom_m_axi_s_256/ip/custom_m_axi_s_256_mread_master_0_0/sim/custom_m_axi_s_256_mread_master_0_0.sv" \
  "../../../bd/custom_m_axi_s_256/ipshared/b5fc/s_wr_master.sv" \
  "../../../bd/custom_m_axi_s_256/ip/custom_m_axi_s_256_swr_engine_0_0/sim/custom_m_axi_s_256_swr_engine_0_0.sv" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/custom_m_axi_s_256/sim/custom_m_axi_s_256.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  glbl.v
-endlib

