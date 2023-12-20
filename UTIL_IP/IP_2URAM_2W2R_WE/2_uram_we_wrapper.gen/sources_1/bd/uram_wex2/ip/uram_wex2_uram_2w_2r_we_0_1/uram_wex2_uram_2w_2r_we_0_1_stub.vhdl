-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
-- Date        : Tue Apr 11 14:38:56 2023
-- Host        : noah running 64-bit Ubuntu 20.04.5 LTS
-- Command     : write_vhdl -force -mode synth_stub -rename_top uram_wex2_uram_2w_2r_we_0_1 -prefix
--               uram_wex2_uram_2w_2r_we_0_1_ uram_wex2_uram_2w_2r_we_0_0_stub.vhdl
-- Design      : uram_wex2_uram_2w_2r_we_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xcu280-fsvh2892-2L-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity uram_wex2_uram_2w_2r_we_0_1 is
  Port ( 
    clk : in STD_LOGIC;
    rst_n : in STD_LOGIC;
    ce0 : in STD_LOGIC;
    ce1 : in STD_LOGIC;
    we0 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    we1 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    addr0 : in STD_LOGIC_VECTOR ( 11 downto 0 );
    addr1 : in STD_LOGIC_VECTOR ( 11 downto 0 );
    rdata0 : out STD_LOGIC_VECTOR ( 63 downto 0 );
    rdata1 : out STD_LOGIC_VECTOR ( 63 downto 0 );
    wdata0 : in STD_LOGIC_VECTOR ( 63 downto 0 );
    wdata1 : in STD_LOGIC_VECTOR ( 63 downto 0 )
  );

end uram_wex2_uram_2w_2r_we_0_1;

architecture stub of uram_wex2_uram_2w_2r_we_0_1 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,rst_n,ce0,ce1,we0[7:0],we1[7:0],addr0[11:0],addr1[11:0],rdata0[63:0],rdata1[63:0],wdata0[63:0],wdata1[63:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "uram_2w_2r_we,Vivado 2020.2";
begin
end;
