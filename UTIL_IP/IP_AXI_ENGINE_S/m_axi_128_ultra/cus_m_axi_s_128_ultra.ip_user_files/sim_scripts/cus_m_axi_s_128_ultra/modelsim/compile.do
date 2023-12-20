vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xpm
vlib modelsim_lib/msim/xil_defaultlib

vmap xpm modelsim_lib/msim/xpm
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog -work xpm -64 -incr -sv \
"/opt/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"/opt/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
"/opt/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \

vcom -work xpm -64 -93 \
"/opt/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib -64 -incr \
"../../../bd/cus_m_axi_s_128_ultra/ipshared/5f70/s2p.v" \
"../../../bd/cus_m_axi_s_128_ultra/ip/cus_m_axi_s_128_ultra_step_to_pulse_0_0/sim/cus_m_axi_s_128_ultra_step_to_pulse_0_0.v" \
"../../../bd/cus_m_axi_s_128_ultra/ip/cus_m_axi_s_128_ultra_step_to_pulse_0_1/sim/cus_m_axi_s_128_ultra_step_to_pulse_0_1.v" \

vlog -work xil_defaultlib -64 -incr -sv \
"../../../bd/cus_m_axi_s_128_ultra/ipshared/f9a3/axi_counter.sv" \
"../../../bd/cus_m_axi_s_128_ultra/ipshared/f9a3/mread_master.sv" \
"../../../bd/cus_m_axi_s_128_ultra/ip/cus_m_axi_s_128_ultra_mread_master_ultra_0_0/sim/cus_m_axi_s_128_ultra_mread_master_ultra_0_0.sv" \
"../../../bd/cus_m_axi_s_128_ultra/ipshared/b5fc/s_wr_master.sv" \
"../../../bd/cus_m_axi_s_128_ultra/ip/cus_m_axi_s_128_ultra_swr_engine_0_0/sim/cus_m_axi_s_128_ultra_swr_engine_0_0.sv" \

vlog -work xil_defaultlib -64 -incr \
"../../../bd/cus_m_axi_s_128_ultra/sim/cus_m_axi_s_128_ultra.v" \

vlog -work xil_defaultlib \
"glbl.v"

