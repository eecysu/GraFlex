-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
-- Date        : Sun May  7 10:22:41 2023
-- Host        : noah running 64-bit Ubuntu 20.04.5 LTS
-- Command     : write_vhdl -force -mode funcsim -rename_top uram_wex4_uram_2w_2r_we_0_1 -prefix
--               uram_wex4_uram_2w_2r_we_0_1_ uram_wex4_uram_2w_2r_we_0_0_sim_netlist.vhdl
-- Design      : uram_wex4_uram_2w_2r_we_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xcu280-fsvh2892-2L-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity uram_wex4_uram_2w_2r_we_0_1_uram_2w_2r_we is
  port (
    rdata0 : out STD_LOGIC_VECTOR ( 63 downto 0 );
    rdata1 : out STD_LOGIC_VECTOR ( 63 downto 0 );
    clk : in STD_LOGIC;
    ce0 : in STD_LOGIC;
    ce1 : in STD_LOGIC;
    addr0 : in STD_LOGIC_VECTOR ( 11 downto 0 );
    addr1 : in STD_LOGIC_VECTOR ( 11 downto 0 );
    wdata0 : in STD_LOGIC_VECTOR ( 63 downto 0 );
    wdata1 : in STD_LOGIC_VECTOR ( 63 downto 0 );
    we0 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    we1 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    rst_n : in STD_LOGIC
  );
end uram_wex4_uram_2w_2r_we_0_1_uram_2w_2r_we;

architecture STRUCTURE of uram_wex4_uram_2w_2r_we_0_1_uram_2w_2r_we is
  signal RST_A0 : STD_LOGIC;
  signal URAM288_BASE_inst_i_4_n_0 : STD_LOGIC;
  signal \_inferred__0/URAM288_BASE_inst_i_5_n_0\ : STD_LOGIC;
  signal rw_bit0 : STD_LOGIC;
  signal rw_bit1 : STD_LOGIC;
  signal NLW_URAM288_BASE_inst_DBITERR_A_UNCONNECTED : STD_LOGIC;
  signal NLW_URAM288_BASE_inst_DBITERR_B_UNCONNECTED : STD_LOGIC;
  signal NLW_URAM288_BASE_inst_SBITERR_A_UNCONNECTED : STD_LOGIC;
  signal NLW_URAM288_BASE_inst_SBITERR_B_UNCONNECTED : STD_LOGIC;
  signal NLW_URAM288_BASE_inst_DOUT_A_UNCONNECTED : STD_LOGIC_VECTOR ( 71 downto 64 );
  signal NLW_URAM288_BASE_inst_DOUT_B_UNCONNECTED : STD_LOGIC_VECTOR ( 71 downto 64 );
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of URAM288_BASE_inst : label is "PRIMITIVE";
begin
URAM288_BASE_inst: unisim.vcomponents.URAM288_BASE
    generic map(
      AUTO_SLEEP_LATENCY => 8,
      AVG_CONS_INACTIVE_CYCLES => 10,
      BWE_MODE_A => "PARITY_INDEPENDENT",
      BWE_MODE_B => "PARITY_INDEPENDENT",
      EN_AUTO_SLEEP_MODE => "FALSE",
      EN_ECC_RD_A => "FALSE",
      EN_ECC_RD_B => "FALSE",
      EN_ECC_WR_A => "FALSE",
      EN_ECC_WR_B => "FALSE",
      IREG_PRE_A => "FALSE",
      IREG_PRE_B => "FALSE",
      IS_CLK_INVERTED => '0',
      IS_EN_A_INVERTED => '0',
      IS_EN_B_INVERTED => '0',
      IS_RDB_WR_A_INVERTED => '0',
      IS_RDB_WR_B_INVERTED => '0',
      IS_RST_A_INVERTED => '0',
      IS_RST_B_INVERTED => '0',
      OREG_A => "FALSE",
      OREG_B => "FALSE",
      OREG_ECC_A => "FALSE",
      OREG_ECC_B => "FALSE",
      RST_MODE_A => "SYNC",
      RST_MODE_B => "SYNC",
      USE_EXT_CE_A => "FALSE",
      USE_EXT_CE_B => "FALSE"
    )
        port map (
      ADDR_A(22 downto 12) => B"00000000000",
      ADDR_A(11 downto 0) => addr0(11 downto 0),
      ADDR_B(22 downto 12) => B"00000000000",
      ADDR_B(11 downto 0) => addr1(11 downto 0),
      BWE_A(8) => '0',
      BWE_A(7 downto 0) => we0(7 downto 0),
      BWE_B(8) => '0',
      BWE_B(7 downto 0) => we1(7 downto 0),
      CLK => clk,
      DBITERR_A => NLW_URAM288_BASE_inst_DBITERR_A_UNCONNECTED,
      DBITERR_B => NLW_URAM288_BASE_inst_DBITERR_B_UNCONNECTED,
      DIN_A(71 downto 64) => B"00000000",
      DIN_A(63 downto 0) => wdata0(63 downto 0),
      DIN_B(71 downto 64) => B"00000000",
      DIN_B(63 downto 0) => wdata1(63 downto 0),
      DOUT_A(71 downto 64) => NLW_URAM288_BASE_inst_DOUT_A_UNCONNECTED(71 downto 64),
      DOUT_A(63 downto 0) => rdata0(63 downto 0),
      DOUT_B(71 downto 64) => NLW_URAM288_BASE_inst_DOUT_B_UNCONNECTED(71 downto 64),
      DOUT_B(63 downto 0) => rdata1(63 downto 0),
      EN_A => ce0,
      EN_B => ce1,
      INJECT_DBITERR_A => '0',
      INJECT_DBITERR_B => '0',
      INJECT_SBITERR_A => '0',
      INJECT_SBITERR_B => '0',
      OREG_CE_A => '0',
      OREG_CE_B => '0',
      OREG_ECC_CE_A => '0',
      OREG_ECC_CE_B => '0',
      RDB_WR_A => rw_bit0,
      RDB_WR_B => rw_bit1,
      RST_A => RST_A0,
      RST_B => RST_A0,
      SBITERR_A => NLW_URAM288_BASE_inst_SBITERR_A_UNCONNECTED,
      SBITERR_B => NLW_URAM288_BASE_inst_SBITERR_B_UNCONNECTED,
      SLEEP => '0'
    );
URAM288_BASE_inst_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFEFFFF"
    )
        port map (
      I0 => we0(0),
      I1 => we0(1),
      I2 => we0(2),
      I3 => we0(3),
      I4 => URAM288_BASE_inst_i_4_n_0,
      O => rw_bit0
    );
URAM288_BASE_inst_i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rst_n,
      O => RST_A0
    );
URAM288_BASE_inst_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => we0(6),
      I1 => we0(7),
      I2 => we0(5),
      I3 => we0(4),
      O => URAM288_BASE_inst_i_4_n_0
    );
\_inferred__0/URAM288_BASE_inst_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFEFFFF"
    )
        port map (
      I0 => we1(0),
      I1 => we1(1),
      I2 => we1(2),
      I3 => we1(3),
      I4 => \_inferred__0/URAM288_BASE_inst_i_5_n_0\,
      O => rw_bit1
    );
\_inferred__0/URAM288_BASE_inst_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => we1(6),
      I1 => we1(7),
      I2 => we1(5),
      I3 => we1(4),
      O => \_inferred__0/URAM288_BASE_inst_i_5_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity uram_wex4_uram_2w_2r_we_0_1 is
  port (
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
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of uram_wex4_uram_2w_2r_we_0_1 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of uram_wex4_uram_2w_2r_we_0_1 : entity is "uram_wex4_uram_2w_2r_we_0_0,uram_2w_2r_we,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of uram_wex4_uram_2w_2r_we_0_1 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of uram_wex4_uram_2w_2r_we_0_1 : entity is "package_project";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of uram_wex4_uram_2w_2r_we_0_1 : entity is "uram_2w_2r_we,Vivado 2020.2";
end uram_wex4_uram_2w_2r_we_0_1;

architecture STRUCTURE of uram_wex4_uram_2w_2r_we_0_1 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN uram_wex4_clk_0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of rst_n : signal is "xilinx.com:signal:reset:1.0 rst_n RST";
  attribute X_INTERFACE_PARAMETER of rst_n : signal is "XIL_INTERFACENAME rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
inst: entity work.uram_wex4_uram_2w_2r_we_0_1_uram_2w_2r_we
     port map (
      addr0(11 downto 0) => addr0(11 downto 0),
      addr1(11 downto 0) => addr1(11 downto 0),
      ce0 => ce0,
      ce1 => ce1,
      clk => clk,
      rdata0(63 downto 0) => rdata0(63 downto 0),
      rdata1(63 downto 0) => rdata1(63 downto 0),
      rst_n => rst_n,
      wdata0(63 downto 0) => wdata0(63 downto 0),
      wdata1(63 downto 0) => wdata1(63 downto 0),
      we0(7 downto 0) => we0(7 downto 0),
      we1(7 downto 0) => we1(7 downto 0)
    );
end STRUCTURE;
