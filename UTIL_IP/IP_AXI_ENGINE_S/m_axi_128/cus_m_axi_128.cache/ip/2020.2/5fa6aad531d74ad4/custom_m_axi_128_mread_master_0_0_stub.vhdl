-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
-- Date        : Thu Oct 13 17:11:09 2022
-- Host        : noah running 64-bit Ubuntu 20.04.5 LTS
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ custom_m_axi_128_mread_master_0_0_stub.vhdl
-- Design      : custom_m_axi_128_mread_master_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xcu280-fsvh2892-2L-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    clk : in STD_LOGIC;
    rst_n : in STD_LOGIC;
    baseAddr : in STD_LOGIC_VECTOR ( 32 downto 0 );
    req_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    req_full_n : out STD_LOGIC;
    req_wr_en : in STD_LOGIC;
    req_start : in STD_LOGIC;
    req_done : out STD_LOGIC;
    m_axi_ARVALID : out STD_LOGIC;
    m_axi_ARLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_ARADDR : out STD_LOGIC_VECTOR ( 32 downto 0 );
    m_axi_ARID : out STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_ARSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_ARBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_ARLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_ARCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_ARQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_ARREGION : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_ARREADY : in STD_LOGIC;
    m_axi_RVALID : in STD_LOGIC;
    m_axi_RDATA : in STD_LOGIC_VECTOR ( 127 downto 0 );
    m_axi_RLAST : in STD_LOGIC;
    m_axi_RID : in STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_RRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_RREADY : out STD_LOGIC;
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tlast : out STD_LOGIC;
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axis_tstrb : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axis_tdata : out STD_LOGIC_VECTOR ( 127 downto 0 )
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,rst_n,baseAddr[32:0],req_din[31:0],req_full_n,req_wr_en,req_start,req_done,m_axi_ARVALID,m_axi_ARLEN[7:0],m_axi_ARADDR[32:0],m_axi_ARID[5:0],m_axi_ARSIZE[2:0],m_axi_ARBURST[1:0],m_axi_ARLOCK[1:0],m_axi_ARCACHE[3:0],m_axi_ARQOS[3:0],m_axi_ARREGION[3:0],m_axi_ARREADY,m_axi_RVALID,m_axi_RDATA[127:0],m_axi_RLAST,m_axi_RID[5:0],m_axi_RRESP[1:0],m_axi_RREADY,m_axis_tvalid,m_axis_tready,m_axis_tlast,m_axis_tkeep[15:0],m_axis_tstrb[15:0],m_axis_tdata[127:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "mread_master,Vivado 2020.2";
begin
end;
