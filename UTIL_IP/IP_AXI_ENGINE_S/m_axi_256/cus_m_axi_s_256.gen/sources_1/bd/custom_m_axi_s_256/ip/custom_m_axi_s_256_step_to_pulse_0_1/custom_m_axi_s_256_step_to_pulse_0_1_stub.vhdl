-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
-- Date        : Thu Jun 16 20:03:30 2022
-- Host        : noah running 64-bit Ubuntu 18.04.4 LTS
-- Command     : write_vhdl -force -mode synth_stub -rename_top custom_m_axi_s_256_step_to_pulse_0_1 -prefix
--               custom_m_axi_s_256_step_to_pulse_0_1_ custom_m_axi_128_step_to_pulse_0_1_stub.vhdl
-- Design      : custom_m_axi_128_step_to_pulse_0_1
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xcu280-fsvh2892-2L-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity custom_m_axi_s_256_step_to_pulse_0_1 is
  Port ( 
    clk : in STD_LOGIC;
    step_in : in STD_LOGIC;
    pul_out : out STD_LOGIC
  );

end custom_m_axi_s_256_step_to_pulse_0_1;

architecture stub of custom_m_axi_s_256_step_to_pulse_0_1 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,step_in,pul_out";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "step_to_pulse,Vivado 2020.2";
begin
end;
