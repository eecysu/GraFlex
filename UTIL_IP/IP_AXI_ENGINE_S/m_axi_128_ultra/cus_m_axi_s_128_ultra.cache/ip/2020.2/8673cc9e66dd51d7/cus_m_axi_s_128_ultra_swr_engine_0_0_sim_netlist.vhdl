-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
-- Date        : Fri Jan  6 18:47:10 2023
-- Host        : noah running 64-bit Ubuntu 20.04.5 LTS
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ cus_m_axi_s_128_ultra_swr_engine_0_0_sim_netlist.vhdl
-- Design      : cus_m_axi_s_128_ultra_swr_engine_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xcu280-fsvh2892-2L-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_counter is
  port (
    is_zero_r_reg_0 : out STD_LOGIC;
    start_reg : out STD_LOGIC;
    \count_r_reg[0]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    is_zero_r_reg_1 : out STD_LOGIC;
    \count_r_reg[3]_0\ : out STD_LOGIC;
    is_zero_r_reg_2 : out STD_LOGIC;
    is_zero_r_reg_3 : out STD_LOGIC;
    \count_r_reg[0]_1\ : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    is_zero_r_reg_4 : in STD_LOGIC;
    clk : in STD_LOGIC;
    start : in STD_LOGIC;
    m_axi_WREADY : in STD_LOGIC;
    data_valid : in STD_LOGIC;
    w_running : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \count_r_reg[1]_0\ : in STD_LOGIC;
    w_running_reg : in STD_LOGIC;
    wfirst : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_counter;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_counter is
  signal \count_r[1]_i_1_n_0\ : STD_LOGIC;
  signal \count_r[2]_i_1_n_0\ : STD_LOGIC;
  signal \count_r[3]_i_1_n_0\ : STD_LOGIC;
  signal \^count_r_reg[0]_0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \count_r_reg_n_0_[1]\ : STD_LOGIC;
  signal \count_r_reg_n_0_[2]\ : STD_LOGIC;
  signal \count_r_reg_n_0_[3]\ : STD_LOGIC;
  signal \^is_zero_r_reg_0\ : STD_LOGIC;
  signal p_6_in : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \count_r[0]_i_1__3\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of is_zero_r_i_10 : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of is_zero_r_i_21 : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of wfirst_i_1 : label is "soft_lutpair14";
begin
  \count_r_reg[0]_0\(0) <= \^count_r_reg[0]_0\(0);
  is_zero_r_reg_0 <= \^is_zero_r_reg_0\;
\count_r[0]_i_1__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EAAAAAAA"
    )
        port map (
      I0 => start,
      I1 => m_axi_WREADY,
      I2 => data_valid,
      I3 => w_running,
      I4 => \^is_zero_r_reg_0\,
      O => start_reg
    );
\count_r[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B88B"
    )
        port map (
      I0 => Q(0),
      I1 => \count_r_reg[1]_0\,
      I2 => \^count_r_reg[0]_0\(0),
      I3 => \count_r_reg_n_0_[1]\,
      O => \count_r[1]_i_1_n_0\
    );
\count_r[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8B8B88B"
    )
        port map (
      I0 => Q(1),
      I1 => \count_r_reg[1]_0\,
      I2 => \count_r_reg_n_0_[2]\,
      I3 => \count_r_reg_n_0_[1]\,
      I4 => \^count_r_reg[0]_0\(0),
      O => \count_r[2]_i_1_n_0\
    );
\count_r[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8B8B8B8B88B"
    )
        port map (
      I0 => Q(2),
      I1 => \count_r_reg[1]_0\,
      I2 => \count_r_reg_n_0_[3]\,
      I3 => \count_r_reg_n_0_[2]\,
      I4 => \^count_r_reg[0]_0\(0),
      I5 => \count_r_reg_n_0_[1]\,
      O => \count_r[3]_i_1_n_0\
    );
\count_r_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => E(0),
      D => D(0),
      Q => \^count_r_reg[0]_0\(0),
      S => \count_r_reg[0]_1\
    );
\count_r_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => E(0),
      D => \count_r[1]_i_1_n_0\,
      Q => \count_r_reg_n_0_[1]\,
      S => \count_r_reg[0]_1\
    );
\count_r_reg[2]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => E(0),
      D => \count_r[2]_i_1_n_0\,
      Q => \count_r_reg_n_0_[2]\,
      S => \count_r_reg[0]_1\
    );
\count_r_reg[3]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => E(0),
      D => \count_r[3]_i_1_n_0\,
      Q => \count_r_reg_n_0_[3]\,
      S => \count_r_reg[0]_1\
    );
is_zero_r_i_10: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => m_axi_WREADY,
      I1 => data_valid,
      I2 => w_running,
      O => p_6_in
    );
is_zero_r_i_21: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \^is_zero_r_reg_0\,
      I1 => w_running,
      I2 => data_valid,
      I3 => m_axi_WREADY,
      O => is_zero_r_reg_1
    );
\is_zero_r_i_4__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00020000"
    )
        port map (
      I0 => p_6_in,
      I1 => \count_r_reg_n_0_[3]\,
      I2 => \count_r_reg_n_0_[2]\,
      I3 => \count_r_reg_n_0_[1]\,
      I4 => \^count_r_reg[0]_0\(0),
      O => \count_r_reg[3]_0\
    );
is_zero_r_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => is_zero_r_reg_4,
      Q => \^is_zero_r_reg_0\,
      R => \count_r_reg[0]_1\
    );
w_running_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF4CCCCCCC"
    )
        port map (
      I0 => \^is_zero_r_reg_0\,
      I1 => w_running,
      I2 => data_valid,
      I3 => m_axi_WREADY,
      I4 => w_running_reg,
      I5 => start,
      O => is_zero_r_reg_2
    );
wfirst_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF8000"
    )
        port map (
      I0 => \^is_zero_r_reg_0\,
      I1 => m_axi_WREADY,
      I2 => data_valid,
      I3 => w_running,
      I4 => wfirst,
      O => is_zero_r_reg_3
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_counter__parameterized0\ is
  port (
    rst_n_0 : out STD_LOGIC;
    start_reg_rep : out STD_LOGIC;
    m_axi_AWLEN : out STD_LOGIC_VECTOR ( 3 downto 0 );
    clk : in STD_LOGIC;
    data : in STD_LOGIC_VECTOR ( 13 downto 0 );
    \count_r_reg[0]_0\ : in STD_LOGIC;
    is_zero_r_reg_0 : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \is_zero_r_i_4__1_0\ : in STD_LOGIC;
    \count_r_reg[0]_1\ : in STD_LOGIC;
    m_axi_AWREADY : in STD_LOGIC;
    rst_n : in STD_LOGIC;
    start : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_counter__parameterized0\ : entity is "axi_counter";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_counter__parameterized0\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_counter__parameterized0\ is
  signal \count_r[0]_i_10__1_n_0\ : STD_LOGIC;
  signal \count_r[0]_i_11__0_n_0\ : STD_LOGIC;
  signal \count_r[0]_i_12__0_n_0\ : STD_LOGIC;
  signal \count_r[0]_i_13__0_n_0\ : STD_LOGIC;
  signal \count_r[0]_i_14__0_n_0\ : STD_LOGIC;
  signal \count_r[0]_i_15__0_n_0\ : STD_LOGIC;
  signal \count_r[0]_i_16__0_n_0\ : STD_LOGIC;
  signal \count_r[0]_i_17__0_n_0\ : STD_LOGIC;
  signal \count_r[0]_i_2_n_0\ : STD_LOGIC;
  signal \count_r[0]_i_3__0_n_0\ : STD_LOGIC;
  signal \count_r[0]_i_4__0_n_0\ : STD_LOGIC;
  signal \count_r[0]_i_5__0_n_0\ : STD_LOGIC;
  signal \count_r[0]_i_6__0_n_0\ : STD_LOGIC;
  signal \count_r[0]_i_7__0_n_0\ : STD_LOGIC;
  signal \count_r[0]_i_8__0_n_0\ : STD_LOGIC;
  signal \count_r[0]_i_9__0_n_0\ : STD_LOGIC;
  signal \count_r[16]_i_10__0_n_0\ : STD_LOGIC;
  signal \count_r[16]_i_11__0_n_0\ : STD_LOGIC;
  signal \count_r[16]_i_12__0_n_0\ : STD_LOGIC;
  signal \count_r[16]_i_13__0_n_0\ : STD_LOGIC;
  signal \count_r[16]_i_14__0_n_0\ : STD_LOGIC;
  signal \count_r[16]_i_15__0_n_0\ : STD_LOGIC;
  signal \count_r[16]_i_16__0_n_0\ : STD_LOGIC;
  signal \count_r[16]_i_17__0_n_0\ : STD_LOGIC;
  signal \count_r[16]_i_2__0_n_0\ : STD_LOGIC;
  signal \count_r[16]_i_3__0_n_0\ : STD_LOGIC;
  signal \count_r[16]_i_4__0_n_0\ : STD_LOGIC;
  signal \count_r[16]_i_5__0_n_0\ : STD_LOGIC;
  signal \count_r[16]_i_6__0_n_0\ : STD_LOGIC;
  signal \count_r[16]_i_7__0_n_0\ : STD_LOGIC;
  signal \count_r[16]_i_8__0_n_0\ : STD_LOGIC;
  signal \count_r[16]_i_9__0_n_0\ : STD_LOGIC;
  signal \count_r[24]_i_10__0_n_0\ : STD_LOGIC;
  signal \count_r[24]_i_11__0_n_0\ : STD_LOGIC;
  signal \count_r[24]_i_12__0_n_0\ : STD_LOGIC;
  signal \count_r[24]_i_13__0_n_0\ : STD_LOGIC;
  signal \count_r[24]_i_14__0_n_0\ : STD_LOGIC;
  signal \count_r[24]_i_15__0_n_0\ : STD_LOGIC;
  signal \count_r[24]_i_16__0_n_0\ : STD_LOGIC;
  signal \count_r[24]_i_17__0_n_0\ : STD_LOGIC;
  signal \count_r[24]_i_2__0_n_0\ : STD_LOGIC;
  signal \count_r[24]_i_3__0_n_0\ : STD_LOGIC;
  signal \count_r[24]_i_4__0_n_0\ : STD_LOGIC;
  signal \count_r[24]_i_5__0_n_0\ : STD_LOGIC;
  signal \count_r[24]_i_6__0_n_0\ : STD_LOGIC;
  signal \count_r[24]_i_7__0_n_0\ : STD_LOGIC;
  signal \count_r[24]_i_8__0_n_0\ : STD_LOGIC;
  signal \count_r[24]_i_9__0_n_0\ : STD_LOGIC;
  signal \count_r[32]_i_10__0_n_0\ : STD_LOGIC;
  signal \count_r[32]_i_11__0_n_0\ : STD_LOGIC;
  signal \count_r[32]_i_12__0_n_0\ : STD_LOGIC;
  signal \count_r[32]_i_13__0_n_0\ : STD_LOGIC;
  signal \count_r[32]_i_14__0_n_0\ : STD_LOGIC;
  signal \count_r[32]_i_15__0_n_0\ : STD_LOGIC;
  signal \count_r[32]_i_16__0_n_0\ : STD_LOGIC;
  signal \count_r[32]_i_17__0_n_0\ : STD_LOGIC;
  signal \count_r[32]_i_2__0_n_0\ : STD_LOGIC;
  signal \count_r[32]_i_3__0_n_0\ : STD_LOGIC;
  signal \count_r[32]_i_4__0_n_0\ : STD_LOGIC;
  signal \count_r[32]_i_5__0_n_0\ : STD_LOGIC;
  signal \count_r[32]_i_6__0_n_0\ : STD_LOGIC;
  signal \count_r[32]_i_7__0_n_0\ : STD_LOGIC;
  signal \count_r[32]_i_8__0_n_0\ : STD_LOGIC;
  signal \count_r[32]_i_9__0_n_0\ : STD_LOGIC;
  signal \count_r[40]_i_10__0_n_0\ : STD_LOGIC;
  signal \count_r[40]_i_11__0_n_0\ : STD_LOGIC;
  signal \count_r[40]_i_12__0_n_0\ : STD_LOGIC;
  signal \count_r[40]_i_13__0_n_0\ : STD_LOGIC;
  signal \count_r[40]_i_14__0_n_0\ : STD_LOGIC;
  signal \count_r[40]_i_15__0_n_0\ : STD_LOGIC;
  signal \count_r[40]_i_16__0_n_0\ : STD_LOGIC;
  signal \count_r[40]_i_17__0_n_0\ : STD_LOGIC;
  signal \count_r[40]_i_2__0_n_0\ : STD_LOGIC;
  signal \count_r[40]_i_3__0_n_0\ : STD_LOGIC;
  signal \count_r[40]_i_4__0_n_0\ : STD_LOGIC;
  signal \count_r[40]_i_5__0_n_0\ : STD_LOGIC;
  signal \count_r[40]_i_6__0_n_0\ : STD_LOGIC;
  signal \count_r[40]_i_7__0_n_0\ : STD_LOGIC;
  signal \count_r[40]_i_8__0_n_0\ : STD_LOGIC;
  signal \count_r[40]_i_9__0_n_0\ : STD_LOGIC;
  signal \count_r[48]_i_10__0_n_0\ : STD_LOGIC;
  signal \count_r[48]_i_11__0_n_0\ : STD_LOGIC;
  signal \count_r[48]_i_12__0_n_0\ : STD_LOGIC;
  signal \count_r[48]_i_13__0_n_0\ : STD_LOGIC;
  signal \count_r[48]_i_14__0_n_0\ : STD_LOGIC;
  signal \count_r[48]_i_15__0_n_0\ : STD_LOGIC;
  signal \count_r[48]_i_16__0_n_0\ : STD_LOGIC;
  signal \count_r[48]_i_2__1_n_0\ : STD_LOGIC;
  signal \count_r[48]_i_3__0_n_0\ : STD_LOGIC;
  signal \count_r[48]_i_4__0_n_0\ : STD_LOGIC;
  signal \count_r[48]_i_5__0_n_0\ : STD_LOGIC;
  signal \count_r[48]_i_6__0_n_0\ : STD_LOGIC;
  signal \count_r[48]_i_7__0_n_0\ : STD_LOGIC;
  signal \count_r[48]_i_8__0_n_0\ : STD_LOGIC;
  signal \count_r[48]_i_9__1_n_0\ : STD_LOGIC;
  signal \count_r[8]_i_10__0_n_0\ : STD_LOGIC;
  signal \count_r[8]_i_11__0_n_0\ : STD_LOGIC;
  signal \count_r[8]_i_12__0_n_0\ : STD_LOGIC;
  signal \count_r[8]_i_13__0_n_0\ : STD_LOGIC;
  signal \count_r[8]_i_14__0_n_0\ : STD_LOGIC;
  signal \count_r[8]_i_15__0_n_0\ : STD_LOGIC;
  signal \count_r[8]_i_16__0_n_0\ : STD_LOGIC;
  signal \count_r[8]_i_17__0_n_0\ : STD_LOGIC;
  signal \count_r[8]_i_2__0_n_0\ : STD_LOGIC;
  signal \count_r[8]_i_3__0_n_0\ : STD_LOGIC;
  signal \count_r[8]_i_4__0_n_0\ : STD_LOGIC;
  signal \count_r[8]_i_5__0_n_0\ : STD_LOGIC;
  signal \count_r[8]_i_6__0_n_0\ : STD_LOGIC;
  signal \count_r[8]_i_7__0_n_0\ : STD_LOGIC;
  signal \count_r[8]_i_8__0_n_0\ : STD_LOGIC;
  signal \count_r[8]_i_9__0_n_0\ : STD_LOGIC;
  signal count_r_reg : STD_LOGIC_VECTOR ( 55 downto 0 );
  signal \count_r_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \count_r_reg[0]_i_1_n_1\ : STD_LOGIC;
  signal \count_r_reg[0]_i_1_n_10\ : STD_LOGIC;
  signal \count_r_reg[0]_i_1_n_11\ : STD_LOGIC;
  signal \count_r_reg[0]_i_1_n_12\ : STD_LOGIC;
  signal \count_r_reg[0]_i_1_n_13\ : STD_LOGIC;
  signal \count_r_reg[0]_i_1_n_14\ : STD_LOGIC;
  signal \count_r_reg[0]_i_1_n_15\ : STD_LOGIC;
  signal \count_r_reg[0]_i_1_n_2\ : STD_LOGIC;
  signal \count_r_reg[0]_i_1_n_3\ : STD_LOGIC;
  signal \count_r_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \count_r_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \count_r_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \count_r_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal \count_r_reg[0]_i_1_n_8\ : STD_LOGIC;
  signal \count_r_reg[0]_i_1_n_9\ : STD_LOGIC;
  signal \count_r_reg[16]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_r_reg[16]_i_1__0_n_1\ : STD_LOGIC;
  signal \count_r_reg[16]_i_1__0_n_10\ : STD_LOGIC;
  signal \count_r_reg[16]_i_1__0_n_11\ : STD_LOGIC;
  signal \count_r_reg[16]_i_1__0_n_12\ : STD_LOGIC;
  signal \count_r_reg[16]_i_1__0_n_13\ : STD_LOGIC;
  signal \count_r_reg[16]_i_1__0_n_14\ : STD_LOGIC;
  signal \count_r_reg[16]_i_1__0_n_15\ : STD_LOGIC;
  signal \count_r_reg[16]_i_1__0_n_2\ : STD_LOGIC;
  signal \count_r_reg[16]_i_1__0_n_3\ : STD_LOGIC;
  signal \count_r_reg[16]_i_1__0_n_4\ : STD_LOGIC;
  signal \count_r_reg[16]_i_1__0_n_5\ : STD_LOGIC;
  signal \count_r_reg[16]_i_1__0_n_6\ : STD_LOGIC;
  signal \count_r_reg[16]_i_1__0_n_7\ : STD_LOGIC;
  signal \count_r_reg[16]_i_1__0_n_8\ : STD_LOGIC;
  signal \count_r_reg[16]_i_1__0_n_9\ : STD_LOGIC;
  signal \count_r_reg[24]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_r_reg[24]_i_1__0_n_1\ : STD_LOGIC;
  signal \count_r_reg[24]_i_1__0_n_10\ : STD_LOGIC;
  signal \count_r_reg[24]_i_1__0_n_11\ : STD_LOGIC;
  signal \count_r_reg[24]_i_1__0_n_12\ : STD_LOGIC;
  signal \count_r_reg[24]_i_1__0_n_13\ : STD_LOGIC;
  signal \count_r_reg[24]_i_1__0_n_14\ : STD_LOGIC;
  signal \count_r_reg[24]_i_1__0_n_15\ : STD_LOGIC;
  signal \count_r_reg[24]_i_1__0_n_2\ : STD_LOGIC;
  signal \count_r_reg[24]_i_1__0_n_3\ : STD_LOGIC;
  signal \count_r_reg[24]_i_1__0_n_4\ : STD_LOGIC;
  signal \count_r_reg[24]_i_1__0_n_5\ : STD_LOGIC;
  signal \count_r_reg[24]_i_1__0_n_6\ : STD_LOGIC;
  signal \count_r_reg[24]_i_1__0_n_7\ : STD_LOGIC;
  signal \count_r_reg[24]_i_1__0_n_8\ : STD_LOGIC;
  signal \count_r_reg[24]_i_1__0_n_9\ : STD_LOGIC;
  signal \count_r_reg[32]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_r_reg[32]_i_1__0_n_1\ : STD_LOGIC;
  signal \count_r_reg[32]_i_1__0_n_10\ : STD_LOGIC;
  signal \count_r_reg[32]_i_1__0_n_11\ : STD_LOGIC;
  signal \count_r_reg[32]_i_1__0_n_12\ : STD_LOGIC;
  signal \count_r_reg[32]_i_1__0_n_13\ : STD_LOGIC;
  signal \count_r_reg[32]_i_1__0_n_14\ : STD_LOGIC;
  signal \count_r_reg[32]_i_1__0_n_15\ : STD_LOGIC;
  signal \count_r_reg[32]_i_1__0_n_2\ : STD_LOGIC;
  signal \count_r_reg[32]_i_1__0_n_3\ : STD_LOGIC;
  signal \count_r_reg[32]_i_1__0_n_4\ : STD_LOGIC;
  signal \count_r_reg[32]_i_1__0_n_5\ : STD_LOGIC;
  signal \count_r_reg[32]_i_1__0_n_6\ : STD_LOGIC;
  signal \count_r_reg[32]_i_1__0_n_7\ : STD_LOGIC;
  signal \count_r_reg[32]_i_1__0_n_8\ : STD_LOGIC;
  signal \count_r_reg[32]_i_1__0_n_9\ : STD_LOGIC;
  signal \count_r_reg[40]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_r_reg[40]_i_1__0_n_1\ : STD_LOGIC;
  signal \count_r_reg[40]_i_1__0_n_10\ : STD_LOGIC;
  signal \count_r_reg[40]_i_1__0_n_11\ : STD_LOGIC;
  signal \count_r_reg[40]_i_1__0_n_12\ : STD_LOGIC;
  signal \count_r_reg[40]_i_1__0_n_13\ : STD_LOGIC;
  signal \count_r_reg[40]_i_1__0_n_14\ : STD_LOGIC;
  signal \count_r_reg[40]_i_1__0_n_15\ : STD_LOGIC;
  signal \count_r_reg[40]_i_1__0_n_2\ : STD_LOGIC;
  signal \count_r_reg[40]_i_1__0_n_3\ : STD_LOGIC;
  signal \count_r_reg[40]_i_1__0_n_4\ : STD_LOGIC;
  signal \count_r_reg[40]_i_1__0_n_5\ : STD_LOGIC;
  signal \count_r_reg[40]_i_1__0_n_6\ : STD_LOGIC;
  signal \count_r_reg[40]_i_1__0_n_7\ : STD_LOGIC;
  signal \count_r_reg[40]_i_1__0_n_8\ : STD_LOGIC;
  signal \count_r_reg[40]_i_1__0_n_9\ : STD_LOGIC;
  signal \count_r_reg[48]_i_1__0_n_1\ : STD_LOGIC;
  signal \count_r_reg[48]_i_1__0_n_10\ : STD_LOGIC;
  signal \count_r_reg[48]_i_1__0_n_11\ : STD_LOGIC;
  signal \count_r_reg[48]_i_1__0_n_12\ : STD_LOGIC;
  signal \count_r_reg[48]_i_1__0_n_13\ : STD_LOGIC;
  signal \count_r_reg[48]_i_1__0_n_14\ : STD_LOGIC;
  signal \count_r_reg[48]_i_1__0_n_15\ : STD_LOGIC;
  signal \count_r_reg[48]_i_1__0_n_2\ : STD_LOGIC;
  signal \count_r_reg[48]_i_1__0_n_3\ : STD_LOGIC;
  signal \count_r_reg[48]_i_1__0_n_4\ : STD_LOGIC;
  signal \count_r_reg[48]_i_1__0_n_5\ : STD_LOGIC;
  signal \count_r_reg[48]_i_1__0_n_6\ : STD_LOGIC;
  signal \count_r_reg[48]_i_1__0_n_7\ : STD_LOGIC;
  signal \count_r_reg[48]_i_1__0_n_8\ : STD_LOGIC;
  signal \count_r_reg[48]_i_1__0_n_9\ : STD_LOGIC;
  signal \count_r_reg[8]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_r_reg[8]_i_1__0_n_1\ : STD_LOGIC;
  signal \count_r_reg[8]_i_1__0_n_10\ : STD_LOGIC;
  signal \count_r_reg[8]_i_1__0_n_11\ : STD_LOGIC;
  signal \count_r_reg[8]_i_1__0_n_12\ : STD_LOGIC;
  signal \count_r_reg[8]_i_1__0_n_13\ : STD_LOGIC;
  signal \count_r_reg[8]_i_1__0_n_14\ : STD_LOGIC;
  signal \count_r_reg[8]_i_1__0_n_15\ : STD_LOGIC;
  signal \count_r_reg[8]_i_1__0_n_2\ : STD_LOGIC;
  signal \count_r_reg[8]_i_1__0_n_3\ : STD_LOGIC;
  signal \count_r_reg[8]_i_1__0_n_4\ : STD_LOGIC;
  signal \count_r_reg[8]_i_1__0_n_5\ : STD_LOGIC;
  signal \count_r_reg[8]_i_1__0_n_6\ : STD_LOGIC;
  signal \count_r_reg[8]_i_1__0_n_7\ : STD_LOGIC;
  signal \count_r_reg[8]_i_1__0_n_8\ : STD_LOGIC;
  signal \count_r_reg[8]_i_1__0_n_9\ : STD_LOGIC;
  signal \is_zero_r_i_10__0_n_0\ : STD_LOGIC;
  signal \is_zero_r_i_11__1_n_0\ : STD_LOGIC;
  signal \is_zero_r_i_12__1_n_0\ : STD_LOGIC;
  signal \is_zero_r_i_13__1_n_0\ : STD_LOGIC;
  signal \is_zero_r_i_14__1_n_0\ : STD_LOGIC;
  signal \is_zero_r_i_15__1_n_0\ : STD_LOGIC;
  signal \is_zero_r_i_16__0_n_0\ : STD_LOGIC;
  signal \is_zero_r_i_1__0_n_0\ : STD_LOGIC;
  signal \is_zero_r_i_2__3_n_0\ : STD_LOGIC;
  signal \is_zero_r_i_3__2_n_0\ : STD_LOGIC;
  signal \is_zero_r_i_4__1_n_0\ : STD_LOGIC;
  signal \is_zero_r_i_5__1_n_0\ : STD_LOGIC;
  signal \is_zero_r_i_6__1_n_0\ : STD_LOGIC;
  signal \is_zero_r_i_7__1_n_0\ : STD_LOGIC;
  signal \is_zero_r_i_8__1_n_0\ : STD_LOGIC;
  signal \is_zero_r_i_9__1_n_0\ : STD_LOGIC;
  signal is_zero_r_reg_n_0 : STD_LOGIC;
  signal \^rst_n_0\ : STD_LOGIC;
  signal \^start_reg_rep\ : STD_LOGIC;
  signal \NLW_count_r_reg[48]_i_1__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 to 7 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \count_r_reg[0]_i_1\ : label is 16;
  attribute ADDER_THRESHOLD of \count_r_reg[16]_i_1__0\ : label is 16;
  attribute ADDER_THRESHOLD of \count_r_reg[24]_i_1__0\ : label is 16;
  attribute ADDER_THRESHOLD of \count_r_reg[32]_i_1__0\ : label is 16;
  attribute ADDER_THRESHOLD of \count_r_reg[40]_i_1__0\ : label is 16;
  attribute ADDER_THRESHOLD of \count_r_reg[48]_i_1__0\ : label is 16;
  attribute ADDER_THRESHOLD of \count_r_reg[8]_i_1__0\ : label is 16;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \m_axi_AWLEN[0]_INST_0\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \m_axi_AWLEN[1]_INST_0\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \m_axi_AWLEN[2]_INST_0\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \m_axi_AWLEN[3]_INST_0\ : label is "soft_lutpair11";
begin
  rst_n_0 <= \^rst_n_0\;
  start_reg_rep <= \^start_reg_rep\;
\addr[63]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => \count_r_reg[0]_0\,
      I1 => \count_r_reg[0]_1\,
      I2 => m_axi_AWREADY,
      O => \^start_reg_rep\
    );
awvalid_r_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rst_n,
      O => \^rst_n_0\
    );
\count_r[0]_i_10__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(7),
      I1 => data(7),
      I2 => \count_r_reg[0]_0\,
      O => \count_r[0]_i_10__1_n_0\
    );
\count_r[0]_i_11__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(6),
      I1 => data(6),
      I2 => \count_r_reg[0]_0\,
      O => \count_r[0]_i_11__0_n_0\
    );
\count_r[0]_i_12__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(5),
      I1 => data(5),
      I2 => \count_r_reg[0]_0\,
      O => \count_r[0]_i_12__0_n_0\
    );
\count_r[0]_i_13__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(4),
      I1 => data(4),
      I2 => \count_r_reg[0]_0\,
      O => \count_r[0]_i_13__0_n_0\
    );
\count_r[0]_i_14__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(3),
      I1 => data(3),
      I2 => \count_r_reg[0]_0\,
      O => \count_r[0]_i_14__0_n_0\
    );
\count_r[0]_i_15__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(2),
      I1 => data(2),
      I2 => \count_r_reg[0]_0\,
      O => \count_r[0]_i_15__0_n_0\
    );
\count_r[0]_i_16__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(1),
      I1 => data(1),
      I2 => \count_r_reg[0]_0\,
      O => \count_r[0]_i_16__0_n_0\
    );
\count_r[0]_i_17__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(0),
      I1 => data(0),
      I2 => \count_r_reg[0]_0\,
      O => \count_r[0]_i_17__0_n_0\
    );
\count_r[0]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \count_r_reg[0]_0\,
      O => \count_r[0]_i_2_n_0\
    );
\count_r[0]_i_3__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \count_r_reg[0]_0\,
      O => \count_r[0]_i_3__0_n_0\
    );
\count_r[0]_i_4__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \count_r_reg[0]_0\,
      O => \count_r[0]_i_4__0_n_0\
    );
\count_r[0]_i_5__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \count_r_reg[0]_0\,
      O => \count_r[0]_i_5__0_n_0\
    );
\count_r[0]_i_6__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \count_r_reg[0]_0\,
      O => \count_r[0]_i_6__0_n_0\
    );
\count_r[0]_i_7__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \count_r_reg[0]_0\,
      O => \count_r[0]_i_7__0_n_0\
    );
\count_r[0]_i_8__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \count_r_reg[0]_0\,
      O => \count_r[0]_i_8__0_n_0\
    );
\count_r[0]_i_9__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \count_r_reg[0]_0\,
      O => \count_r[0]_i_9__0_n_0\
    );
\count_r[16]_i_10__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(23),
      I1 => data(13),
      I2 => \count_r_reg[0]_0\,
      O => \count_r[16]_i_10__0_n_0\
    );
\count_r[16]_i_11__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(22),
      I1 => data(13),
      I2 => \count_r_reg[0]_0\,
      O => \count_r[16]_i_11__0_n_0\
    );
\count_r[16]_i_12__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(21),
      I1 => data(13),
      I2 => \count_r_reg[0]_0\,
      O => \count_r[16]_i_12__0_n_0\
    );
\count_r[16]_i_13__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(20),
      I1 => data(13),
      I2 => \count_r_reg[0]_0\,
      O => \count_r[16]_i_13__0_n_0\
    );
\count_r[16]_i_14__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(19),
      I1 => data(13),
      I2 => \count_r_reg[0]_0\,
      O => \count_r[16]_i_14__0_n_0\
    );
\count_r[16]_i_15__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(18),
      I1 => data(13),
      I2 => \count_r_reg[0]_0\,
      O => \count_r[16]_i_15__0_n_0\
    );
\count_r[16]_i_16__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(17),
      I1 => data(13),
      I2 => \count_r_reg[0]_0\,
      O => \count_r[16]_i_16__0_n_0\
    );
\count_r[16]_i_17__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(16),
      I1 => data(12),
      I2 => \count_r_reg[0]_0\,
      O => \count_r[16]_i_17__0_n_0\
    );
\count_r[16]_i_2__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \count_r_reg[0]_0\,
      O => \count_r[16]_i_2__0_n_0\
    );
\count_r[16]_i_3__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \count_r_reg[0]_0\,
      O => \count_r[16]_i_3__0_n_0\
    );
\count_r[16]_i_4__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \count_r_reg[0]_0\,
      O => \count_r[16]_i_4__0_n_0\
    );
\count_r[16]_i_5__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \count_r_reg[0]_0\,
      O => \count_r[16]_i_5__0_n_0\
    );
\count_r[16]_i_6__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \count_r_reg[0]_0\,
      O => \count_r[16]_i_6__0_n_0\
    );
\count_r[16]_i_7__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \count_r_reg[0]_0\,
      O => \count_r[16]_i_7__0_n_0\
    );
\count_r[16]_i_8__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \count_r_reg[0]_0\,
      O => \count_r[16]_i_8__0_n_0\
    );
\count_r[16]_i_9__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \count_r_reg[0]_0\,
      O => \count_r[16]_i_9__0_n_0\
    );
\count_r[24]_i_10__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(31),
      I1 => data(13),
      I2 => \count_r_reg[0]_0\,
      O => \count_r[24]_i_10__0_n_0\
    );
\count_r[24]_i_11__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(30),
      I1 => data(13),
      I2 => \count_r_reg[0]_0\,
      O => \count_r[24]_i_11__0_n_0\
    );
\count_r[24]_i_12__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(29),
      I1 => data(13),
      I2 => \count_r_reg[0]_0\,
      O => \count_r[24]_i_12__0_n_0\
    );
\count_r[24]_i_13__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(28),
      I1 => data(13),
      I2 => \count_r_reg[0]_0\,
      O => \count_r[24]_i_13__0_n_0\
    );
\count_r[24]_i_14__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(27),
      I1 => data(13),
      I2 => \count_r_reg[0]_0\,
      O => \count_r[24]_i_14__0_n_0\
    );
\count_r[24]_i_15__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(26),
      I1 => data(13),
      I2 => \count_r_reg[0]_0\,
      O => \count_r[24]_i_15__0_n_0\
    );
\count_r[24]_i_16__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(25),
      I1 => data(13),
      I2 => \count_r_reg[0]_0\,
      O => \count_r[24]_i_16__0_n_0\
    );
\count_r[24]_i_17__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(24),
      I1 => data(13),
      I2 => \count_r_reg[0]_0\,
      O => \count_r[24]_i_17__0_n_0\
    );
\count_r[24]_i_2__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \count_r_reg[0]_0\,
      O => \count_r[24]_i_2__0_n_0\
    );
\count_r[24]_i_3__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \count_r_reg[0]_0\,
      O => \count_r[24]_i_3__0_n_0\
    );
\count_r[24]_i_4__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \count_r_reg[0]_0\,
      O => \count_r[24]_i_4__0_n_0\
    );
\count_r[24]_i_5__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \count_r_reg[0]_0\,
      O => \count_r[24]_i_5__0_n_0\
    );
\count_r[24]_i_6__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \count_r_reg[0]_0\,
      O => \count_r[24]_i_6__0_n_0\
    );
\count_r[24]_i_7__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \count_r_reg[0]_0\,
      O => \count_r[24]_i_7__0_n_0\
    );
\count_r[24]_i_8__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \count_r_reg[0]_0\,
      O => \count_r[24]_i_8__0_n_0\
    );
\count_r[24]_i_9__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \count_r_reg[0]_0\,
      O => \count_r[24]_i_9__0_n_0\
    );
\count_r[32]_i_10__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(39),
      I1 => data(13),
      I2 => \count_r_reg[0]_0\,
      O => \count_r[32]_i_10__0_n_0\
    );
\count_r[32]_i_11__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(38),
      I1 => data(13),
      I2 => \count_r_reg[0]_0\,
      O => \count_r[32]_i_11__0_n_0\
    );
\count_r[32]_i_12__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(37),
      I1 => data(13),
      I2 => \count_r_reg[0]_0\,
      O => \count_r[32]_i_12__0_n_0\
    );
\count_r[32]_i_13__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(36),
      I1 => data(13),
      I2 => \count_r_reg[0]_0\,
      O => \count_r[32]_i_13__0_n_0\
    );
\count_r[32]_i_14__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(35),
      I1 => data(13),
      I2 => \count_r_reg[0]_0\,
      O => \count_r[32]_i_14__0_n_0\
    );
\count_r[32]_i_15__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(34),
      I1 => data(13),
      I2 => \count_r_reg[0]_0\,
      O => \count_r[32]_i_15__0_n_0\
    );
\count_r[32]_i_16__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(33),
      I1 => data(13),
      I2 => \count_r_reg[0]_0\,
      O => \count_r[32]_i_16__0_n_0\
    );
\count_r[32]_i_17__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(32),
      I1 => data(13),
      I2 => \count_r_reg[0]_0\,
      O => \count_r[32]_i_17__0_n_0\
    );
\count_r[32]_i_2__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \count_r_reg[0]_0\,
      O => \count_r[32]_i_2__0_n_0\
    );
\count_r[32]_i_3__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \count_r_reg[0]_0\,
      O => \count_r[32]_i_3__0_n_0\
    );
\count_r[32]_i_4__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \count_r_reg[0]_0\,
      O => \count_r[32]_i_4__0_n_0\
    );
\count_r[32]_i_5__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \count_r_reg[0]_0\,
      O => \count_r[32]_i_5__0_n_0\
    );
\count_r[32]_i_6__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \count_r_reg[0]_0\,
      O => \count_r[32]_i_6__0_n_0\
    );
\count_r[32]_i_7__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \count_r_reg[0]_0\,
      O => \count_r[32]_i_7__0_n_0\
    );
\count_r[32]_i_8__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \count_r_reg[0]_0\,
      O => \count_r[32]_i_8__0_n_0\
    );
\count_r[32]_i_9__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \count_r_reg[0]_0\,
      O => \count_r[32]_i_9__0_n_0\
    );
\count_r[40]_i_10__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(47),
      I1 => data(13),
      I2 => \count_r_reg[0]_0\,
      O => \count_r[40]_i_10__0_n_0\
    );
\count_r[40]_i_11__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(46),
      I1 => data(13),
      I2 => \count_r_reg[0]_0\,
      O => \count_r[40]_i_11__0_n_0\
    );
\count_r[40]_i_12__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(45),
      I1 => data(13),
      I2 => \count_r_reg[0]_0\,
      O => \count_r[40]_i_12__0_n_0\
    );
\count_r[40]_i_13__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(44),
      I1 => data(13),
      I2 => \count_r_reg[0]_0\,
      O => \count_r[40]_i_13__0_n_0\
    );
\count_r[40]_i_14__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(43),
      I1 => data(13),
      I2 => \count_r_reg[0]_0\,
      O => \count_r[40]_i_14__0_n_0\
    );
\count_r[40]_i_15__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(42),
      I1 => data(13),
      I2 => \count_r_reg[0]_0\,
      O => \count_r[40]_i_15__0_n_0\
    );
\count_r[40]_i_16__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(41),
      I1 => data(13),
      I2 => \count_r_reg[0]_0\,
      O => \count_r[40]_i_16__0_n_0\
    );
\count_r[40]_i_17__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(40),
      I1 => data(13),
      I2 => \count_r_reg[0]_0\,
      O => \count_r[40]_i_17__0_n_0\
    );
\count_r[40]_i_2__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \count_r_reg[0]_0\,
      O => \count_r[40]_i_2__0_n_0\
    );
\count_r[40]_i_3__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \count_r_reg[0]_0\,
      O => \count_r[40]_i_3__0_n_0\
    );
\count_r[40]_i_4__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \count_r_reg[0]_0\,
      O => \count_r[40]_i_4__0_n_0\
    );
\count_r[40]_i_5__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \count_r_reg[0]_0\,
      O => \count_r[40]_i_5__0_n_0\
    );
\count_r[40]_i_6__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \count_r_reg[0]_0\,
      O => \count_r[40]_i_6__0_n_0\
    );
\count_r[40]_i_7__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \count_r_reg[0]_0\,
      O => \count_r[40]_i_7__0_n_0\
    );
\count_r[40]_i_8__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \count_r_reg[0]_0\,
      O => \count_r[40]_i_8__0_n_0\
    );
\count_r[40]_i_9__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \count_r_reg[0]_0\,
      O => \count_r[40]_i_9__0_n_0\
    );
\count_r[48]_i_10__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(54),
      I1 => data(13),
      I2 => \count_r_reg[0]_0\,
      O => \count_r[48]_i_10__0_n_0\
    );
\count_r[48]_i_11__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(53),
      I1 => data(13),
      I2 => \count_r_reg[0]_0\,
      O => \count_r[48]_i_11__0_n_0\
    );
\count_r[48]_i_12__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(52),
      I1 => data(13),
      I2 => \count_r_reg[0]_0\,
      O => \count_r[48]_i_12__0_n_0\
    );
\count_r[48]_i_13__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(51),
      I1 => data(13),
      I2 => \count_r_reg[0]_0\,
      O => \count_r[48]_i_13__0_n_0\
    );
\count_r[48]_i_14__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(50),
      I1 => data(13),
      I2 => \count_r_reg[0]_0\,
      O => \count_r[48]_i_14__0_n_0\
    );
\count_r[48]_i_15__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(49),
      I1 => data(13),
      I2 => \count_r_reg[0]_0\,
      O => \count_r[48]_i_15__0_n_0\
    );
\count_r[48]_i_16__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(48),
      I1 => data(13),
      I2 => \count_r_reg[0]_0\,
      O => \count_r[48]_i_16__0_n_0\
    );
\count_r[48]_i_2__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \count_r_reg[0]_0\,
      O => \count_r[48]_i_2__1_n_0\
    );
\count_r[48]_i_3__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \count_r_reg[0]_0\,
      O => \count_r[48]_i_3__0_n_0\
    );
\count_r[48]_i_4__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \count_r_reg[0]_0\,
      O => \count_r[48]_i_4__0_n_0\
    );
\count_r[48]_i_5__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \count_r_reg[0]_0\,
      O => \count_r[48]_i_5__0_n_0\
    );
\count_r[48]_i_6__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \count_r_reg[0]_0\,
      O => \count_r[48]_i_6__0_n_0\
    );
\count_r[48]_i_7__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \count_r_reg[0]_0\,
      O => \count_r[48]_i_7__0_n_0\
    );
\count_r[48]_i_8__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \count_r_reg[0]_0\,
      O => \count_r[48]_i_8__0_n_0\
    );
\count_r[48]_i_9__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A3"
    )
        port map (
      I0 => data(13),
      I1 => count_r_reg(55),
      I2 => \count_r_reg[0]_0\,
      O => \count_r[48]_i_9__1_n_0\
    );
\count_r[8]_i_10__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(15),
      I1 => data(12),
      I2 => \count_r_reg[0]_0\,
      O => \count_r[8]_i_10__0_n_0\
    );
\count_r[8]_i_11__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(14),
      I1 => data(12),
      I2 => \count_r_reg[0]_0\,
      O => \count_r[8]_i_11__0_n_0\
    );
\count_r[8]_i_12__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(13),
      I1 => data(12),
      I2 => \count_r_reg[0]_0\,
      O => \count_r[8]_i_12__0_n_0\
    );
\count_r[8]_i_13__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(12),
      I1 => data(12),
      I2 => \count_r_reg[0]_0\,
      O => \count_r[8]_i_13__0_n_0\
    );
\count_r[8]_i_14__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(11),
      I1 => data(11),
      I2 => \count_r_reg[0]_0\,
      O => \count_r[8]_i_14__0_n_0\
    );
\count_r[8]_i_15__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(10),
      I1 => data(10),
      I2 => \count_r_reg[0]_0\,
      O => \count_r[8]_i_15__0_n_0\
    );
\count_r[8]_i_16__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(9),
      I1 => data(9),
      I2 => \count_r_reg[0]_0\,
      O => \count_r[8]_i_16__0_n_0\
    );
\count_r[8]_i_17__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(8),
      I1 => data(8),
      I2 => \count_r_reg[0]_0\,
      O => \count_r[8]_i_17__0_n_0\
    );
\count_r[8]_i_2__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \count_r_reg[0]_0\,
      O => \count_r[8]_i_2__0_n_0\
    );
\count_r[8]_i_3__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \count_r_reg[0]_0\,
      O => \count_r[8]_i_3__0_n_0\
    );
\count_r[8]_i_4__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \count_r_reg[0]_0\,
      O => \count_r[8]_i_4__0_n_0\
    );
\count_r[8]_i_5__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \count_r_reg[0]_0\,
      O => \count_r[8]_i_5__0_n_0\
    );
\count_r[8]_i_6__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \count_r_reg[0]_0\,
      O => \count_r[8]_i_6__0_n_0\
    );
\count_r[8]_i_7__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \count_r_reg[0]_0\,
      O => \count_r[8]_i_7__0_n_0\
    );
\count_r[8]_i_8__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \count_r_reg[0]_0\,
      O => \count_r[8]_i_8__0_n_0\
    );
\count_r[8]_i_9__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \count_r_reg[0]_0\,
      O => \count_r[8]_i_9__0_n_0\
    );
\count_r_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^start_reg_rep\,
      D => \count_r_reg[0]_i_1_n_15\,
      Q => count_r_reg(0),
      R => \^rst_n_0\
    );
\count_r_reg[0]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => \count_r_reg[0]_i_1_n_0\,
      CO(6) => \count_r_reg[0]_i_1_n_1\,
      CO(5) => \count_r_reg[0]_i_1_n_2\,
      CO(4) => \count_r_reg[0]_i_1_n_3\,
      CO(3) => \count_r_reg[0]_i_1_n_4\,
      CO(2) => \count_r_reg[0]_i_1_n_5\,
      CO(1) => \count_r_reg[0]_i_1_n_6\,
      CO(0) => \count_r_reg[0]_i_1_n_7\,
      DI(7) => \count_r[0]_i_2_n_0\,
      DI(6) => \count_r[0]_i_3__0_n_0\,
      DI(5) => \count_r[0]_i_4__0_n_0\,
      DI(4) => \count_r[0]_i_5__0_n_0\,
      DI(3) => \count_r[0]_i_6__0_n_0\,
      DI(2) => \count_r[0]_i_7__0_n_0\,
      DI(1) => \count_r[0]_i_8__0_n_0\,
      DI(0) => \count_r[0]_i_9__0_n_0\,
      O(7) => \count_r_reg[0]_i_1_n_8\,
      O(6) => \count_r_reg[0]_i_1_n_9\,
      O(5) => \count_r_reg[0]_i_1_n_10\,
      O(4) => \count_r_reg[0]_i_1_n_11\,
      O(3) => \count_r_reg[0]_i_1_n_12\,
      O(2) => \count_r_reg[0]_i_1_n_13\,
      O(1) => \count_r_reg[0]_i_1_n_14\,
      O(0) => \count_r_reg[0]_i_1_n_15\,
      S(7) => \count_r[0]_i_10__1_n_0\,
      S(6) => \count_r[0]_i_11__0_n_0\,
      S(5) => \count_r[0]_i_12__0_n_0\,
      S(4) => \count_r[0]_i_13__0_n_0\,
      S(3) => \count_r[0]_i_14__0_n_0\,
      S(2) => \count_r[0]_i_15__0_n_0\,
      S(1) => \count_r[0]_i_16__0_n_0\,
      S(0) => \count_r[0]_i_17__0_n_0\
    );
\count_r_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^start_reg_rep\,
      D => \count_r_reg[8]_i_1__0_n_13\,
      Q => count_r_reg(10),
      R => \^rst_n_0\
    );
\count_r_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^start_reg_rep\,
      D => \count_r_reg[8]_i_1__0_n_12\,
      Q => count_r_reg(11),
      R => \^rst_n_0\
    );
\count_r_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^start_reg_rep\,
      D => \count_r_reg[8]_i_1__0_n_11\,
      Q => count_r_reg(12),
      R => \^rst_n_0\
    );
\count_r_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^start_reg_rep\,
      D => \count_r_reg[8]_i_1__0_n_10\,
      Q => count_r_reg(13),
      R => \^rst_n_0\
    );
\count_r_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^start_reg_rep\,
      D => \count_r_reg[8]_i_1__0_n_9\,
      Q => count_r_reg(14),
      R => \^rst_n_0\
    );
\count_r_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^start_reg_rep\,
      D => \count_r_reg[8]_i_1__0_n_8\,
      Q => count_r_reg(15),
      R => \^rst_n_0\
    );
\count_r_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^start_reg_rep\,
      D => \count_r_reg[16]_i_1__0_n_15\,
      Q => count_r_reg(16),
      R => \^rst_n_0\
    );
\count_r_reg[16]_i_1__0\: unisim.vcomponents.CARRY8
     port map (
      CI => \count_r_reg[8]_i_1__0_n_0\,
      CI_TOP => '0',
      CO(7) => \count_r_reg[16]_i_1__0_n_0\,
      CO(6) => \count_r_reg[16]_i_1__0_n_1\,
      CO(5) => \count_r_reg[16]_i_1__0_n_2\,
      CO(4) => \count_r_reg[16]_i_1__0_n_3\,
      CO(3) => \count_r_reg[16]_i_1__0_n_4\,
      CO(2) => \count_r_reg[16]_i_1__0_n_5\,
      CO(1) => \count_r_reg[16]_i_1__0_n_6\,
      CO(0) => \count_r_reg[16]_i_1__0_n_7\,
      DI(7) => \count_r[16]_i_2__0_n_0\,
      DI(6) => \count_r[16]_i_3__0_n_0\,
      DI(5) => \count_r[16]_i_4__0_n_0\,
      DI(4) => \count_r[16]_i_5__0_n_0\,
      DI(3) => \count_r[16]_i_6__0_n_0\,
      DI(2) => \count_r[16]_i_7__0_n_0\,
      DI(1) => \count_r[16]_i_8__0_n_0\,
      DI(0) => \count_r[16]_i_9__0_n_0\,
      O(7) => \count_r_reg[16]_i_1__0_n_8\,
      O(6) => \count_r_reg[16]_i_1__0_n_9\,
      O(5) => \count_r_reg[16]_i_1__0_n_10\,
      O(4) => \count_r_reg[16]_i_1__0_n_11\,
      O(3) => \count_r_reg[16]_i_1__0_n_12\,
      O(2) => \count_r_reg[16]_i_1__0_n_13\,
      O(1) => \count_r_reg[16]_i_1__0_n_14\,
      O(0) => \count_r_reg[16]_i_1__0_n_15\,
      S(7) => \count_r[16]_i_10__0_n_0\,
      S(6) => \count_r[16]_i_11__0_n_0\,
      S(5) => \count_r[16]_i_12__0_n_0\,
      S(4) => \count_r[16]_i_13__0_n_0\,
      S(3) => \count_r[16]_i_14__0_n_0\,
      S(2) => \count_r[16]_i_15__0_n_0\,
      S(1) => \count_r[16]_i_16__0_n_0\,
      S(0) => \count_r[16]_i_17__0_n_0\
    );
\count_r_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^start_reg_rep\,
      D => \count_r_reg[16]_i_1__0_n_14\,
      Q => count_r_reg(17),
      R => \^rst_n_0\
    );
\count_r_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^start_reg_rep\,
      D => \count_r_reg[16]_i_1__0_n_13\,
      Q => count_r_reg(18),
      R => \^rst_n_0\
    );
\count_r_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^start_reg_rep\,
      D => \count_r_reg[16]_i_1__0_n_12\,
      Q => count_r_reg(19),
      R => \^rst_n_0\
    );
\count_r_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^start_reg_rep\,
      D => \count_r_reg[0]_i_1_n_14\,
      Q => count_r_reg(1),
      R => \^rst_n_0\
    );
\count_r_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^start_reg_rep\,
      D => \count_r_reg[16]_i_1__0_n_11\,
      Q => count_r_reg(20),
      R => \^rst_n_0\
    );
\count_r_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^start_reg_rep\,
      D => \count_r_reg[16]_i_1__0_n_10\,
      Q => count_r_reg(21),
      R => \^rst_n_0\
    );
\count_r_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^start_reg_rep\,
      D => \count_r_reg[16]_i_1__0_n_9\,
      Q => count_r_reg(22),
      R => \^rst_n_0\
    );
\count_r_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^start_reg_rep\,
      D => \count_r_reg[16]_i_1__0_n_8\,
      Q => count_r_reg(23),
      R => \^rst_n_0\
    );
\count_r_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^start_reg_rep\,
      D => \count_r_reg[24]_i_1__0_n_15\,
      Q => count_r_reg(24),
      R => \^rst_n_0\
    );
\count_r_reg[24]_i_1__0\: unisim.vcomponents.CARRY8
     port map (
      CI => \count_r_reg[16]_i_1__0_n_0\,
      CI_TOP => '0',
      CO(7) => \count_r_reg[24]_i_1__0_n_0\,
      CO(6) => \count_r_reg[24]_i_1__0_n_1\,
      CO(5) => \count_r_reg[24]_i_1__0_n_2\,
      CO(4) => \count_r_reg[24]_i_1__0_n_3\,
      CO(3) => \count_r_reg[24]_i_1__0_n_4\,
      CO(2) => \count_r_reg[24]_i_1__0_n_5\,
      CO(1) => \count_r_reg[24]_i_1__0_n_6\,
      CO(0) => \count_r_reg[24]_i_1__0_n_7\,
      DI(7) => \count_r[24]_i_2__0_n_0\,
      DI(6) => \count_r[24]_i_3__0_n_0\,
      DI(5) => \count_r[24]_i_4__0_n_0\,
      DI(4) => \count_r[24]_i_5__0_n_0\,
      DI(3) => \count_r[24]_i_6__0_n_0\,
      DI(2) => \count_r[24]_i_7__0_n_0\,
      DI(1) => \count_r[24]_i_8__0_n_0\,
      DI(0) => \count_r[24]_i_9__0_n_0\,
      O(7) => \count_r_reg[24]_i_1__0_n_8\,
      O(6) => \count_r_reg[24]_i_1__0_n_9\,
      O(5) => \count_r_reg[24]_i_1__0_n_10\,
      O(4) => \count_r_reg[24]_i_1__0_n_11\,
      O(3) => \count_r_reg[24]_i_1__0_n_12\,
      O(2) => \count_r_reg[24]_i_1__0_n_13\,
      O(1) => \count_r_reg[24]_i_1__0_n_14\,
      O(0) => \count_r_reg[24]_i_1__0_n_15\,
      S(7) => \count_r[24]_i_10__0_n_0\,
      S(6) => \count_r[24]_i_11__0_n_0\,
      S(5) => \count_r[24]_i_12__0_n_0\,
      S(4) => \count_r[24]_i_13__0_n_0\,
      S(3) => \count_r[24]_i_14__0_n_0\,
      S(2) => \count_r[24]_i_15__0_n_0\,
      S(1) => \count_r[24]_i_16__0_n_0\,
      S(0) => \count_r[24]_i_17__0_n_0\
    );
\count_r_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^start_reg_rep\,
      D => \count_r_reg[24]_i_1__0_n_14\,
      Q => count_r_reg(25),
      R => \^rst_n_0\
    );
\count_r_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^start_reg_rep\,
      D => \count_r_reg[24]_i_1__0_n_13\,
      Q => count_r_reg(26),
      R => \^rst_n_0\
    );
\count_r_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^start_reg_rep\,
      D => \count_r_reg[24]_i_1__0_n_12\,
      Q => count_r_reg(27),
      R => \^rst_n_0\
    );
\count_r_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^start_reg_rep\,
      D => \count_r_reg[24]_i_1__0_n_11\,
      Q => count_r_reg(28),
      R => \^rst_n_0\
    );
\count_r_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^start_reg_rep\,
      D => \count_r_reg[24]_i_1__0_n_10\,
      Q => count_r_reg(29),
      R => \^rst_n_0\
    );
\count_r_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^start_reg_rep\,
      D => \count_r_reg[0]_i_1_n_13\,
      Q => count_r_reg(2),
      R => \^rst_n_0\
    );
\count_r_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^start_reg_rep\,
      D => \count_r_reg[24]_i_1__0_n_9\,
      Q => count_r_reg(30),
      R => \^rst_n_0\
    );
\count_r_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^start_reg_rep\,
      D => \count_r_reg[24]_i_1__0_n_8\,
      Q => count_r_reg(31),
      R => \^rst_n_0\
    );
\count_r_reg[32]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^start_reg_rep\,
      D => \count_r_reg[32]_i_1__0_n_15\,
      Q => count_r_reg(32),
      R => \^rst_n_0\
    );
\count_r_reg[32]_i_1__0\: unisim.vcomponents.CARRY8
     port map (
      CI => \count_r_reg[24]_i_1__0_n_0\,
      CI_TOP => '0',
      CO(7) => \count_r_reg[32]_i_1__0_n_0\,
      CO(6) => \count_r_reg[32]_i_1__0_n_1\,
      CO(5) => \count_r_reg[32]_i_1__0_n_2\,
      CO(4) => \count_r_reg[32]_i_1__0_n_3\,
      CO(3) => \count_r_reg[32]_i_1__0_n_4\,
      CO(2) => \count_r_reg[32]_i_1__0_n_5\,
      CO(1) => \count_r_reg[32]_i_1__0_n_6\,
      CO(0) => \count_r_reg[32]_i_1__0_n_7\,
      DI(7) => \count_r[32]_i_2__0_n_0\,
      DI(6) => \count_r[32]_i_3__0_n_0\,
      DI(5) => \count_r[32]_i_4__0_n_0\,
      DI(4) => \count_r[32]_i_5__0_n_0\,
      DI(3) => \count_r[32]_i_6__0_n_0\,
      DI(2) => \count_r[32]_i_7__0_n_0\,
      DI(1) => \count_r[32]_i_8__0_n_0\,
      DI(0) => \count_r[32]_i_9__0_n_0\,
      O(7) => \count_r_reg[32]_i_1__0_n_8\,
      O(6) => \count_r_reg[32]_i_1__0_n_9\,
      O(5) => \count_r_reg[32]_i_1__0_n_10\,
      O(4) => \count_r_reg[32]_i_1__0_n_11\,
      O(3) => \count_r_reg[32]_i_1__0_n_12\,
      O(2) => \count_r_reg[32]_i_1__0_n_13\,
      O(1) => \count_r_reg[32]_i_1__0_n_14\,
      O(0) => \count_r_reg[32]_i_1__0_n_15\,
      S(7) => \count_r[32]_i_10__0_n_0\,
      S(6) => \count_r[32]_i_11__0_n_0\,
      S(5) => \count_r[32]_i_12__0_n_0\,
      S(4) => \count_r[32]_i_13__0_n_0\,
      S(3) => \count_r[32]_i_14__0_n_0\,
      S(2) => \count_r[32]_i_15__0_n_0\,
      S(1) => \count_r[32]_i_16__0_n_0\,
      S(0) => \count_r[32]_i_17__0_n_0\
    );
\count_r_reg[33]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^start_reg_rep\,
      D => \count_r_reg[32]_i_1__0_n_14\,
      Q => count_r_reg(33),
      R => \^rst_n_0\
    );
\count_r_reg[34]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^start_reg_rep\,
      D => \count_r_reg[32]_i_1__0_n_13\,
      Q => count_r_reg(34),
      R => \^rst_n_0\
    );
\count_r_reg[35]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^start_reg_rep\,
      D => \count_r_reg[32]_i_1__0_n_12\,
      Q => count_r_reg(35),
      R => \^rst_n_0\
    );
\count_r_reg[36]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^start_reg_rep\,
      D => \count_r_reg[32]_i_1__0_n_11\,
      Q => count_r_reg(36),
      R => \^rst_n_0\
    );
\count_r_reg[37]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^start_reg_rep\,
      D => \count_r_reg[32]_i_1__0_n_10\,
      Q => count_r_reg(37),
      R => \^rst_n_0\
    );
\count_r_reg[38]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^start_reg_rep\,
      D => \count_r_reg[32]_i_1__0_n_9\,
      Q => count_r_reg(38),
      R => \^rst_n_0\
    );
\count_r_reg[39]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^start_reg_rep\,
      D => \count_r_reg[32]_i_1__0_n_8\,
      Q => count_r_reg(39),
      R => \^rst_n_0\
    );
\count_r_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^start_reg_rep\,
      D => \count_r_reg[0]_i_1_n_12\,
      Q => count_r_reg(3),
      R => \^rst_n_0\
    );
\count_r_reg[40]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^start_reg_rep\,
      D => \count_r_reg[40]_i_1__0_n_15\,
      Q => count_r_reg(40),
      R => \^rst_n_0\
    );
\count_r_reg[40]_i_1__0\: unisim.vcomponents.CARRY8
     port map (
      CI => \count_r_reg[32]_i_1__0_n_0\,
      CI_TOP => '0',
      CO(7) => \count_r_reg[40]_i_1__0_n_0\,
      CO(6) => \count_r_reg[40]_i_1__0_n_1\,
      CO(5) => \count_r_reg[40]_i_1__0_n_2\,
      CO(4) => \count_r_reg[40]_i_1__0_n_3\,
      CO(3) => \count_r_reg[40]_i_1__0_n_4\,
      CO(2) => \count_r_reg[40]_i_1__0_n_5\,
      CO(1) => \count_r_reg[40]_i_1__0_n_6\,
      CO(0) => \count_r_reg[40]_i_1__0_n_7\,
      DI(7) => \count_r[40]_i_2__0_n_0\,
      DI(6) => \count_r[40]_i_3__0_n_0\,
      DI(5) => \count_r[40]_i_4__0_n_0\,
      DI(4) => \count_r[40]_i_5__0_n_0\,
      DI(3) => \count_r[40]_i_6__0_n_0\,
      DI(2) => \count_r[40]_i_7__0_n_0\,
      DI(1) => \count_r[40]_i_8__0_n_0\,
      DI(0) => \count_r[40]_i_9__0_n_0\,
      O(7) => \count_r_reg[40]_i_1__0_n_8\,
      O(6) => \count_r_reg[40]_i_1__0_n_9\,
      O(5) => \count_r_reg[40]_i_1__0_n_10\,
      O(4) => \count_r_reg[40]_i_1__0_n_11\,
      O(3) => \count_r_reg[40]_i_1__0_n_12\,
      O(2) => \count_r_reg[40]_i_1__0_n_13\,
      O(1) => \count_r_reg[40]_i_1__0_n_14\,
      O(0) => \count_r_reg[40]_i_1__0_n_15\,
      S(7) => \count_r[40]_i_10__0_n_0\,
      S(6) => \count_r[40]_i_11__0_n_0\,
      S(5) => \count_r[40]_i_12__0_n_0\,
      S(4) => \count_r[40]_i_13__0_n_0\,
      S(3) => \count_r[40]_i_14__0_n_0\,
      S(2) => \count_r[40]_i_15__0_n_0\,
      S(1) => \count_r[40]_i_16__0_n_0\,
      S(0) => \count_r[40]_i_17__0_n_0\
    );
\count_r_reg[41]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^start_reg_rep\,
      D => \count_r_reg[40]_i_1__0_n_14\,
      Q => count_r_reg(41),
      R => \^rst_n_0\
    );
\count_r_reg[42]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^start_reg_rep\,
      D => \count_r_reg[40]_i_1__0_n_13\,
      Q => count_r_reg(42),
      R => \^rst_n_0\
    );
\count_r_reg[43]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^start_reg_rep\,
      D => \count_r_reg[40]_i_1__0_n_12\,
      Q => count_r_reg(43),
      R => \^rst_n_0\
    );
\count_r_reg[44]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^start_reg_rep\,
      D => \count_r_reg[40]_i_1__0_n_11\,
      Q => count_r_reg(44),
      R => \^rst_n_0\
    );
\count_r_reg[45]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^start_reg_rep\,
      D => \count_r_reg[40]_i_1__0_n_10\,
      Q => count_r_reg(45),
      R => \^rst_n_0\
    );
\count_r_reg[46]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^start_reg_rep\,
      D => \count_r_reg[40]_i_1__0_n_9\,
      Q => count_r_reg(46),
      R => \^rst_n_0\
    );
\count_r_reg[47]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^start_reg_rep\,
      D => \count_r_reg[40]_i_1__0_n_8\,
      Q => count_r_reg(47),
      R => \^rst_n_0\
    );
\count_r_reg[48]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^start_reg_rep\,
      D => \count_r_reg[48]_i_1__0_n_15\,
      Q => count_r_reg(48),
      R => \^rst_n_0\
    );
\count_r_reg[48]_i_1__0\: unisim.vcomponents.CARRY8
     port map (
      CI => \count_r_reg[40]_i_1__0_n_0\,
      CI_TOP => '0',
      CO(7) => \NLW_count_r_reg[48]_i_1__0_CO_UNCONNECTED\(7),
      CO(6) => \count_r_reg[48]_i_1__0_n_1\,
      CO(5) => \count_r_reg[48]_i_1__0_n_2\,
      CO(4) => \count_r_reg[48]_i_1__0_n_3\,
      CO(3) => \count_r_reg[48]_i_1__0_n_4\,
      CO(2) => \count_r_reg[48]_i_1__0_n_5\,
      CO(1) => \count_r_reg[48]_i_1__0_n_6\,
      CO(0) => \count_r_reg[48]_i_1__0_n_7\,
      DI(7) => '0',
      DI(6) => \count_r[48]_i_2__1_n_0\,
      DI(5) => \count_r[48]_i_3__0_n_0\,
      DI(4) => \count_r[48]_i_4__0_n_0\,
      DI(3) => \count_r[48]_i_5__0_n_0\,
      DI(2) => \count_r[48]_i_6__0_n_0\,
      DI(1) => \count_r[48]_i_7__0_n_0\,
      DI(0) => \count_r[48]_i_8__0_n_0\,
      O(7) => \count_r_reg[48]_i_1__0_n_8\,
      O(6) => \count_r_reg[48]_i_1__0_n_9\,
      O(5) => \count_r_reg[48]_i_1__0_n_10\,
      O(4) => \count_r_reg[48]_i_1__0_n_11\,
      O(3) => \count_r_reg[48]_i_1__0_n_12\,
      O(2) => \count_r_reg[48]_i_1__0_n_13\,
      O(1) => \count_r_reg[48]_i_1__0_n_14\,
      O(0) => \count_r_reg[48]_i_1__0_n_15\,
      S(7) => \count_r[48]_i_9__1_n_0\,
      S(6) => \count_r[48]_i_10__0_n_0\,
      S(5) => \count_r[48]_i_11__0_n_0\,
      S(4) => \count_r[48]_i_12__0_n_0\,
      S(3) => \count_r[48]_i_13__0_n_0\,
      S(2) => \count_r[48]_i_14__0_n_0\,
      S(1) => \count_r[48]_i_15__0_n_0\,
      S(0) => \count_r[48]_i_16__0_n_0\
    );
\count_r_reg[49]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^start_reg_rep\,
      D => \count_r_reg[48]_i_1__0_n_14\,
      Q => count_r_reg(49),
      R => \^rst_n_0\
    );
\count_r_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^start_reg_rep\,
      D => \count_r_reg[0]_i_1_n_11\,
      Q => count_r_reg(4),
      R => \^rst_n_0\
    );
\count_r_reg[50]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^start_reg_rep\,
      D => \count_r_reg[48]_i_1__0_n_13\,
      Q => count_r_reg(50),
      R => \^rst_n_0\
    );
\count_r_reg[51]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^start_reg_rep\,
      D => \count_r_reg[48]_i_1__0_n_12\,
      Q => count_r_reg(51),
      R => \^rst_n_0\
    );
\count_r_reg[52]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^start_reg_rep\,
      D => \count_r_reg[48]_i_1__0_n_11\,
      Q => count_r_reg(52),
      R => \^rst_n_0\
    );
\count_r_reg[53]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^start_reg_rep\,
      D => \count_r_reg[48]_i_1__0_n_10\,
      Q => count_r_reg(53),
      R => \^rst_n_0\
    );
\count_r_reg[54]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^start_reg_rep\,
      D => \count_r_reg[48]_i_1__0_n_9\,
      Q => count_r_reg(54),
      R => \^rst_n_0\
    );
\count_r_reg[55]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^start_reg_rep\,
      D => \count_r_reg[48]_i_1__0_n_8\,
      Q => count_r_reg(55),
      R => \^rst_n_0\
    );
\count_r_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^start_reg_rep\,
      D => \count_r_reg[0]_i_1_n_10\,
      Q => count_r_reg(5),
      R => \^rst_n_0\
    );
\count_r_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^start_reg_rep\,
      D => \count_r_reg[0]_i_1_n_9\,
      Q => count_r_reg(6),
      R => \^rst_n_0\
    );
\count_r_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^start_reg_rep\,
      D => \count_r_reg[0]_i_1_n_8\,
      Q => count_r_reg(7),
      R => \^rst_n_0\
    );
\count_r_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^start_reg_rep\,
      D => \count_r_reg[8]_i_1__0_n_15\,
      Q => count_r_reg(8),
      R => \^rst_n_0\
    );
\count_r_reg[8]_i_1__0\: unisim.vcomponents.CARRY8
     port map (
      CI => \count_r_reg[0]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \count_r_reg[8]_i_1__0_n_0\,
      CO(6) => \count_r_reg[8]_i_1__0_n_1\,
      CO(5) => \count_r_reg[8]_i_1__0_n_2\,
      CO(4) => \count_r_reg[8]_i_1__0_n_3\,
      CO(3) => \count_r_reg[8]_i_1__0_n_4\,
      CO(2) => \count_r_reg[8]_i_1__0_n_5\,
      CO(1) => \count_r_reg[8]_i_1__0_n_6\,
      CO(0) => \count_r_reg[8]_i_1__0_n_7\,
      DI(7) => \count_r[8]_i_2__0_n_0\,
      DI(6) => \count_r[8]_i_3__0_n_0\,
      DI(5) => \count_r[8]_i_4__0_n_0\,
      DI(4) => \count_r[8]_i_5__0_n_0\,
      DI(3) => \count_r[8]_i_6__0_n_0\,
      DI(2) => \count_r[8]_i_7__0_n_0\,
      DI(1) => \count_r[8]_i_8__0_n_0\,
      DI(0) => \count_r[8]_i_9__0_n_0\,
      O(7) => \count_r_reg[8]_i_1__0_n_8\,
      O(6) => \count_r_reg[8]_i_1__0_n_9\,
      O(5) => \count_r_reg[8]_i_1__0_n_10\,
      O(4) => \count_r_reg[8]_i_1__0_n_11\,
      O(3) => \count_r_reg[8]_i_1__0_n_12\,
      O(2) => \count_r_reg[8]_i_1__0_n_13\,
      O(1) => \count_r_reg[8]_i_1__0_n_14\,
      O(0) => \count_r_reg[8]_i_1__0_n_15\,
      S(7) => \count_r[8]_i_10__0_n_0\,
      S(6) => \count_r[8]_i_11__0_n_0\,
      S(5) => \count_r[8]_i_12__0_n_0\,
      S(4) => \count_r[8]_i_13__0_n_0\,
      S(3) => \count_r[8]_i_14__0_n_0\,
      S(2) => \count_r[8]_i_15__0_n_0\,
      S(1) => \count_r[8]_i_16__0_n_0\,
      S(0) => \count_r[8]_i_17__0_n_0\
    );
\count_r_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \^start_reg_rep\,
      D => \count_r_reg[8]_i_1__0_n_14\,
      Q => count_r_reg(9),
      R => \^rst_n_0\
    );
\is_zero_r_i_10__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFEFFFF"
    )
        port map (
      I0 => count_r_reg(28),
      I1 => count_r_reg(45),
      I2 => count_r_reg(27),
      I3 => count_r_reg(38),
      I4 => \is_zero_r_i_4__1_0\,
      I5 => \is_zero_r_i_16__0_n_0\,
      O => \is_zero_r_i_10__0_n_0\
    );
\is_zero_r_i_11__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => count_r_reg(29),
      I1 => count_r_reg(5),
      I2 => count_r_reg(53),
      I3 => count_r_reg(4),
      O => \is_zero_r_i_11__1_n_0\
    );
\is_zero_r_i_12__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => count_r_reg(16),
      I1 => count_r_reg(10),
      I2 => count_r_reg(19),
      I3 => count_r_reg(15),
      O => \is_zero_r_i_12__1_n_0\
    );
\is_zero_r_i_13__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => count_r_reg(51),
      I1 => count_r_reg(24),
      I2 => count_r_reg(47),
      I3 => count_r_reg(44),
      O => \is_zero_r_i_13__1_n_0\
    );
\is_zero_r_i_14__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEF"
    )
        port map (
      I0 => count_r_reg(43),
      I1 => count_r_reg(21),
      I2 => count_r_reg(0),
      I3 => count_r_reg(40),
      O => \is_zero_r_i_14__1_n_0\
    );
\is_zero_r_i_15__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => count_r_reg(37),
      I1 => count_r_reg(2),
      I2 => count_r_reg(46),
      I3 => count_r_reg(41),
      O => \is_zero_r_i_15__1_n_0\
    );
\is_zero_r_i_16__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => start,
      I1 => count_r_reg(55),
      O => \is_zero_r_i_16__0_n_0\
    );
\is_zero_r_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AABA"
    )
        port map (
      I0 => is_zero_r_reg_0,
      I1 => \is_zero_r_i_2__3_n_0\,
      I2 => \is_zero_r_i_3__2_n_0\,
      I3 => \is_zero_r_i_4__1_n_0\,
      O => \is_zero_r_i_1__0_n_0\
    );
\is_zero_r_i_2__3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \is_zero_r_i_5__1_n_0\,
      I1 => count_r_reg(34),
      I2 => count_r_reg(31),
      I3 => count_r_reg(30),
      I4 => \is_zero_r_i_6__1_n_0\,
      I5 => \is_zero_r_i_7__1_n_0\,
      O => \is_zero_r_i_2__3_n_0\
    );
\is_zero_r_i_3__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \is_zero_r_i_8__1_n_0\,
      I1 => count_r_reg(14),
      I2 => count_r_reg(12),
      I3 => count_r_reg(50),
      I4 => count_r_reg(1),
      I5 => \is_zero_r_i_9__1_n_0\,
      O => \is_zero_r_i_3__2_n_0\
    );
\is_zero_r_i_4__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \is_zero_r_i_10__0_n_0\,
      I1 => \is_zero_r_i_11__1_n_0\,
      I2 => count_r_reg(54),
      I3 => count_r_reg(42),
      I4 => count_r_reg(11),
      I5 => count_r_reg(6),
      O => \is_zero_r_i_4__1_n_0\
    );
\is_zero_r_i_5__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => count_r_reg(20),
      I1 => count_r_reg(36),
      I2 => count_r_reg(18),
      I3 => count_r_reg(32),
      I4 => \is_zero_r_i_12__1_n_0\,
      O => \is_zero_r_i_5__1_n_0\
    );
\is_zero_r_i_6__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => count_r_reg(8),
      I1 => count_r_reg(13),
      I2 => count_r_reg(9),
      I3 => count_r_reg(17),
      I4 => \is_zero_r_i_13__1_n_0\,
      O => \is_zero_r_i_6__1_n_0\
    );
\is_zero_r_i_7__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => count_r_reg(35),
      I1 => count_r_reg(52),
      I2 => count_r_reg(22),
      I3 => count_r_reg(33),
      I4 => \is_zero_r_i_14__1_n_0\,
      O => \is_zero_r_i_7__1_n_0\
    );
\is_zero_r_i_8__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => count_r_reg(48),
      I1 => count_r_reg(3),
      I2 => count_r_reg(25),
      I3 => count_r_reg(7),
      O => \is_zero_r_i_8__1_n_0\
    );
\is_zero_r_i_9__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => count_r_reg(23),
      I1 => count_r_reg(49),
      I2 => count_r_reg(26),
      I3 => count_r_reg(39),
      I4 => \is_zero_r_i_15__1_n_0\,
      O => \is_zero_r_i_9__1_n_0\
    );
is_zero_r_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \^start_reg_rep\,
      D => \is_zero_r_i_1__0_n_0\,
      Q => is_zero_r_reg_n_0,
      S => \^rst_n_0\
    );
\m_axi_AWLEN[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F1"
    )
        port map (
      I0 => is_zero_r_reg_n_0,
      I1 => is_zero_r_reg_0,
      I2 => Q(0),
      O => m_axi_AWLEN(0)
    );
\m_axi_AWLEN[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F1"
    )
        port map (
      I0 => is_zero_r_reg_n_0,
      I1 => is_zero_r_reg_0,
      I2 => Q(1),
      O => m_axi_AWLEN(1)
    );
\m_axi_AWLEN[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F1"
    )
        port map (
      I0 => is_zero_r_reg_n_0,
      I1 => is_zero_r_reg_0,
      I2 => Q(2),
      O => m_axi_AWLEN(2)
    );
\m_axi_AWLEN[3]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F1"
    )
        port map (
      I0 => is_zero_r_reg_n_0,
      I1 => is_zero_r_reg_0,
      I2 => Q(3),
      O => m_axi_AWLEN(3)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_counter__parameterized0_0\ is
  port (
    \total_len_r_reg[8]\ : out STD_LOGIC;
    done0 : out STD_LOGIC;
    \count_r_reg[55]_0\ : in STD_LOGIC;
    clk : in STD_LOGIC;
    data : in STD_LOGIC_VECTOR ( 13 downto 0 );
    is_zero_r_reg_0 : in STD_LOGIC;
    start : in STD_LOGIC;
    m_axi_BVALID : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_counter__parameterized0_0\ : entity is "axi_counter";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_counter__parameterized0_0\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_counter__parameterized0_0\ is
  signal \count_r[0]_i_10_n_0\ : STD_LOGIC;
  signal \count_r[0]_i_11_n_0\ : STD_LOGIC;
  signal \count_r[0]_i_12_n_0\ : STD_LOGIC;
  signal \count_r[0]_i_13_n_0\ : STD_LOGIC;
  signal \count_r[0]_i_14_n_0\ : STD_LOGIC;
  signal \count_r[0]_i_15_n_0\ : STD_LOGIC;
  signal \count_r[0]_i_16_n_0\ : STD_LOGIC;
  signal \count_r[0]_i_17_n_0\ : STD_LOGIC;
  signal \count_r[0]_i_18_n_0\ : STD_LOGIC;
  signal \count_r[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_r[0]_i_3_n_0\ : STD_LOGIC;
  signal \count_r[0]_i_4_n_0\ : STD_LOGIC;
  signal \count_r[0]_i_5_n_0\ : STD_LOGIC;
  signal \count_r[0]_i_6_n_0\ : STD_LOGIC;
  signal \count_r[0]_i_7_n_0\ : STD_LOGIC;
  signal \count_r[0]_i_8_n_0\ : STD_LOGIC;
  signal \count_r[0]_i_9_n_0\ : STD_LOGIC;
  signal \count_r[16]_i_10_n_0\ : STD_LOGIC;
  signal \count_r[16]_i_11_n_0\ : STD_LOGIC;
  signal \count_r[16]_i_12_n_0\ : STD_LOGIC;
  signal \count_r[16]_i_13_n_0\ : STD_LOGIC;
  signal \count_r[16]_i_14_n_0\ : STD_LOGIC;
  signal \count_r[16]_i_15_n_0\ : STD_LOGIC;
  signal \count_r[16]_i_16_n_0\ : STD_LOGIC;
  signal \count_r[16]_i_17_n_0\ : STD_LOGIC;
  signal \count_r[16]_i_2_n_0\ : STD_LOGIC;
  signal \count_r[16]_i_3_n_0\ : STD_LOGIC;
  signal \count_r[16]_i_4_n_0\ : STD_LOGIC;
  signal \count_r[16]_i_5_n_0\ : STD_LOGIC;
  signal \count_r[16]_i_6_n_0\ : STD_LOGIC;
  signal \count_r[16]_i_7_n_0\ : STD_LOGIC;
  signal \count_r[16]_i_8_n_0\ : STD_LOGIC;
  signal \count_r[16]_i_9_n_0\ : STD_LOGIC;
  signal \count_r[24]_i_10_n_0\ : STD_LOGIC;
  signal \count_r[24]_i_11_n_0\ : STD_LOGIC;
  signal \count_r[24]_i_12_n_0\ : STD_LOGIC;
  signal \count_r[24]_i_13_n_0\ : STD_LOGIC;
  signal \count_r[24]_i_14_n_0\ : STD_LOGIC;
  signal \count_r[24]_i_15_n_0\ : STD_LOGIC;
  signal \count_r[24]_i_16_n_0\ : STD_LOGIC;
  signal \count_r[24]_i_17_n_0\ : STD_LOGIC;
  signal \count_r[24]_i_2_n_0\ : STD_LOGIC;
  signal \count_r[24]_i_3_n_0\ : STD_LOGIC;
  signal \count_r[24]_i_4_n_0\ : STD_LOGIC;
  signal \count_r[24]_i_5_n_0\ : STD_LOGIC;
  signal \count_r[24]_i_6_n_0\ : STD_LOGIC;
  signal \count_r[24]_i_7_n_0\ : STD_LOGIC;
  signal \count_r[24]_i_8_n_0\ : STD_LOGIC;
  signal \count_r[24]_i_9_n_0\ : STD_LOGIC;
  signal \count_r[32]_i_10_n_0\ : STD_LOGIC;
  signal \count_r[32]_i_11_n_0\ : STD_LOGIC;
  signal \count_r[32]_i_12_n_0\ : STD_LOGIC;
  signal \count_r[32]_i_13_n_0\ : STD_LOGIC;
  signal \count_r[32]_i_14_n_0\ : STD_LOGIC;
  signal \count_r[32]_i_15_n_0\ : STD_LOGIC;
  signal \count_r[32]_i_16_n_0\ : STD_LOGIC;
  signal \count_r[32]_i_17_n_0\ : STD_LOGIC;
  signal \count_r[32]_i_2_n_0\ : STD_LOGIC;
  signal \count_r[32]_i_3_n_0\ : STD_LOGIC;
  signal \count_r[32]_i_4_n_0\ : STD_LOGIC;
  signal \count_r[32]_i_5_n_0\ : STD_LOGIC;
  signal \count_r[32]_i_6_n_0\ : STD_LOGIC;
  signal \count_r[32]_i_7_n_0\ : STD_LOGIC;
  signal \count_r[32]_i_8_n_0\ : STD_LOGIC;
  signal \count_r[32]_i_9_n_0\ : STD_LOGIC;
  signal \count_r[40]_i_10_n_0\ : STD_LOGIC;
  signal \count_r[40]_i_11_n_0\ : STD_LOGIC;
  signal \count_r[40]_i_12_n_0\ : STD_LOGIC;
  signal \count_r[40]_i_13_n_0\ : STD_LOGIC;
  signal \count_r[40]_i_14_n_0\ : STD_LOGIC;
  signal \count_r[40]_i_15_n_0\ : STD_LOGIC;
  signal \count_r[40]_i_16_n_0\ : STD_LOGIC;
  signal \count_r[40]_i_17_n_0\ : STD_LOGIC;
  signal \count_r[40]_i_2_n_0\ : STD_LOGIC;
  signal \count_r[40]_i_3_n_0\ : STD_LOGIC;
  signal \count_r[40]_i_4_n_0\ : STD_LOGIC;
  signal \count_r[40]_i_5_n_0\ : STD_LOGIC;
  signal \count_r[40]_i_6_n_0\ : STD_LOGIC;
  signal \count_r[40]_i_7_n_0\ : STD_LOGIC;
  signal \count_r[40]_i_8_n_0\ : STD_LOGIC;
  signal \count_r[40]_i_9_n_0\ : STD_LOGIC;
  signal \count_r[48]_i_10_n_0\ : STD_LOGIC;
  signal \count_r[48]_i_11_n_0\ : STD_LOGIC;
  signal \count_r[48]_i_12_n_0\ : STD_LOGIC;
  signal \count_r[48]_i_13_n_0\ : STD_LOGIC;
  signal \count_r[48]_i_14_n_0\ : STD_LOGIC;
  signal \count_r[48]_i_15_n_0\ : STD_LOGIC;
  signal \count_r[48]_i_16_n_0\ : STD_LOGIC;
  signal \count_r[48]_i_2__0_n_0\ : STD_LOGIC;
  signal \count_r[48]_i_3_n_0\ : STD_LOGIC;
  signal \count_r[48]_i_4_n_0\ : STD_LOGIC;
  signal \count_r[48]_i_5_n_0\ : STD_LOGIC;
  signal \count_r[48]_i_6_n_0\ : STD_LOGIC;
  signal \count_r[48]_i_7_n_0\ : STD_LOGIC;
  signal \count_r[48]_i_8_n_0\ : STD_LOGIC;
  signal \count_r[48]_i_9_n_0\ : STD_LOGIC;
  signal \count_r[8]_i_10_n_0\ : STD_LOGIC;
  signal \count_r[8]_i_11_n_0\ : STD_LOGIC;
  signal \count_r[8]_i_12_n_0\ : STD_LOGIC;
  signal \count_r[8]_i_13_n_0\ : STD_LOGIC;
  signal \count_r[8]_i_14_n_0\ : STD_LOGIC;
  signal \count_r[8]_i_15_n_0\ : STD_LOGIC;
  signal \count_r[8]_i_16_n_0\ : STD_LOGIC;
  signal \count_r[8]_i_17_n_0\ : STD_LOGIC;
  signal \count_r[8]_i_2_n_0\ : STD_LOGIC;
  signal \count_r[8]_i_3_n_0\ : STD_LOGIC;
  signal \count_r[8]_i_4_n_0\ : STD_LOGIC;
  signal \count_r[8]_i_5_n_0\ : STD_LOGIC;
  signal \count_r[8]_i_6_n_0\ : STD_LOGIC;
  signal \count_r[8]_i_7_n_0\ : STD_LOGIC;
  signal \count_r[8]_i_8_n_0\ : STD_LOGIC;
  signal \count_r[8]_i_9_n_0\ : STD_LOGIC;
  signal count_r_reg : STD_LOGIC_VECTOR ( 55 downto 0 );
  signal \count_r_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \count_r_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \count_r_reg[0]_i_2_n_10\ : STD_LOGIC;
  signal \count_r_reg[0]_i_2_n_11\ : STD_LOGIC;
  signal \count_r_reg[0]_i_2_n_12\ : STD_LOGIC;
  signal \count_r_reg[0]_i_2_n_13\ : STD_LOGIC;
  signal \count_r_reg[0]_i_2_n_14\ : STD_LOGIC;
  signal \count_r_reg[0]_i_2_n_15\ : STD_LOGIC;
  signal \count_r_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \count_r_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \count_r_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \count_r_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \count_r_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \count_r_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \count_r_reg[0]_i_2_n_8\ : STD_LOGIC;
  signal \count_r_reg[0]_i_2_n_9\ : STD_LOGIC;
  signal \count_r_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \count_r_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \count_r_reg[16]_i_1_n_10\ : STD_LOGIC;
  signal \count_r_reg[16]_i_1_n_11\ : STD_LOGIC;
  signal \count_r_reg[16]_i_1_n_12\ : STD_LOGIC;
  signal \count_r_reg[16]_i_1_n_13\ : STD_LOGIC;
  signal \count_r_reg[16]_i_1_n_14\ : STD_LOGIC;
  signal \count_r_reg[16]_i_1_n_15\ : STD_LOGIC;
  signal \count_r_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \count_r_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \count_r_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \count_r_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \count_r_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \count_r_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \count_r_reg[16]_i_1_n_8\ : STD_LOGIC;
  signal \count_r_reg[16]_i_1_n_9\ : STD_LOGIC;
  signal \count_r_reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \count_r_reg[24]_i_1_n_1\ : STD_LOGIC;
  signal \count_r_reg[24]_i_1_n_10\ : STD_LOGIC;
  signal \count_r_reg[24]_i_1_n_11\ : STD_LOGIC;
  signal \count_r_reg[24]_i_1_n_12\ : STD_LOGIC;
  signal \count_r_reg[24]_i_1_n_13\ : STD_LOGIC;
  signal \count_r_reg[24]_i_1_n_14\ : STD_LOGIC;
  signal \count_r_reg[24]_i_1_n_15\ : STD_LOGIC;
  signal \count_r_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \count_r_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \count_r_reg[24]_i_1_n_4\ : STD_LOGIC;
  signal \count_r_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \count_r_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \count_r_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \count_r_reg[24]_i_1_n_8\ : STD_LOGIC;
  signal \count_r_reg[24]_i_1_n_9\ : STD_LOGIC;
  signal \count_r_reg[32]_i_1_n_0\ : STD_LOGIC;
  signal \count_r_reg[32]_i_1_n_1\ : STD_LOGIC;
  signal \count_r_reg[32]_i_1_n_10\ : STD_LOGIC;
  signal \count_r_reg[32]_i_1_n_11\ : STD_LOGIC;
  signal \count_r_reg[32]_i_1_n_12\ : STD_LOGIC;
  signal \count_r_reg[32]_i_1_n_13\ : STD_LOGIC;
  signal \count_r_reg[32]_i_1_n_14\ : STD_LOGIC;
  signal \count_r_reg[32]_i_1_n_15\ : STD_LOGIC;
  signal \count_r_reg[32]_i_1_n_2\ : STD_LOGIC;
  signal \count_r_reg[32]_i_1_n_3\ : STD_LOGIC;
  signal \count_r_reg[32]_i_1_n_4\ : STD_LOGIC;
  signal \count_r_reg[32]_i_1_n_5\ : STD_LOGIC;
  signal \count_r_reg[32]_i_1_n_6\ : STD_LOGIC;
  signal \count_r_reg[32]_i_1_n_7\ : STD_LOGIC;
  signal \count_r_reg[32]_i_1_n_8\ : STD_LOGIC;
  signal \count_r_reg[32]_i_1_n_9\ : STD_LOGIC;
  signal \count_r_reg[40]_i_1_n_0\ : STD_LOGIC;
  signal \count_r_reg[40]_i_1_n_1\ : STD_LOGIC;
  signal \count_r_reg[40]_i_1_n_10\ : STD_LOGIC;
  signal \count_r_reg[40]_i_1_n_11\ : STD_LOGIC;
  signal \count_r_reg[40]_i_1_n_12\ : STD_LOGIC;
  signal \count_r_reg[40]_i_1_n_13\ : STD_LOGIC;
  signal \count_r_reg[40]_i_1_n_14\ : STD_LOGIC;
  signal \count_r_reg[40]_i_1_n_15\ : STD_LOGIC;
  signal \count_r_reg[40]_i_1_n_2\ : STD_LOGIC;
  signal \count_r_reg[40]_i_1_n_3\ : STD_LOGIC;
  signal \count_r_reg[40]_i_1_n_4\ : STD_LOGIC;
  signal \count_r_reg[40]_i_1_n_5\ : STD_LOGIC;
  signal \count_r_reg[40]_i_1_n_6\ : STD_LOGIC;
  signal \count_r_reg[40]_i_1_n_7\ : STD_LOGIC;
  signal \count_r_reg[40]_i_1_n_8\ : STD_LOGIC;
  signal \count_r_reg[40]_i_1_n_9\ : STD_LOGIC;
  signal \count_r_reg[48]_i_1_n_1\ : STD_LOGIC;
  signal \count_r_reg[48]_i_1_n_10\ : STD_LOGIC;
  signal \count_r_reg[48]_i_1_n_11\ : STD_LOGIC;
  signal \count_r_reg[48]_i_1_n_12\ : STD_LOGIC;
  signal \count_r_reg[48]_i_1_n_13\ : STD_LOGIC;
  signal \count_r_reg[48]_i_1_n_14\ : STD_LOGIC;
  signal \count_r_reg[48]_i_1_n_15\ : STD_LOGIC;
  signal \count_r_reg[48]_i_1_n_2\ : STD_LOGIC;
  signal \count_r_reg[48]_i_1_n_3\ : STD_LOGIC;
  signal \count_r_reg[48]_i_1_n_4\ : STD_LOGIC;
  signal \count_r_reg[48]_i_1_n_5\ : STD_LOGIC;
  signal \count_r_reg[48]_i_1_n_6\ : STD_LOGIC;
  signal \count_r_reg[48]_i_1_n_7\ : STD_LOGIC;
  signal \count_r_reg[48]_i_1_n_8\ : STD_LOGIC;
  signal \count_r_reg[48]_i_1_n_9\ : STD_LOGIC;
  signal \count_r_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \count_r_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \count_r_reg[8]_i_1_n_10\ : STD_LOGIC;
  signal \count_r_reg[8]_i_1_n_11\ : STD_LOGIC;
  signal \count_r_reg[8]_i_1_n_12\ : STD_LOGIC;
  signal \count_r_reg[8]_i_1_n_13\ : STD_LOGIC;
  signal \count_r_reg[8]_i_1_n_14\ : STD_LOGIC;
  signal \count_r_reg[8]_i_1_n_15\ : STD_LOGIC;
  signal \count_r_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \count_r_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \count_r_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \count_r_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \count_r_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \count_r_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \count_r_reg[8]_i_1_n_8\ : STD_LOGIC;
  signal \count_r_reg[8]_i_1_n_9\ : STD_LOGIC;
  signal \is_zero_r_i_10__1_n_0\ : STD_LOGIC;
  signal \is_zero_r_i_11__0_n_0\ : STD_LOGIC;
  signal \is_zero_r_i_12__0_n_0\ : STD_LOGIC;
  signal \is_zero_r_i_13__0_n_0\ : STD_LOGIC;
  signal \is_zero_r_i_14__0_n_0\ : STD_LOGIC;
  signal \is_zero_r_i_15__0_n_0\ : STD_LOGIC;
  signal \is_zero_r_i_1__1_n_0\ : STD_LOGIC;
  signal \is_zero_r_i_2__2_n_0\ : STD_LOGIC;
  signal \is_zero_r_i_3__1_n_0\ : STD_LOGIC;
  signal \is_zero_r_i_4__2_n_0\ : STD_LOGIC;
  signal \is_zero_r_i_5__0_n_0\ : STD_LOGIC;
  signal \is_zero_r_i_6__0_n_0\ : STD_LOGIC;
  signal \is_zero_r_i_7__0_n_0\ : STD_LOGIC;
  signal \is_zero_r_i_8__0_n_0\ : STD_LOGIC;
  signal \is_zero_r_i_9__0_n_0\ : STD_LOGIC;
  signal is_zero_r_reg_n_0 : STD_LOGIC;
  signal \m_axi_AWLEN[3]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \m_axi_AWLEN[3]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \m_axi_AWLEN[3]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \^total_len_r_reg[8]\ : STD_LOGIC;
  signal \NLW_count_r_reg[48]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 to 7 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \count_r_reg[0]_i_2\ : label is 16;
  attribute ADDER_THRESHOLD of \count_r_reg[16]_i_1\ : label is 16;
  attribute ADDER_THRESHOLD of \count_r_reg[24]_i_1\ : label is 16;
  attribute ADDER_THRESHOLD of \count_r_reg[32]_i_1\ : label is 16;
  attribute ADDER_THRESHOLD of \count_r_reg[40]_i_1\ : label is 16;
  attribute ADDER_THRESHOLD of \count_r_reg[48]_i_1\ : label is 16;
  attribute ADDER_THRESHOLD of \count_r_reg[8]_i_1\ : label is 16;
begin
  \total_len_r_reg[8]\ <= \^total_len_r_reg[8]\;
\count_r[0]_i_10\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => is_zero_r_reg_0,
      O => \count_r[0]_i_10_n_0\
    );
\count_r[0]_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(7),
      I1 => data(7),
      I2 => is_zero_r_reg_0,
      O => \count_r[0]_i_11_n_0\
    );
\count_r[0]_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(6),
      I1 => data(6),
      I2 => is_zero_r_reg_0,
      O => \count_r[0]_i_12_n_0\
    );
\count_r[0]_i_13\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(5),
      I1 => data(5),
      I2 => is_zero_r_reg_0,
      O => \count_r[0]_i_13_n_0\
    );
\count_r[0]_i_14\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(4),
      I1 => data(4),
      I2 => is_zero_r_reg_0,
      O => \count_r[0]_i_14_n_0\
    );
\count_r[0]_i_15\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(3),
      I1 => data(3),
      I2 => is_zero_r_reg_0,
      O => \count_r[0]_i_15_n_0\
    );
\count_r[0]_i_16\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(2),
      I1 => data(2),
      I2 => is_zero_r_reg_0,
      O => \count_r[0]_i_16_n_0\
    );
\count_r[0]_i_17\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(1),
      I1 => data(1),
      I2 => is_zero_r_reg_0,
      O => \count_r[0]_i_17_n_0\
    );
\count_r[0]_i_18\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(0),
      I1 => data(0),
      I2 => is_zero_r_reg_0,
      O => \count_r[0]_i_18_n_0\
    );
\count_r[0]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => m_axi_BVALID,
      I1 => is_zero_r_reg_0,
      O => \count_r[0]_i_1__0_n_0\
    );
\count_r[0]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => is_zero_r_reg_0,
      O => \count_r[0]_i_3_n_0\
    );
\count_r[0]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => is_zero_r_reg_0,
      O => \count_r[0]_i_4_n_0\
    );
\count_r[0]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => is_zero_r_reg_0,
      O => \count_r[0]_i_5_n_0\
    );
\count_r[0]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => is_zero_r_reg_0,
      O => \count_r[0]_i_6_n_0\
    );
\count_r[0]_i_7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => is_zero_r_reg_0,
      O => \count_r[0]_i_7_n_0\
    );
\count_r[0]_i_8\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => is_zero_r_reg_0,
      O => \count_r[0]_i_8_n_0\
    );
\count_r[0]_i_9\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => is_zero_r_reg_0,
      O => \count_r[0]_i_9_n_0\
    );
\count_r[16]_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(23),
      I1 => data(13),
      I2 => is_zero_r_reg_0,
      O => \count_r[16]_i_10_n_0\
    );
\count_r[16]_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(22),
      I1 => data(13),
      I2 => is_zero_r_reg_0,
      O => \count_r[16]_i_11_n_0\
    );
\count_r[16]_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(21),
      I1 => data(13),
      I2 => is_zero_r_reg_0,
      O => \count_r[16]_i_12_n_0\
    );
\count_r[16]_i_13\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(20),
      I1 => data(13),
      I2 => is_zero_r_reg_0,
      O => \count_r[16]_i_13_n_0\
    );
\count_r[16]_i_14\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(19),
      I1 => data(13),
      I2 => is_zero_r_reg_0,
      O => \count_r[16]_i_14_n_0\
    );
\count_r[16]_i_15\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(18),
      I1 => data(13),
      I2 => is_zero_r_reg_0,
      O => \count_r[16]_i_15_n_0\
    );
\count_r[16]_i_16\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(17),
      I1 => data(13),
      I2 => is_zero_r_reg_0,
      O => \count_r[16]_i_16_n_0\
    );
\count_r[16]_i_17\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(16),
      I1 => data(12),
      I2 => is_zero_r_reg_0,
      O => \count_r[16]_i_17_n_0\
    );
\count_r[16]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => is_zero_r_reg_0,
      O => \count_r[16]_i_2_n_0\
    );
\count_r[16]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => is_zero_r_reg_0,
      O => \count_r[16]_i_3_n_0\
    );
\count_r[16]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => is_zero_r_reg_0,
      O => \count_r[16]_i_4_n_0\
    );
\count_r[16]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => is_zero_r_reg_0,
      O => \count_r[16]_i_5_n_0\
    );
\count_r[16]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => is_zero_r_reg_0,
      O => \count_r[16]_i_6_n_0\
    );
\count_r[16]_i_7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => is_zero_r_reg_0,
      O => \count_r[16]_i_7_n_0\
    );
\count_r[16]_i_8\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => is_zero_r_reg_0,
      O => \count_r[16]_i_8_n_0\
    );
\count_r[16]_i_9\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => is_zero_r_reg_0,
      O => \count_r[16]_i_9_n_0\
    );
\count_r[24]_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(31),
      I1 => data(13),
      I2 => is_zero_r_reg_0,
      O => \count_r[24]_i_10_n_0\
    );
\count_r[24]_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(30),
      I1 => data(13),
      I2 => is_zero_r_reg_0,
      O => \count_r[24]_i_11_n_0\
    );
\count_r[24]_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(29),
      I1 => data(13),
      I2 => is_zero_r_reg_0,
      O => \count_r[24]_i_12_n_0\
    );
\count_r[24]_i_13\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(28),
      I1 => data(13),
      I2 => is_zero_r_reg_0,
      O => \count_r[24]_i_13_n_0\
    );
\count_r[24]_i_14\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(27),
      I1 => data(13),
      I2 => is_zero_r_reg_0,
      O => \count_r[24]_i_14_n_0\
    );
\count_r[24]_i_15\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(26),
      I1 => data(13),
      I2 => is_zero_r_reg_0,
      O => \count_r[24]_i_15_n_0\
    );
\count_r[24]_i_16\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(25),
      I1 => data(13),
      I2 => is_zero_r_reg_0,
      O => \count_r[24]_i_16_n_0\
    );
\count_r[24]_i_17\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(24),
      I1 => data(13),
      I2 => is_zero_r_reg_0,
      O => \count_r[24]_i_17_n_0\
    );
\count_r[24]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => is_zero_r_reg_0,
      O => \count_r[24]_i_2_n_0\
    );
\count_r[24]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => is_zero_r_reg_0,
      O => \count_r[24]_i_3_n_0\
    );
\count_r[24]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => is_zero_r_reg_0,
      O => \count_r[24]_i_4_n_0\
    );
\count_r[24]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => is_zero_r_reg_0,
      O => \count_r[24]_i_5_n_0\
    );
\count_r[24]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => is_zero_r_reg_0,
      O => \count_r[24]_i_6_n_0\
    );
\count_r[24]_i_7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => is_zero_r_reg_0,
      O => \count_r[24]_i_7_n_0\
    );
\count_r[24]_i_8\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => is_zero_r_reg_0,
      O => \count_r[24]_i_8_n_0\
    );
\count_r[24]_i_9\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => is_zero_r_reg_0,
      O => \count_r[24]_i_9_n_0\
    );
\count_r[32]_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(39),
      I1 => data(13),
      I2 => is_zero_r_reg_0,
      O => \count_r[32]_i_10_n_0\
    );
\count_r[32]_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(38),
      I1 => data(13),
      I2 => is_zero_r_reg_0,
      O => \count_r[32]_i_11_n_0\
    );
\count_r[32]_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(37),
      I1 => data(13),
      I2 => is_zero_r_reg_0,
      O => \count_r[32]_i_12_n_0\
    );
\count_r[32]_i_13\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(36),
      I1 => data(13),
      I2 => is_zero_r_reg_0,
      O => \count_r[32]_i_13_n_0\
    );
\count_r[32]_i_14\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(35),
      I1 => data(13),
      I2 => is_zero_r_reg_0,
      O => \count_r[32]_i_14_n_0\
    );
\count_r[32]_i_15\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(34),
      I1 => data(13),
      I2 => is_zero_r_reg_0,
      O => \count_r[32]_i_15_n_0\
    );
\count_r[32]_i_16\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(33),
      I1 => data(13),
      I2 => is_zero_r_reg_0,
      O => \count_r[32]_i_16_n_0\
    );
\count_r[32]_i_17\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(32),
      I1 => data(13),
      I2 => is_zero_r_reg_0,
      O => \count_r[32]_i_17_n_0\
    );
\count_r[32]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => is_zero_r_reg_0,
      O => \count_r[32]_i_2_n_0\
    );
\count_r[32]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => is_zero_r_reg_0,
      O => \count_r[32]_i_3_n_0\
    );
\count_r[32]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => is_zero_r_reg_0,
      O => \count_r[32]_i_4_n_0\
    );
\count_r[32]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => is_zero_r_reg_0,
      O => \count_r[32]_i_5_n_0\
    );
\count_r[32]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => is_zero_r_reg_0,
      O => \count_r[32]_i_6_n_0\
    );
\count_r[32]_i_7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => is_zero_r_reg_0,
      O => \count_r[32]_i_7_n_0\
    );
\count_r[32]_i_8\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => is_zero_r_reg_0,
      O => \count_r[32]_i_8_n_0\
    );
\count_r[32]_i_9\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => is_zero_r_reg_0,
      O => \count_r[32]_i_9_n_0\
    );
\count_r[40]_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(47),
      I1 => data(13),
      I2 => is_zero_r_reg_0,
      O => \count_r[40]_i_10_n_0\
    );
\count_r[40]_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(46),
      I1 => data(13),
      I2 => is_zero_r_reg_0,
      O => \count_r[40]_i_11_n_0\
    );
\count_r[40]_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(45),
      I1 => data(13),
      I2 => is_zero_r_reg_0,
      O => \count_r[40]_i_12_n_0\
    );
\count_r[40]_i_13\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(44),
      I1 => data(13),
      I2 => is_zero_r_reg_0,
      O => \count_r[40]_i_13_n_0\
    );
\count_r[40]_i_14\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(43),
      I1 => data(13),
      I2 => is_zero_r_reg_0,
      O => \count_r[40]_i_14_n_0\
    );
\count_r[40]_i_15\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(42),
      I1 => data(13),
      I2 => is_zero_r_reg_0,
      O => \count_r[40]_i_15_n_0\
    );
\count_r[40]_i_16\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(41),
      I1 => data(13),
      I2 => is_zero_r_reg_0,
      O => \count_r[40]_i_16_n_0\
    );
\count_r[40]_i_17\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(40),
      I1 => data(13),
      I2 => is_zero_r_reg_0,
      O => \count_r[40]_i_17_n_0\
    );
\count_r[40]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => is_zero_r_reg_0,
      O => \count_r[40]_i_2_n_0\
    );
\count_r[40]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => is_zero_r_reg_0,
      O => \count_r[40]_i_3_n_0\
    );
\count_r[40]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => is_zero_r_reg_0,
      O => \count_r[40]_i_4_n_0\
    );
\count_r[40]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => is_zero_r_reg_0,
      O => \count_r[40]_i_5_n_0\
    );
\count_r[40]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => is_zero_r_reg_0,
      O => \count_r[40]_i_6_n_0\
    );
\count_r[40]_i_7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => is_zero_r_reg_0,
      O => \count_r[40]_i_7_n_0\
    );
\count_r[40]_i_8\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => is_zero_r_reg_0,
      O => \count_r[40]_i_8_n_0\
    );
\count_r[40]_i_9\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => is_zero_r_reg_0,
      O => \count_r[40]_i_9_n_0\
    );
\count_r[48]_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(54),
      I1 => data(13),
      I2 => is_zero_r_reg_0,
      O => \count_r[48]_i_10_n_0\
    );
\count_r[48]_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(53),
      I1 => data(13),
      I2 => is_zero_r_reg_0,
      O => \count_r[48]_i_11_n_0\
    );
\count_r[48]_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(52),
      I1 => data(13),
      I2 => is_zero_r_reg_0,
      O => \count_r[48]_i_12_n_0\
    );
\count_r[48]_i_13\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(51),
      I1 => data(13),
      I2 => is_zero_r_reg_0,
      O => \count_r[48]_i_13_n_0\
    );
\count_r[48]_i_14\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(50),
      I1 => data(13),
      I2 => is_zero_r_reg_0,
      O => \count_r[48]_i_14_n_0\
    );
\count_r[48]_i_15\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(49),
      I1 => data(13),
      I2 => is_zero_r_reg_0,
      O => \count_r[48]_i_15_n_0\
    );
\count_r[48]_i_16\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(48),
      I1 => data(13),
      I2 => is_zero_r_reg_0,
      O => \count_r[48]_i_16_n_0\
    );
\count_r[48]_i_2__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => is_zero_r_reg_0,
      O => \count_r[48]_i_2__0_n_0\
    );
\count_r[48]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => is_zero_r_reg_0,
      O => \count_r[48]_i_3_n_0\
    );
\count_r[48]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => is_zero_r_reg_0,
      O => \count_r[48]_i_4_n_0\
    );
\count_r[48]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => is_zero_r_reg_0,
      O => \count_r[48]_i_5_n_0\
    );
\count_r[48]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => is_zero_r_reg_0,
      O => \count_r[48]_i_6_n_0\
    );
\count_r[48]_i_7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => is_zero_r_reg_0,
      O => \count_r[48]_i_7_n_0\
    );
\count_r[48]_i_8\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => is_zero_r_reg_0,
      O => \count_r[48]_i_8_n_0\
    );
\count_r[48]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A3"
    )
        port map (
      I0 => data(13),
      I1 => count_r_reg(55),
      I2 => is_zero_r_reg_0,
      O => \count_r[48]_i_9_n_0\
    );
\count_r[8]_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(15),
      I1 => data(12),
      I2 => is_zero_r_reg_0,
      O => \count_r[8]_i_10_n_0\
    );
\count_r[8]_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(14),
      I1 => data(12),
      I2 => is_zero_r_reg_0,
      O => \count_r[8]_i_11_n_0\
    );
\count_r[8]_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(13),
      I1 => data(12),
      I2 => is_zero_r_reg_0,
      O => \count_r[8]_i_12_n_0\
    );
\count_r[8]_i_13\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(12),
      I1 => data(12),
      I2 => is_zero_r_reg_0,
      O => \count_r[8]_i_13_n_0\
    );
\count_r[8]_i_14\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(11),
      I1 => data(11),
      I2 => is_zero_r_reg_0,
      O => \count_r[8]_i_14_n_0\
    );
\count_r[8]_i_15\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(10),
      I1 => data(10),
      I2 => is_zero_r_reg_0,
      O => \count_r[8]_i_15_n_0\
    );
\count_r[8]_i_16\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(9),
      I1 => data(9),
      I2 => is_zero_r_reg_0,
      O => \count_r[8]_i_16_n_0\
    );
\count_r[8]_i_17\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(8),
      I1 => data(8),
      I2 => is_zero_r_reg_0,
      O => \count_r[8]_i_17_n_0\
    );
\count_r[8]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => is_zero_r_reg_0,
      O => \count_r[8]_i_2_n_0\
    );
\count_r[8]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => is_zero_r_reg_0,
      O => \count_r[8]_i_3_n_0\
    );
\count_r[8]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => is_zero_r_reg_0,
      O => \count_r[8]_i_4_n_0\
    );
\count_r[8]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => is_zero_r_reg_0,
      O => \count_r[8]_i_5_n_0\
    );
\count_r[8]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => is_zero_r_reg_0,
      O => \count_r[8]_i_6_n_0\
    );
\count_r[8]_i_7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => is_zero_r_reg_0,
      O => \count_r[8]_i_7_n_0\
    );
\count_r[8]_i_8\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => is_zero_r_reg_0,
      O => \count_r[8]_i_8_n_0\
    );
\count_r[8]_i_9\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => is_zero_r_reg_0,
      O => \count_r[8]_i_9_n_0\
    );
\count_r_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count_r[0]_i_1__0_n_0\,
      D => \count_r_reg[0]_i_2_n_15\,
      Q => count_r_reg(0),
      R => \count_r_reg[55]_0\
    );
\count_r_reg[0]_i_2\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => \count_r_reg[0]_i_2_n_0\,
      CO(6) => \count_r_reg[0]_i_2_n_1\,
      CO(5) => \count_r_reg[0]_i_2_n_2\,
      CO(4) => \count_r_reg[0]_i_2_n_3\,
      CO(3) => \count_r_reg[0]_i_2_n_4\,
      CO(2) => \count_r_reg[0]_i_2_n_5\,
      CO(1) => \count_r_reg[0]_i_2_n_6\,
      CO(0) => \count_r_reg[0]_i_2_n_7\,
      DI(7) => \count_r[0]_i_3_n_0\,
      DI(6) => \count_r[0]_i_4_n_0\,
      DI(5) => \count_r[0]_i_5_n_0\,
      DI(4) => \count_r[0]_i_6_n_0\,
      DI(3) => \count_r[0]_i_7_n_0\,
      DI(2) => \count_r[0]_i_8_n_0\,
      DI(1) => \count_r[0]_i_9_n_0\,
      DI(0) => \count_r[0]_i_10_n_0\,
      O(7) => \count_r_reg[0]_i_2_n_8\,
      O(6) => \count_r_reg[0]_i_2_n_9\,
      O(5) => \count_r_reg[0]_i_2_n_10\,
      O(4) => \count_r_reg[0]_i_2_n_11\,
      O(3) => \count_r_reg[0]_i_2_n_12\,
      O(2) => \count_r_reg[0]_i_2_n_13\,
      O(1) => \count_r_reg[0]_i_2_n_14\,
      O(0) => \count_r_reg[0]_i_2_n_15\,
      S(7) => \count_r[0]_i_11_n_0\,
      S(6) => \count_r[0]_i_12_n_0\,
      S(5) => \count_r[0]_i_13_n_0\,
      S(4) => \count_r[0]_i_14_n_0\,
      S(3) => \count_r[0]_i_15_n_0\,
      S(2) => \count_r[0]_i_16_n_0\,
      S(1) => \count_r[0]_i_17_n_0\,
      S(0) => \count_r[0]_i_18_n_0\
    );
\count_r_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count_r[0]_i_1__0_n_0\,
      D => \count_r_reg[8]_i_1_n_13\,
      Q => count_r_reg(10),
      R => \count_r_reg[55]_0\
    );
\count_r_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count_r[0]_i_1__0_n_0\,
      D => \count_r_reg[8]_i_1_n_12\,
      Q => count_r_reg(11),
      R => \count_r_reg[55]_0\
    );
\count_r_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count_r[0]_i_1__0_n_0\,
      D => \count_r_reg[8]_i_1_n_11\,
      Q => count_r_reg(12),
      R => \count_r_reg[55]_0\
    );
\count_r_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count_r[0]_i_1__0_n_0\,
      D => \count_r_reg[8]_i_1_n_10\,
      Q => count_r_reg(13),
      R => \count_r_reg[55]_0\
    );
\count_r_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count_r[0]_i_1__0_n_0\,
      D => \count_r_reg[8]_i_1_n_9\,
      Q => count_r_reg(14),
      R => \count_r_reg[55]_0\
    );
\count_r_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count_r[0]_i_1__0_n_0\,
      D => \count_r_reg[8]_i_1_n_8\,
      Q => count_r_reg(15),
      R => \count_r_reg[55]_0\
    );
\count_r_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count_r[0]_i_1__0_n_0\,
      D => \count_r_reg[16]_i_1_n_15\,
      Q => count_r_reg(16),
      R => \count_r_reg[55]_0\
    );
\count_r_reg[16]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \count_r_reg[8]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \count_r_reg[16]_i_1_n_0\,
      CO(6) => \count_r_reg[16]_i_1_n_1\,
      CO(5) => \count_r_reg[16]_i_1_n_2\,
      CO(4) => \count_r_reg[16]_i_1_n_3\,
      CO(3) => \count_r_reg[16]_i_1_n_4\,
      CO(2) => \count_r_reg[16]_i_1_n_5\,
      CO(1) => \count_r_reg[16]_i_1_n_6\,
      CO(0) => \count_r_reg[16]_i_1_n_7\,
      DI(7) => \count_r[16]_i_2_n_0\,
      DI(6) => \count_r[16]_i_3_n_0\,
      DI(5) => \count_r[16]_i_4_n_0\,
      DI(4) => \count_r[16]_i_5_n_0\,
      DI(3) => \count_r[16]_i_6_n_0\,
      DI(2) => \count_r[16]_i_7_n_0\,
      DI(1) => \count_r[16]_i_8_n_0\,
      DI(0) => \count_r[16]_i_9_n_0\,
      O(7) => \count_r_reg[16]_i_1_n_8\,
      O(6) => \count_r_reg[16]_i_1_n_9\,
      O(5) => \count_r_reg[16]_i_1_n_10\,
      O(4) => \count_r_reg[16]_i_1_n_11\,
      O(3) => \count_r_reg[16]_i_1_n_12\,
      O(2) => \count_r_reg[16]_i_1_n_13\,
      O(1) => \count_r_reg[16]_i_1_n_14\,
      O(0) => \count_r_reg[16]_i_1_n_15\,
      S(7) => \count_r[16]_i_10_n_0\,
      S(6) => \count_r[16]_i_11_n_0\,
      S(5) => \count_r[16]_i_12_n_0\,
      S(4) => \count_r[16]_i_13_n_0\,
      S(3) => \count_r[16]_i_14_n_0\,
      S(2) => \count_r[16]_i_15_n_0\,
      S(1) => \count_r[16]_i_16_n_0\,
      S(0) => \count_r[16]_i_17_n_0\
    );
\count_r_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count_r[0]_i_1__0_n_0\,
      D => \count_r_reg[16]_i_1_n_14\,
      Q => count_r_reg(17),
      R => \count_r_reg[55]_0\
    );
\count_r_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count_r[0]_i_1__0_n_0\,
      D => \count_r_reg[16]_i_1_n_13\,
      Q => count_r_reg(18),
      R => \count_r_reg[55]_0\
    );
\count_r_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count_r[0]_i_1__0_n_0\,
      D => \count_r_reg[16]_i_1_n_12\,
      Q => count_r_reg(19),
      R => \count_r_reg[55]_0\
    );
\count_r_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count_r[0]_i_1__0_n_0\,
      D => \count_r_reg[0]_i_2_n_14\,
      Q => count_r_reg(1),
      R => \count_r_reg[55]_0\
    );
\count_r_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count_r[0]_i_1__0_n_0\,
      D => \count_r_reg[16]_i_1_n_11\,
      Q => count_r_reg(20),
      R => \count_r_reg[55]_0\
    );
\count_r_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count_r[0]_i_1__0_n_0\,
      D => \count_r_reg[16]_i_1_n_10\,
      Q => count_r_reg(21),
      R => \count_r_reg[55]_0\
    );
\count_r_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count_r[0]_i_1__0_n_0\,
      D => \count_r_reg[16]_i_1_n_9\,
      Q => count_r_reg(22),
      R => \count_r_reg[55]_0\
    );
\count_r_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count_r[0]_i_1__0_n_0\,
      D => \count_r_reg[16]_i_1_n_8\,
      Q => count_r_reg(23),
      R => \count_r_reg[55]_0\
    );
\count_r_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count_r[0]_i_1__0_n_0\,
      D => \count_r_reg[24]_i_1_n_15\,
      Q => count_r_reg(24),
      R => \count_r_reg[55]_0\
    );
\count_r_reg[24]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \count_r_reg[16]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \count_r_reg[24]_i_1_n_0\,
      CO(6) => \count_r_reg[24]_i_1_n_1\,
      CO(5) => \count_r_reg[24]_i_1_n_2\,
      CO(4) => \count_r_reg[24]_i_1_n_3\,
      CO(3) => \count_r_reg[24]_i_1_n_4\,
      CO(2) => \count_r_reg[24]_i_1_n_5\,
      CO(1) => \count_r_reg[24]_i_1_n_6\,
      CO(0) => \count_r_reg[24]_i_1_n_7\,
      DI(7) => \count_r[24]_i_2_n_0\,
      DI(6) => \count_r[24]_i_3_n_0\,
      DI(5) => \count_r[24]_i_4_n_0\,
      DI(4) => \count_r[24]_i_5_n_0\,
      DI(3) => \count_r[24]_i_6_n_0\,
      DI(2) => \count_r[24]_i_7_n_0\,
      DI(1) => \count_r[24]_i_8_n_0\,
      DI(0) => \count_r[24]_i_9_n_0\,
      O(7) => \count_r_reg[24]_i_1_n_8\,
      O(6) => \count_r_reg[24]_i_1_n_9\,
      O(5) => \count_r_reg[24]_i_1_n_10\,
      O(4) => \count_r_reg[24]_i_1_n_11\,
      O(3) => \count_r_reg[24]_i_1_n_12\,
      O(2) => \count_r_reg[24]_i_1_n_13\,
      O(1) => \count_r_reg[24]_i_1_n_14\,
      O(0) => \count_r_reg[24]_i_1_n_15\,
      S(7) => \count_r[24]_i_10_n_0\,
      S(6) => \count_r[24]_i_11_n_0\,
      S(5) => \count_r[24]_i_12_n_0\,
      S(4) => \count_r[24]_i_13_n_0\,
      S(3) => \count_r[24]_i_14_n_0\,
      S(2) => \count_r[24]_i_15_n_0\,
      S(1) => \count_r[24]_i_16_n_0\,
      S(0) => \count_r[24]_i_17_n_0\
    );
\count_r_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count_r[0]_i_1__0_n_0\,
      D => \count_r_reg[24]_i_1_n_14\,
      Q => count_r_reg(25),
      R => \count_r_reg[55]_0\
    );
\count_r_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count_r[0]_i_1__0_n_0\,
      D => \count_r_reg[24]_i_1_n_13\,
      Q => count_r_reg(26),
      R => \count_r_reg[55]_0\
    );
\count_r_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count_r[0]_i_1__0_n_0\,
      D => \count_r_reg[24]_i_1_n_12\,
      Q => count_r_reg(27),
      R => \count_r_reg[55]_0\
    );
\count_r_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count_r[0]_i_1__0_n_0\,
      D => \count_r_reg[24]_i_1_n_11\,
      Q => count_r_reg(28),
      R => \count_r_reg[55]_0\
    );
\count_r_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count_r[0]_i_1__0_n_0\,
      D => \count_r_reg[24]_i_1_n_10\,
      Q => count_r_reg(29),
      R => \count_r_reg[55]_0\
    );
\count_r_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count_r[0]_i_1__0_n_0\,
      D => \count_r_reg[0]_i_2_n_13\,
      Q => count_r_reg(2),
      R => \count_r_reg[55]_0\
    );
\count_r_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count_r[0]_i_1__0_n_0\,
      D => \count_r_reg[24]_i_1_n_9\,
      Q => count_r_reg(30),
      R => \count_r_reg[55]_0\
    );
\count_r_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count_r[0]_i_1__0_n_0\,
      D => \count_r_reg[24]_i_1_n_8\,
      Q => count_r_reg(31),
      R => \count_r_reg[55]_0\
    );
\count_r_reg[32]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count_r[0]_i_1__0_n_0\,
      D => \count_r_reg[32]_i_1_n_15\,
      Q => count_r_reg(32),
      R => \count_r_reg[55]_0\
    );
\count_r_reg[32]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \count_r_reg[24]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \count_r_reg[32]_i_1_n_0\,
      CO(6) => \count_r_reg[32]_i_1_n_1\,
      CO(5) => \count_r_reg[32]_i_1_n_2\,
      CO(4) => \count_r_reg[32]_i_1_n_3\,
      CO(3) => \count_r_reg[32]_i_1_n_4\,
      CO(2) => \count_r_reg[32]_i_1_n_5\,
      CO(1) => \count_r_reg[32]_i_1_n_6\,
      CO(0) => \count_r_reg[32]_i_1_n_7\,
      DI(7) => \count_r[32]_i_2_n_0\,
      DI(6) => \count_r[32]_i_3_n_0\,
      DI(5) => \count_r[32]_i_4_n_0\,
      DI(4) => \count_r[32]_i_5_n_0\,
      DI(3) => \count_r[32]_i_6_n_0\,
      DI(2) => \count_r[32]_i_7_n_0\,
      DI(1) => \count_r[32]_i_8_n_0\,
      DI(0) => \count_r[32]_i_9_n_0\,
      O(7) => \count_r_reg[32]_i_1_n_8\,
      O(6) => \count_r_reg[32]_i_1_n_9\,
      O(5) => \count_r_reg[32]_i_1_n_10\,
      O(4) => \count_r_reg[32]_i_1_n_11\,
      O(3) => \count_r_reg[32]_i_1_n_12\,
      O(2) => \count_r_reg[32]_i_1_n_13\,
      O(1) => \count_r_reg[32]_i_1_n_14\,
      O(0) => \count_r_reg[32]_i_1_n_15\,
      S(7) => \count_r[32]_i_10_n_0\,
      S(6) => \count_r[32]_i_11_n_0\,
      S(5) => \count_r[32]_i_12_n_0\,
      S(4) => \count_r[32]_i_13_n_0\,
      S(3) => \count_r[32]_i_14_n_0\,
      S(2) => \count_r[32]_i_15_n_0\,
      S(1) => \count_r[32]_i_16_n_0\,
      S(0) => \count_r[32]_i_17_n_0\
    );
\count_r_reg[33]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count_r[0]_i_1__0_n_0\,
      D => \count_r_reg[32]_i_1_n_14\,
      Q => count_r_reg(33),
      R => \count_r_reg[55]_0\
    );
\count_r_reg[34]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count_r[0]_i_1__0_n_0\,
      D => \count_r_reg[32]_i_1_n_13\,
      Q => count_r_reg(34),
      R => \count_r_reg[55]_0\
    );
\count_r_reg[35]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count_r[0]_i_1__0_n_0\,
      D => \count_r_reg[32]_i_1_n_12\,
      Q => count_r_reg(35),
      R => \count_r_reg[55]_0\
    );
\count_r_reg[36]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count_r[0]_i_1__0_n_0\,
      D => \count_r_reg[32]_i_1_n_11\,
      Q => count_r_reg(36),
      R => \count_r_reg[55]_0\
    );
\count_r_reg[37]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count_r[0]_i_1__0_n_0\,
      D => \count_r_reg[32]_i_1_n_10\,
      Q => count_r_reg(37),
      R => \count_r_reg[55]_0\
    );
\count_r_reg[38]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count_r[0]_i_1__0_n_0\,
      D => \count_r_reg[32]_i_1_n_9\,
      Q => count_r_reg(38),
      R => \count_r_reg[55]_0\
    );
\count_r_reg[39]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count_r[0]_i_1__0_n_0\,
      D => \count_r_reg[32]_i_1_n_8\,
      Q => count_r_reg(39),
      R => \count_r_reg[55]_0\
    );
\count_r_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count_r[0]_i_1__0_n_0\,
      D => \count_r_reg[0]_i_2_n_12\,
      Q => count_r_reg(3),
      R => \count_r_reg[55]_0\
    );
\count_r_reg[40]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count_r[0]_i_1__0_n_0\,
      D => \count_r_reg[40]_i_1_n_15\,
      Q => count_r_reg(40),
      R => \count_r_reg[55]_0\
    );
\count_r_reg[40]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \count_r_reg[32]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \count_r_reg[40]_i_1_n_0\,
      CO(6) => \count_r_reg[40]_i_1_n_1\,
      CO(5) => \count_r_reg[40]_i_1_n_2\,
      CO(4) => \count_r_reg[40]_i_1_n_3\,
      CO(3) => \count_r_reg[40]_i_1_n_4\,
      CO(2) => \count_r_reg[40]_i_1_n_5\,
      CO(1) => \count_r_reg[40]_i_1_n_6\,
      CO(0) => \count_r_reg[40]_i_1_n_7\,
      DI(7) => \count_r[40]_i_2_n_0\,
      DI(6) => \count_r[40]_i_3_n_0\,
      DI(5) => \count_r[40]_i_4_n_0\,
      DI(4) => \count_r[40]_i_5_n_0\,
      DI(3) => \count_r[40]_i_6_n_0\,
      DI(2) => \count_r[40]_i_7_n_0\,
      DI(1) => \count_r[40]_i_8_n_0\,
      DI(0) => \count_r[40]_i_9_n_0\,
      O(7) => \count_r_reg[40]_i_1_n_8\,
      O(6) => \count_r_reg[40]_i_1_n_9\,
      O(5) => \count_r_reg[40]_i_1_n_10\,
      O(4) => \count_r_reg[40]_i_1_n_11\,
      O(3) => \count_r_reg[40]_i_1_n_12\,
      O(2) => \count_r_reg[40]_i_1_n_13\,
      O(1) => \count_r_reg[40]_i_1_n_14\,
      O(0) => \count_r_reg[40]_i_1_n_15\,
      S(7) => \count_r[40]_i_10_n_0\,
      S(6) => \count_r[40]_i_11_n_0\,
      S(5) => \count_r[40]_i_12_n_0\,
      S(4) => \count_r[40]_i_13_n_0\,
      S(3) => \count_r[40]_i_14_n_0\,
      S(2) => \count_r[40]_i_15_n_0\,
      S(1) => \count_r[40]_i_16_n_0\,
      S(0) => \count_r[40]_i_17_n_0\
    );
\count_r_reg[41]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count_r[0]_i_1__0_n_0\,
      D => \count_r_reg[40]_i_1_n_14\,
      Q => count_r_reg(41),
      R => \count_r_reg[55]_0\
    );
\count_r_reg[42]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count_r[0]_i_1__0_n_0\,
      D => \count_r_reg[40]_i_1_n_13\,
      Q => count_r_reg(42),
      R => \count_r_reg[55]_0\
    );
\count_r_reg[43]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count_r[0]_i_1__0_n_0\,
      D => \count_r_reg[40]_i_1_n_12\,
      Q => count_r_reg(43),
      R => \count_r_reg[55]_0\
    );
\count_r_reg[44]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count_r[0]_i_1__0_n_0\,
      D => \count_r_reg[40]_i_1_n_11\,
      Q => count_r_reg(44),
      R => \count_r_reg[55]_0\
    );
\count_r_reg[45]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count_r[0]_i_1__0_n_0\,
      D => \count_r_reg[40]_i_1_n_10\,
      Q => count_r_reg(45),
      R => \count_r_reg[55]_0\
    );
\count_r_reg[46]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count_r[0]_i_1__0_n_0\,
      D => \count_r_reg[40]_i_1_n_9\,
      Q => count_r_reg(46),
      R => \count_r_reg[55]_0\
    );
\count_r_reg[47]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count_r[0]_i_1__0_n_0\,
      D => \count_r_reg[40]_i_1_n_8\,
      Q => count_r_reg(47),
      R => \count_r_reg[55]_0\
    );
\count_r_reg[48]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count_r[0]_i_1__0_n_0\,
      D => \count_r_reg[48]_i_1_n_15\,
      Q => count_r_reg(48),
      R => \count_r_reg[55]_0\
    );
\count_r_reg[48]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \count_r_reg[40]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \NLW_count_r_reg[48]_i_1_CO_UNCONNECTED\(7),
      CO(6) => \count_r_reg[48]_i_1_n_1\,
      CO(5) => \count_r_reg[48]_i_1_n_2\,
      CO(4) => \count_r_reg[48]_i_1_n_3\,
      CO(3) => \count_r_reg[48]_i_1_n_4\,
      CO(2) => \count_r_reg[48]_i_1_n_5\,
      CO(1) => \count_r_reg[48]_i_1_n_6\,
      CO(0) => \count_r_reg[48]_i_1_n_7\,
      DI(7) => '0',
      DI(6) => \count_r[48]_i_2__0_n_0\,
      DI(5) => \count_r[48]_i_3_n_0\,
      DI(4) => \count_r[48]_i_4_n_0\,
      DI(3) => \count_r[48]_i_5_n_0\,
      DI(2) => \count_r[48]_i_6_n_0\,
      DI(1) => \count_r[48]_i_7_n_0\,
      DI(0) => \count_r[48]_i_8_n_0\,
      O(7) => \count_r_reg[48]_i_1_n_8\,
      O(6) => \count_r_reg[48]_i_1_n_9\,
      O(5) => \count_r_reg[48]_i_1_n_10\,
      O(4) => \count_r_reg[48]_i_1_n_11\,
      O(3) => \count_r_reg[48]_i_1_n_12\,
      O(2) => \count_r_reg[48]_i_1_n_13\,
      O(1) => \count_r_reg[48]_i_1_n_14\,
      O(0) => \count_r_reg[48]_i_1_n_15\,
      S(7) => \count_r[48]_i_9_n_0\,
      S(6) => \count_r[48]_i_10_n_0\,
      S(5) => \count_r[48]_i_11_n_0\,
      S(4) => \count_r[48]_i_12_n_0\,
      S(3) => \count_r[48]_i_13_n_0\,
      S(2) => \count_r[48]_i_14_n_0\,
      S(1) => \count_r[48]_i_15_n_0\,
      S(0) => \count_r[48]_i_16_n_0\
    );
\count_r_reg[49]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count_r[0]_i_1__0_n_0\,
      D => \count_r_reg[48]_i_1_n_14\,
      Q => count_r_reg(49),
      R => \count_r_reg[55]_0\
    );
\count_r_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count_r[0]_i_1__0_n_0\,
      D => \count_r_reg[0]_i_2_n_11\,
      Q => count_r_reg(4),
      R => \count_r_reg[55]_0\
    );
\count_r_reg[50]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count_r[0]_i_1__0_n_0\,
      D => \count_r_reg[48]_i_1_n_13\,
      Q => count_r_reg(50),
      R => \count_r_reg[55]_0\
    );
\count_r_reg[51]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count_r[0]_i_1__0_n_0\,
      D => \count_r_reg[48]_i_1_n_12\,
      Q => count_r_reg(51),
      R => \count_r_reg[55]_0\
    );
\count_r_reg[52]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count_r[0]_i_1__0_n_0\,
      D => \count_r_reg[48]_i_1_n_11\,
      Q => count_r_reg(52),
      R => \count_r_reg[55]_0\
    );
\count_r_reg[53]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count_r[0]_i_1__0_n_0\,
      D => \count_r_reg[48]_i_1_n_10\,
      Q => count_r_reg(53),
      R => \count_r_reg[55]_0\
    );
\count_r_reg[54]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count_r[0]_i_1__0_n_0\,
      D => \count_r_reg[48]_i_1_n_9\,
      Q => count_r_reg(54),
      R => \count_r_reg[55]_0\
    );
\count_r_reg[55]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count_r[0]_i_1__0_n_0\,
      D => \count_r_reg[48]_i_1_n_8\,
      Q => count_r_reg(55),
      R => \count_r_reg[55]_0\
    );
\count_r_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count_r[0]_i_1__0_n_0\,
      D => \count_r_reg[0]_i_2_n_10\,
      Q => count_r_reg(5),
      R => \count_r_reg[55]_0\
    );
\count_r_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count_r[0]_i_1__0_n_0\,
      D => \count_r_reg[0]_i_2_n_9\,
      Q => count_r_reg(6),
      R => \count_r_reg[55]_0\
    );
\count_r_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count_r[0]_i_1__0_n_0\,
      D => \count_r_reg[0]_i_2_n_8\,
      Q => count_r_reg(7),
      R => \count_r_reg[55]_0\
    );
\count_r_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count_r[0]_i_1__0_n_0\,
      D => \count_r_reg[8]_i_1_n_15\,
      Q => count_r_reg(8),
      R => \count_r_reg[55]_0\
    );
\count_r_reg[8]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \count_r_reg[0]_i_2_n_0\,
      CI_TOP => '0',
      CO(7) => \count_r_reg[8]_i_1_n_0\,
      CO(6) => \count_r_reg[8]_i_1_n_1\,
      CO(5) => \count_r_reg[8]_i_1_n_2\,
      CO(4) => \count_r_reg[8]_i_1_n_3\,
      CO(3) => \count_r_reg[8]_i_1_n_4\,
      CO(2) => \count_r_reg[8]_i_1_n_5\,
      CO(1) => \count_r_reg[8]_i_1_n_6\,
      CO(0) => \count_r_reg[8]_i_1_n_7\,
      DI(7) => \count_r[8]_i_2_n_0\,
      DI(6) => \count_r[8]_i_3_n_0\,
      DI(5) => \count_r[8]_i_4_n_0\,
      DI(4) => \count_r[8]_i_5_n_0\,
      DI(3) => \count_r[8]_i_6_n_0\,
      DI(2) => \count_r[8]_i_7_n_0\,
      DI(1) => \count_r[8]_i_8_n_0\,
      DI(0) => \count_r[8]_i_9_n_0\,
      O(7) => \count_r_reg[8]_i_1_n_8\,
      O(6) => \count_r_reg[8]_i_1_n_9\,
      O(5) => \count_r_reg[8]_i_1_n_10\,
      O(4) => \count_r_reg[8]_i_1_n_11\,
      O(3) => \count_r_reg[8]_i_1_n_12\,
      O(2) => \count_r_reg[8]_i_1_n_13\,
      O(1) => \count_r_reg[8]_i_1_n_14\,
      O(0) => \count_r_reg[8]_i_1_n_15\,
      S(7) => \count_r[8]_i_10_n_0\,
      S(6) => \count_r[8]_i_11_n_0\,
      S(5) => \count_r[8]_i_12_n_0\,
      S(4) => \count_r[8]_i_13_n_0\,
      S(3) => \count_r[8]_i_14_n_0\,
      S(2) => \count_r[8]_i_15_n_0\,
      S(1) => \count_r[8]_i_16_n_0\,
      S(0) => \count_r[8]_i_17_n_0\
    );
\count_r_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count_r[0]_i_1__0_n_0\,
      D => \count_r_reg[8]_i_1_n_14\,
      Q => count_r_reg(9),
      R => \count_r_reg[55]_0\
    );
done_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => m_axi_BVALID,
      I1 => is_zero_r_reg_n_0,
      O => done0
    );
\is_zero_r_i_10__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => count_r_reg(34),
      I1 => count_r_reg(28),
      I2 => count_r_reg(29),
      I3 => count_r_reg(26),
      O => \is_zero_r_i_10__1_n_0\
    );
\is_zero_r_i_11__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => count_r_reg(2),
      I1 => count_r_reg(36),
      I2 => count_r_reg(3),
      I3 => count_r_reg(22),
      I4 => \is_zero_r_i_15__0_n_0\,
      O => \is_zero_r_i_11__0_n_0\
    );
\is_zero_r_i_12__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => count_r_reg(55),
      I1 => start,
      I2 => count_r_reg(32),
      I3 => count_r_reg(49),
      I4 => count_r_reg(11),
      I5 => count_r_reg(52),
      O => \is_zero_r_i_12__0_n_0\
    );
\is_zero_r_i_13__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => count_r_reg(23),
      I1 => count_r_reg(21),
      I2 => count_r_reg(19),
      I3 => count_r_reg(16),
      O => \is_zero_r_i_13__0_n_0\
    );
\is_zero_r_i_14__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => count_r_reg(39),
      I1 => count_r_reg(27),
      I2 => count_r_reg(12),
      I3 => count_r_reg(8),
      O => \is_zero_r_i_14__0_n_0\
    );
\is_zero_r_i_15__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
        port map (
      I0 => count_r_reg(0),
      I1 => count_r_reg(45),
      I2 => count_r_reg(46),
      I3 => count_r_reg(18),
      O => \is_zero_r_i_15__0_n_0\
    );
\is_zero_r_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAABAA"
    )
        port map (
      I0 => \^total_len_r_reg[8]\,
      I1 => \is_zero_r_i_2__2_n_0\,
      I2 => \is_zero_r_i_3__1_n_0\,
      I3 => \is_zero_r_i_4__2_n_0\,
      I4 => \is_zero_r_i_5__0_n_0\,
      O => \is_zero_r_i_1__1_n_0\
    );
\is_zero_r_i_2__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFB"
    )
        port map (
      I0 => count_r_reg(15),
      I1 => m_axi_BVALID,
      I2 => count_r_reg(1),
      I3 => count_r_reg(5),
      I4 => \is_zero_r_i_6__0_n_0\,
      I5 => \is_zero_r_i_7__0_n_0\,
      O => \is_zero_r_i_2__2_n_0\
    );
\is_zero_r_i_3__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \is_zero_r_i_8__0_n_0\,
      I1 => count_r_reg(24),
      I2 => count_r_reg(7),
      I3 => count_r_reg(40),
      I4 => count_r_reg(38),
      I5 => \is_zero_r_i_9__0_n_0\,
      O => \is_zero_r_i_3__1_n_0\
    );
\is_zero_r_i_4__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \is_zero_r_i_10__1_n_0\,
      I1 => count_r_reg(42),
      I2 => count_r_reg(33),
      I3 => count_r_reg(30),
      I4 => count_r_reg(20),
      I5 => \is_zero_r_i_11__0_n_0\,
      O => \is_zero_r_i_4__2_n_0\
    );
\is_zero_r_i_5__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \is_zero_r_i_12__0_n_0\,
      I1 => \is_zero_r_i_13__0_n_0\,
      I2 => count_r_reg(25),
      I3 => count_r_reg(10),
      I4 => count_r_reg(41),
      I5 => count_r_reg(4),
      O => \is_zero_r_i_5__0_n_0\
    );
\is_zero_r_i_6__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => count_r_reg(53),
      I1 => count_r_reg(51),
      I2 => count_r_reg(47),
      I3 => count_r_reg(43),
      O => \is_zero_r_i_6__0_n_0\
    );
\is_zero_r_i_7__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => count_r_reg(50),
      I1 => count_r_reg(9),
      I2 => count_r_reg(48),
      I3 => count_r_reg(6),
      O => \is_zero_r_i_7__0_n_0\
    );
\is_zero_r_i_8__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => count_r_reg(35),
      I1 => count_r_reg(17),
      I2 => count_r_reg(37),
      I3 => count_r_reg(14),
      O => \is_zero_r_i_8__0_n_0\
    );
\is_zero_r_i_9__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => count_r_reg(31),
      I1 => count_r_reg(54),
      I2 => count_r_reg(13),
      I3 => count_r_reg(44),
      I4 => \is_zero_r_i_14__0_n_0\,
      O => \is_zero_r_i_9__0_n_0\
    );
is_zero_r_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \count_r[0]_i_1__0_n_0\,
      D => \is_zero_r_i_1__1_n_0\,
      Q => is_zero_r_reg_n_0,
      S => \count_r_reg[55]_0\
    );
\m_axi_AWLEN[3]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000004"
    )
        port map (
      I0 => \m_axi_AWLEN[3]_INST_0_i_2_n_0\,
      I1 => \m_axi_AWLEN[3]_INST_0_i_3_n_0\,
      I2 => \m_axi_AWLEN[3]_INST_0_i_4_n_0\,
      I3 => data(4),
      I4 => data(13),
      I5 => data(5),
      O => \^total_len_r_reg[8]\
    );
\m_axi_AWLEN[3]_INST_0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
        port map (
      I0 => start,
      I1 => data(6),
      I2 => data(7),
      I3 => data(1),
      O => \m_axi_AWLEN[3]_INST_0_i_2_n_0\
    );
\m_axi_AWLEN[3]_INST_0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => data(12),
      I1 => data(2),
      I2 => data(11),
      I3 => data(0),
      O => \m_axi_AWLEN[3]_INST_0_i_3_n_0\
    );
\m_axi_AWLEN[3]_INST_0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => data(9),
      I1 => data(3),
      I2 => data(10),
      I3 => data(8),
      O => \m_axi_AWLEN[3]_INST_0_i_4_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_counter__parameterized0_1\ is
  port (
    is_zero_r_reg_0 : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    \total_len_r_reg[8]\ : out STD_LOGIC;
    \final_burst_len_reg[2]\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \count_r_reg[55]_0\ : in STD_LOGIC;
    \count_r_reg[0]_0\ : in STD_LOGIC;
    clk : in STD_LOGIC;
    data : in STD_LOGIC_VECTOR ( 13 downto 0 );
    start : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \count_r_reg[0]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    is_zero_r_reg_1 : in STD_LOGIC;
    w_running : in STD_LOGIC;
    data_valid : in STD_LOGIC;
    m_axi_WREADY : in STD_LOGIC;
    is_zero_r_reg_2 : in STD_LOGIC;
    is_zero_r_i_3_0 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_counter__parameterized0_1\ : entity is "axi_counter";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_counter__parameterized0_1\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_counter__parameterized0_1\ is
  signal \count_r[0]_i_10__0_n_0\ : STD_LOGIC;
  signal \count_r[0]_i_11__1_n_0\ : STD_LOGIC;
  signal \count_r[0]_i_12__1_n_0\ : STD_LOGIC;
  signal \count_r[0]_i_13__1_n_0\ : STD_LOGIC;
  signal \count_r[0]_i_14__1_n_0\ : STD_LOGIC;
  signal \count_r[0]_i_15__1_n_0\ : STD_LOGIC;
  signal \count_r[0]_i_16__1_n_0\ : STD_LOGIC;
  signal \count_r[0]_i_17__1_n_0\ : STD_LOGIC;
  signal \count_r[0]_i_18__0_n_0\ : STD_LOGIC;
  signal \count_r[0]_i_3__1_n_0\ : STD_LOGIC;
  signal \count_r[0]_i_4__1_n_0\ : STD_LOGIC;
  signal \count_r[0]_i_5__1_n_0\ : STD_LOGIC;
  signal \count_r[0]_i_6__1_n_0\ : STD_LOGIC;
  signal \count_r[0]_i_7__1_n_0\ : STD_LOGIC;
  signal \count_r[0]_i_8__1_n_0\ : STD_LOGIC;
  signal \count_r[0]_i_9__1_n_0\ : STD_LOGIC;
  signal \count_r[16]_i_10__1_n_0\ : STD_LOGIC;
  signal \count_r[16]_i_11__1_n_0\ : STD_LOGIC;
  signal \count_r[16]_i_12__1_n_0\ : STD_LOGIC;
  signal \count_r[16]_i_13__1_n_0\ : STD_LOGIC;
  signal \count_r[16]_i_14__1_n_0\ : STD_LOGIC;
  signal \count_r[16]_i_15__1_n_0\ : STD_LOGIC;
  signal \count_r[16]_i_16__1_n_0\ : STD_LOGIC;
  signal \count_r[16]_i_17__1_n_0\ : STD_LOGIC;
  signal \count_r[16]_i_2__1_n_0\ : STD_LOGIC;
  signal \count_r[16]_i_3__1_n_0\ : STD_LOGIC;
  signal \count_r[16]_i_4__1_n_0\ : STD_LOGIC;
  signal \count_r[16]_i_5__1_n_0\ : STD_LOGIC;
  signal \count_r[16]_i_6__1_n_0\ : STD_LOGIC;
  signal \count_r[16]_i_7__1_n_0\ : STD_LOGIC;
  signal \count_r[16]_i_8__1_n_0\ : STD_LOGIC;
  signal \count_r[16]_i_9__1_n_0\ : STD_LOGIC;
  signal \count_r[24]_i_10__1_n_0\ : STD_LOGIC;
  signal \count_r[24]_i_11__1_n_0\ : STD_LOGIC;
  signal \count_r[24]_i_12__1_n_0\ : STD_LOGIC;
  signal \count_r[24]_i_13__1_n_0\ : STD_LOGIC;
  signal \count_r[24]_i_14__1_n_0\ : STD_LOGIC;
  signal \count_r[24]_i_15__1_n_0\ : STD_LOGIC;
  signal \count_r[24]_i_16__1_n_0\ : STD_LOGIC;
  signal \count_r[24]_i_17__1_n_0\ : STD_LOGIC;
  signal \count_r[24]_i_2__1_n_0\ : STD_LOGIC;
  signal \count_r[24]_i_3__1_n_0\ : STD_LOGIC;
  signal \count_r[24]_i_4__1_n_0\ : STD_LOGIC;
  signal \count_r[24]_i_5__1_n_0\ : STD_LOGIC;
  signal \count_r[24]_i_6__1_n_0\ : STD_LOGIC;
  signal \count_r[24]_i_7__1_n_0\ : STD_LOGIC;
  signal \count_r[24]_i_8__1_n_0\ : STD_LOGIC;
  signal \count_r[24]_i_9__1_n_0\ : STD_LOGIC;
  signal \count_r[32]_i_10__1_n_0\ : STD_LOGIC;
  signal \count_r[32]_i_11__1_n_0\ : STD_LOGIC;
  signal \count_r[32]_i_12__1_n_0\ : STD_LOGIC;
  signal \count_r[32]_i_13__1_n_0\ : STD_LOGIC;
  signal \count_r[32]_i_14__1_n_0\ : STD_LOGIC;
  signal \count_r[32]_i_15__1_n_0\ : STD_LOGIC;
  signal \count_r[32]_i_16__1_n_0\ : STD_LOGIC;
  signal \count_r[32]_i_17__1_n_0\ : STD_LOGIC;
  signal \count_r[32]_i_2__1_n_0\ : STD_LOGIC;
  signal \count_r[32]_i_3__1_n_0\ : STD_LOGIC;
  signal \count_r[32]_i_4__1_n_0\ : STD_LOGIC;
  signal \count_r[32]_i_5__1_n_0\ : STD_LOGIC;
  signal \count_r[32]_i_6__1_n_0\ : STD_LOGIC;
  signal \count_r[32]_i_7__1_n_0\ : STD_LOGIC;
  signal \count_r[32]_i_8__1_n_0\ : STD_LOGIC;
  signal \count_r[32]_i_9__1_n_0\ : STD_LOGIC;
  signal \count_r[40]_i_10__1_n_0\ : STD_LOGIC;
  signal \count_r[40]_i_11__1_n_0\ : STD_LOGIC;
  signal \count_r[40]_i_12__1_n_0\ : STD_LOGIC;
  signal \count_r[40]_i_13__1_n_0\ : STD_LOGIC;
  signal \count_r[40]_i_14__1_n_0\ : STD_LOGIC;
  signal \count_r[40]_i_15__1_n_0\ : STD_LOGIC;
  signal \count_r[40]_i_16__1_n_0\ : STD_LOGIC;
  signal \count_r[40]_i_17__1_n_0\ : STD_LOGIC;
  signal \count_r[40]_i_2__1_n_0\ : STD_LOGIC;
  signal \count_r[40]_i_3__1_n_0\ : STD_LOGIC;
  signal \count_r[40]_i_4__1_n_0\ : STD_LOGIC;
  signal \count_r[40]_i_5__1_n_0\ : STD_LOGIC;
  signal \count_r[40]_i_6__1_n_0\ : STD_LOGIC;
  signal \count_r[40]_i_7__1_n_0\ : STD_LOGIC;
  signal \count_r[40]_i_8__1_n_0\ : STD_LOGIC;
  signal \count_r[40]_i_9__1_n_0\ : STD_LOGIC;
  signal \count_r[48]_i_10__1_n_0\ : STD_LOGIC;
  signal \count_r[48]_i_11__1_n_0\ : STD_LOGIC;
  signal \count_r[48]_i_12__1_n_0\ : STD_LOGIC;
  signal \count_r[48]_i_13__1_n_0\ : STD_LOGIC;
  signal \count_r[48]_i_14__1_n_0\ : STD_LOGIC;
  signal \count_r[48]_i_15__1_n_0\ : STD_LOGIC;
  signal \count_r[48]_i_16__1_n_0\ : STD_LOGIC;
  signal \count_r[48]_i_2_n_0\ : STD_LOGIC;
  signal \count_r[48]_i_3__1_n_0\ : STD_LOGIC;
  signal \count_r[48]_i_4__1_n_0\ : STD_LOGIC;
  signal \count_r[48]_i_5__1_n_0\ : STD_LOGIC;
  signal \count_r[48]_i_6__1_n_0\ : STD_LOGIC;
  signal \count_r[48]_i_7__1_n_0\ : STD_LOGIC;
  signal \count_r[48]_i_8__1_n_0\ : STD_LOGIC;
  signal \count_r[48]_i_9__0_n_0\ : STD_LOGIC;
  signal \count_r[8]_i_10__1_n_0\ : STD_LOGIC;
  signal \count_r[8]_i_11__1_n_0\ : STD_LOGIC;
  signal \count_r[8]_i_12__1_n_0\ : STD_LOGIC;
  signal \count_r[8]_i_13__1_n_0\ : STD_LOGIC;
  signal \count_r[8]_i_14__1_n_0\ : STD_LOGIC;
  signal \count_r[8]_i_15__1_n_0\ : STD_LOGIC;
  signal \count_r[8]_i_16__1_n_0\ : STD_LOGIC;
  signal \count_r[8]_i_17__1_n_0\ : STD_LOGIC;
  signal \count_r[8]_i_2__1_n_0\ : STD_LOGIC;
  signal \count_r[8]_i_3__1_n_0\ : STD_LOGIC;
  signal \count_r[8]_i_4__1_n_0\ : STD_LOGIC;
  signal \count_r[8]_i_5__1_n_0\ : STD_LOGIC;
  signal \count_r[8]_i_6__1_n_0\ : STD_LOGIC;
  signal \count_r[8]_i_7__1_n_0\ : STD_LOGIC;
  signal \count_r[8]_i_8__1_n_0\ : STD_LOGIC;
  signal \count_r[8]_i_9__1_n_0\ : STD_LOGIC;
  signal count_r_reg : STD_LOGIC_VECTOR ( 55 downto 0 );
  signal \count_r_reg[0]_i_2__0_n_0\ : STD_LOGIC;
  signal \count_r_reg[0]_i_2__0_n_1\ : STD_LOGIC;
  signal \count_r_reg[0]_i_2__0_n_10\ : STD_LOGIC;
  signal \count_r_reg[0]_i_2__0_n_11\ : STD_LOGIC;
  signal \count_r_reg[0]_i_2__0_n_12\ : STD_LOGIC;
  signal \count_r_reg[0]_i_2__0_n_13\ : STD_LOGIC;
  signal \count_r_reg[0]_i_2__0_n_14\ : STD_LOGIC;
  signal \count_r_reg[0]_i_2__0_n_15\ : STD_LOGIC;
  signal \count_r_reg[0]_i_2__0_n_2\ : STD_LOGIC;
  signal \count_r_reg[0]_i_2__0_n_3\ : STD_LOGIC;
  signal \count_r_reg[0]_i_2__0_n_4\ : STD_LOGIC;
  signal \count_r_reg[0]_i_2__0_n_5\ : STD_LOGIC;
  signal \count_r_reg[0]_i_2__0_n_6\ : STD_LOGIC;
  signal \count_r_reg[0]_i_2__0_n_7\ : STD_LOGIC;
  signal \count_r_reg[0]_i_2__0_n_8\ : STD_LOGIC;
  signal \count_r_reg[0]_i_2__0_n_9\ : STD_LOGIC;
  signal \count_r_reg[16]_i_1__1_n_0\ : STD_LOGIC;
  signal \count_r_reg[16]_i_1__1_n_1\ : STD_LOGIC;
  signal \count_r_reg[16]_i_1__1_n_10\ : STD_LOGIC;
  signal \count_r_reg[16]_i_1__1_n_11\ : STD_LOGIC;
  signal \count_r_reg[16]_i_1__1_n_12\ : STD_LOGIC;
  signal \count_r_reg[16]_i_1__1_n_13\ : STD_LOGIC;
  signal \count_r_reg[16]_i_1__1_n_14\ : STD_LOGIC;
  signal \count_r_reg[16]_i_1__1_n_15\ : STD_LOGIC;
  signal \count_r_reg[16]_i_1__1_n_2\ : STD_LOGIC;
  signal \count_r_reg[16]_i_1__1_n_3\ : STD_LOGIC;
  signal \count_r_reg[16]_i_1__1_n_4\ : STD_LOGIC;
  signal \count_r_reg[16]_i_1__1_n_5\ : STD_LOGIC;
  signal \count_r_reg[16]_i_1__1_n_6\ : STD_LOGIC;
  signal \count_r_reg[16]_i_1__1_n_7\ : STD_LOGIC;
  signal \count_r_reg[16]_i_1__1_n_8\ : STD_LOGIC;
  signal \count_r_reg[16]_i_1__1_n_9\ : STD_LOGIC;
  signal \count_r_reg[24]_i_1__1_n_0\ : STD_LOGIC;
  signal \count_r_reg[24]_i_1__1_n_1\ : STD_LOGIC;
  signal \count_r_reg[24]_i_1__1_n_10\ : STD_LOGIC;
  signal \count_r_reg[24]_i_1__1_n_11\ : STD_LOGIC;
  signal \count_r_reg[24]_i_1__1_n_12\ : STD_LOGIC;
  signal \count_r_reg[24]_i_1__1_n_13\ : STD_LOGIC;
  signal \count_r_reg[24]_i_1__1_n_14\ : STD_LOGIC;
  signal \count_r_reg[24]_i_1__1_n_15\ : STD_LOGIC;
  signal \count_r_reg[24]_i_1__1_n_2\ : STD_LOGIC;
  signal \count_r_reg[24]_i_1__1_n_3\ : STD_LOGIC;
  signal \count_r_reg[24]_i_1__1_n_4\ : STD_LOGIC;
  signal \count_r_reg[24]_i_1__1_n_5\ : STD_LOGIC;
  signal \count_r_reg[24]_i_1__1_n_6\ : STD_LOGIC;
  signal \count_r_reg[24]_i_1__1_n_7\ : STD_LOGIC;
  signal \count_r_reg[24]_i_1__1_n_8\ : STD_LOGIC;
  signal \count_r_reg[24]_i_1__1_n_9\ : STD_LOGIC;
  signal \count_r_reg[32]_i_1__1_n_0\ : STD_LOGIC;
  signal \count_r_reg[32]_i_1__1_n_1\ : STD_LOGIC;
  signal \count_r_reg[32]_i_1__1_n_10\ : STD_LOGIC;
  signal \count_r_reg[32]_i_1__1_n_11\ : STD_LOGIC;
  signal \count_r_reg[32]_i_1__1_n_12\ : STD_LOGIC;
  signal \count_r_reg[32]_i_1__1_n_13\ : STD_LOGIC;
  signal \count_r_reg[32]_i_1__1_n_14\ : STD_LOGIC;
  signal \count_r_reg[32]_i_1__1_n_15\ : STD_LOGIC;
  signal \count_r_reg[32]_i_1__1_n_2\ : STD_LOGIC;
  signal \count_r_reg[32]_i_1__1_n_3\ : STD_LOGIC;
  signal \count_r_reg[32]_i_1__1_n_4\ : STD_LOGIC;
  signal \count_r_reg[32]_i_1__1_n_5\ : STD_LOGIC;
  signal \count_r_reg[32]_i_1__1_n_6\ : STD_LOGIC;
  signal \count_r_reg[32]_i_1__1_n_7\ : STD_LOGIC;
  signal \count_r_reg[32]_i_1__1_n_8\ : STD_LOGIC;
  signal \count_r_reg[32]_i_1__1_n_9\ : STD_LOGIC;
  signal \count_r_reg[40]_i_1__1_n_0\ : STD_LOGIC;
  signal \count_r_reg[40]_i_1__1_n_1\ : STD_LOGIC;
  signal \count_r_reg[40]_i_1__1_n_10\ : STD_LOGIC;
  signal \count_r_reg[40]_i_1__1_n_11\ : STD_LOGIC;
  signal \count_r_reg[40]_i_1__1_n_12\ : STD_LOGIC;
  signal \count_r_reg[40]_i_1__1_n_13\ : STD_LOGIC;
  signal \count_r_reg[40]_i_1__1_n_14\ : STD_LOGIC;
  signal \count_r_reg[40]_i_1__1_n_15\ : STD_LOGIC;
  signal \count_r_reg[40]_i_1__1_n_2\ : STD_LOGIC;
  signal \count_r_reg[40]_i_1__1_n_3\ : STD_LOGIC;
  signal \count_r_reg[40]_i_1__1_n_4\ : STD_LOGIC;
  signal \count_r_reg[40]_i_1__1_n_5\ : STD_LOGIC;
  signal \count_r_reg[40]_i_1__1_n_6\ : STD_LOGIC;
  signal \count_r_reg[40]_i_1__1_n_7\ : STD_LOGIC;
  signal \count_r_reg[40]_i_1__1_n_8\ : STD_LOGIC;
  signal \count_r_reg[40]_i_1__1_n_9\ : STD_LOGIC;
  signal \count_r_reg[48]_i_1__1_n_1\ : STD_LOGIC;
  signal \count_r_reg[48]_i_1__1_n_10\ : STD_LOGIC;
  signal \count_r_reg[48]_i_1__1_n_11\ : STD_LOGIC;
  signal \count_r_reg[48]_i_1__1_n_12\ : STD_LOGIC;
  signal \count_r_reg[48]_i_1__1_n_13\ : STD_LOGIC;
  signal \count_r_reg[48]_i_1__1_n_14\ : STD_LOGIC;
  signal \count_r_reg[48]_i_1__1_n_15\ : STD_LOGIC;
  signal \count_r_reg[48]_i_1__1_n_2\ : STD_LOGIC;
  signal \count_r_reg[48]_i_1__1_n_3\ : STD_LOGIC;
  signal \count_r_reg[48]_i_1__1_n_4\ : STD_LOGIC;
  signal \count_r_reg[48]_i_1__1_n_5\ : STD_LOGIC;
  signal \count_r_reg[48]_i_1__1_n_6\ : STD_LOGIC;
  signal \count_r_reg[48]_i_1__1_n_7\ : STD_LOGIC;
  signal \count_r_reg[48]_i_1__1_n_8\ : STD_LOGIC;
  signal \count_r_reg[48]_i_1__1_n_9\ : STD_LOGIC;
  signal \count_r_reg[8]_i_1__1_n_0\ : STD_LOGIC;
  signal \count_r_reg[8]_i_1__1_n_1\ : STD_LOGIC;
  signal \count_r_reg[8]_i_1__1_n_10\ : STD_LOGIC;
  signal \count_r_reg[8]_i_1__1_n_11\ : STD_LOGIC;
  signal \count_r_reg[8]_i_1__1_n_12\ : STD_LOGIC;
  signal \count_r_reg[8]_i_1__1_n_13\ : STD_LOGIC;
  signal \count_r_reg[8]_i_1__1_n_14\ : STD_LOGIC;
  signal \count_r_reg[8]_i_1__1_n_15\ : STD_LOGIC;
  signal \count_r_reg[8]_i_1__1_n_2\ : STD_LOGIC;
  signal \count_r_reg[8]_i_1__1_n_3\ : STD_LOGIC;
  signal \count_r_reg[8]_i_1__1_n_4\ : STD_LOGIC;
  signal \count_r_reg[8]_i_1__1_n_5\ : STD_LOGIC;
  signal \count_r_reg[8]_i_1__1_n_6\ : STD_LOGIC;
  signal \count_r_reg[8]_i_1__1_n_7\ : STD_LOGIC;
  signal \count_r_reg[8]_i_1__1_n_8\ : STD_LOGIC;
  signal \count_r_reg[8]_i_1__1_n_9\ : STD_LOGIC;
  signal is_zero_r_i_11_n_0 : STD_LOGIC;
  signal is_zero_r_i_12_n_0 : STD_LOGIC;
  signal is_zero_r_i_13_n_0 : STD_LOGIC;
  signal is_zero_r_i_14_n_0 : STD_LOGIC;
  signal is_zero_r_i_15_n_0 : STD_LOGIC;
  signal is_zero_r_i_16_n_0 : STD_LOGIC;
  signal is_zero_r_i_17_n_0 : STD_LOGIC;
  signal is_zero_r_i_18_n_0 : STD_LOGIC;
  signal is_zero_r_i_19_n_0 : STD_LOGIC;
  signal \is_zero_r_i_1__4_n_0\ : STD_LOGIC;
  signal is_zero_r_i_20_n_0 : STD_LOGIC;
  signal is_zero_r_i_22_n_0 : STD_LOGIC;
  signal \is_zero_r_i_2__0_n_0\ : STD_LOGIC;
  signal \is_zero_r_i_3__0_n_0\ : STD_LOGIC;
  signal is_zero_r_i_4_n_0 : STD_LOGIC;
  signal is_zero_r_i_5_n_0 : STD_LOGIC;
  signal is_zero_r_i_6_n_0 : STD_LOGIC;
  signal is_zero_r_i_7_n_0 : STD_LOGIC;
  signal is_zero_r_i_8_n_0 : STD_LOGIC;
  signal is_zero_r_i_9_n_0 : STD_LOGIC;
  signal \^is_zero_r_reg_0\ : STD_LOGIC;
  signal \^total_len_r_reg[8]\ : STD_LOGIC;
  signal \NLW_count_r_reg[48]_i_1__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 to 7 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \count_r_reg[0]_i_2__0\ : label is 16;
  attribute ADDER_THRESHOLD of \count_r_reg[16]_i_1__1\ : label is 16;
  attribute ADDER_THRESHOLD of \count_r_reg[24]_i_1__1\ : label is 16;
  attribute ADDER_THRESHOLD of \count_r_reg[32]_i_1__1\ : label is 16;
  attribute ADDER_THRESHOLD of \count_r_reg[40]_i_1__1\ : label is 16;
  attribute ADDER_THRESHOLD of \count_r_reg[48]_i_1__1\ : label is 16;
  attribute ADDER_THRESHOLD of \count_r_reg[8]_i_1__1\ : label is 16;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of is_zero_r_i_12 : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of is_zero_r_i_14 : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \is_zero_r_i_3__0\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of is_zero_r_i_4 : label is "soft_lutpair16";
begin
  is_zero_r_reg_0 <= \^is_zero_r_reg_0\;
  \total_len_r_reg[8]\ <= \^total_len_r_reg[8]\;
\count_r[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8B"
    )
        port map (
      I0 => Q(0),
      I1 => \^total_len_r_reg[8]\,
      I2 => \count_r_reg[0]_1\(0),
      O => D(0)
    );
\count_r[0]_i_10__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => start,
      O => \count_r[0]_i_10__0_n_0\
    );
\count_r[0]_i_11__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(7),
      I1 => data(7),
      I2 => start,
      O => \count_r[0]_i_11__1_n_0\
    );
\count_r[0]_i_12__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(6),
      I1 => data(6),
      I2 => start,
      O => \count_r[0]_i_12__1_n_0\
    );
\count_r[0]_i_13__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(5),
      I1 => data(5),
      I2 => start,
      O => \count_r[0]_i_13__1_n_0\
    );
\count_r[0]_i_14__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(4),
      I1 => data(4),
      I2 => start,
      O => \count_r[0]_i_14__1_n_0\
    );
\count_r[0]_i_15__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(3),
      I1 => data(3),
      I2 => start,
      O => \count_r[0]_i_15__1_n_0\
    );
\count_r[0]_i_16__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(2),
      I1 => data(2),
      I2 => start,
      O => \count_r[0]_i_16__1_n_0\
    );
\count_r[0]_i_17__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(1),
      I1 => data(1),
      I2 => start,
      O => \count_r[0]_i_17__1_n_0\
    );
\count_r[0]_i_18__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(0),
      I1 => data(0),
      I2 => start,
      O => \count_r[0]_i_18__0_n_0\
    );
\count_r[0]_i_3__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => start,
      O => \count_r[0]_i_3__1_n_0\
    );
\count_r[0]_i_4__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => start,
      O => \count_r[0]_i_4__1_n_0\
    );
\count_r[0]_i_5__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => start,
      O => \count_r[0]_i_5__1_n_0\
    );
\count_r[0]_i_6__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => start,
      O => \count_r[0]_i_6__1_n_0\
    );
\count_r[0]_i_7__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => start,
      O => \count_r[0]_i_7__1_n_0\
    );
\count_r[0]_i_8__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => start,
      O => \count_r[0]_i_8__1_n_0\
    );
\count_r[0]_i_9__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => start,
      O => \count_r[0]_i_9__1_n_0\
    );
\count_r[16]_i_10__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(23),
      I1 => data(13),
      I2 => start,
      O => \count_r[16]_i_10__1_n_0\
    );
\count_r[16]_i_11__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(22),
      I1 => data(13),
      I2 => start,
      O => \count_r[16]_i_11__1_n_0\
    );
\count_r[16]_i_12__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(21),
      I1 => data(13),
      I2 => start,
      O => \count_r[16]_i_12__1_n_0\
    );
\count_r[16]_i_13__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(20),
      I1 => data(13),
      I2 => start,
      O => \count_r[16]_i_13__1_n_0\
    );
\count_r[16]_i_14__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(19),
      I1 => data(13),
      I2 => start,
      O => \count_r[16]_i_14__1_n_0\
    );
\count_r[16]_i_15__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(18),
      I1 => data(13),
      I2 => start,
      O => \count_r[16]_i_15__1_n_0\
    );
\count_r[16]_i_16__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(17),
      I1 => data(13),
      I2 => start,
      O => \count_r[16]_i_16__1_n_0\
    );
\count_r[16]_i_17__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(16),
      I1 => data(12),
      I2 => start,
      O => \count_r[16]_i_17__1_n_0\
    );
\count_r[16]_i_2__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => start,
      O => \count_r[16]_i_2__1_n_0\
    );
\count_r[16]_i_3__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => start,
      O => \count_r[16]_i_3__1_n_0\
    );
\count_r[16]_i_4__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => start,
      O => \count_r[16]_i_4__1_n_0\
    );
\count_r[16]_i_5__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => start,
      O => \count_r[16]_i_5__1_n_0\
    );
\count_r[16]_i_6__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => start,
      O => \count_r[16]_i_6__1_n_0\
    );
\count_r[16]_i_7__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => start,
      O => \count_r[16]_i_7__1_n_0\
    );
\count_r[16]_i_8__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => start,
      O => \count_r[16]_i_8__1_n_0\
    );
\count_r[16]_i_9__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => start,
      O => \count_r[16]_i_9__1_n_0\
    );
\count_r[24]_i_10__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(31),
      I1 => data(13),
      I2 => start,
      O => \count_r[24]_i_10__1_n_0\
    );
\count_r[24]_i_11__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(30),
      I1 => data(13),
      I2 => start,
      O => \count_r[24]_i_11__1_n_0\
    );
\count_r[24]_i_12__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(29),
      I1 => data(13),
      I2 => start,
      O => \count_r[24]_i_12__1_n_0\
    );
\count_r[24]_i_13__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(28),
      I1 => data(13),
      I2 => start,
      O => \count_r[24]_i_13__1_n_0\
    );
\count_r[24]_i_14__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(27),
      I1 => data(13),
      I2 => start,
      O => \count_r[24]_i_14__1_n_0\
    );
\count_r[24]_i_15__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(26),
      I1 => data(13),
      I2 => start,
      O => \count_r[24]_i_15__1_n_0\
    );
\count_r[24]_i_16__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(25),
      I1 => data(13),
      I2 => start,
      O => \count_r[24]_i_16__1_n_0\
    );
\count_r[24]_i_17__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(24),
      I1 => data(13),
      I2 => start,
      O => \count_r[24]_i_17__1_n_0\
    );
\count_r[24]_i_2__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => start,
      O => \count_r[24]_i_2__1_n_0\
    );
\count_r[24]_i_3__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => start,
      O => \count_r[24]_i_3__1_n_0\
    );
\count_r[24]_i_4__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => start,
      O => \count_r[24]_i_4__1_n_0\
    );
\count_r[24]_i_5__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => start,
      O => \count_r[24]_i_5__1_n_0\
    );
\count_r[24]_i_6__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => start,
      O => \count_r[24]_i_6__1_n_0\
    );
\count_r[24]_i_7__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => start,
      O => \count_r[24]_i_7__1_n_0\
    );
\count_r[24]_i_8__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => start,
      O => \count_r[24]_i_8__1_n_0\
    );
\count_r[24]_i_9__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => start,
      O => \count_r[24]_i_9__1_n_0\
    );
\count_r[32]_i_10__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(39),
      I1 => data(13),
      I2 => start,
      O => \count_r[32]_i_10__1_n_0\
    );
\count_r[32]_i_11__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(38),
      I1 => data(13),
      I2 => start,
      O => \count_r[32]_i_11__1_n_0\
    );
\count_r[32]_i_12__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(37),
      I1 => data(13),
      I2 => start,
      O => \count_r[32]_i_12__1_n_0\
    );
\count_r[32]_i_13__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(36),
      I1 => data(13),
      I2 => start,
      O => \count_r[32]_i_13__1_n_0\
    );
\count_r[32]_i_14__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(35),
      I1 => data(13),
      I2 => start,
      O => \count_r[32]_i_14__1_n_0\
    );
\count_r[32]_i_15__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(34),
      I1 => data(13),
      I2 => start,
      O => \count_r[32]_i_15__1_n_0\
    );
\count_r[32]_i_16__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(33),
      I1 => data(13),
      I2 => start,
      O => \count_r[32]_i_16__1_n_0\
    );
\count_r[32]_i_17__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(32),
      I1 => data(13),
      I2 => start,
      O => \count_r[32]_i_17__1_n_0\
    );
\count_r[32]_i_2__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => start,
      O => \count_r[32]_i_2__1_n_0\
    );
\count_r[32]_i_3__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => start,
      O => \count_r[32]_i_3__1_n_0\
    );
\count_r[32]_i_4__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => start,
      O => \count_r[32]_i_4__1_n_0\
    );
\count_r[32]_i_5__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => start,
      O => \count_r[32]_i_5__1_n_0\
    );
\count_r[32]_i_6__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => start,
      O => \count_r[32]_i_6__1_n_0\
    );
\count_r[32]_i_7__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => start,
      O => \count_r[32]_i_7__1_n_0\
    );
\count_r[32]_i_8__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => start,
      O => \count_r[32]_i_8__1_n_0\
    );
\count_r[32]_i_9__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => start,
      O => \count_r[32]_i_9__1_n_0\
    );
\count_r[40]_i_10__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(47),
      I1 => data(13),
      I2 => start,
      O => \count_r[40]_i_10__1_n_0\
    );
\count_r[40]_i_11__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(46),
      I1 => data(13),
      I2 => start,
      O => \count_r[40]_i_11__1_n_0\
    );
\count_r[40]_i_12__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(45),
      I1 => data(13),
      I2 => start,
      O => \count_r[40]_i_12__1_n_0\
    );
\count_r[40]_i_13__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(44),
      I1 => data(13),
      I2 => start,
      O => \count_r[40]_i_13__1_n_0\
    );
\count_r[40]_i_14__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(43),
      I1 => data(13),
      I2 => start,
      O => \count_r[40]_i_14__1_n_0\
    );
\count_r[40]_i_15__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(42),
      I1 => data(13),
      I2 => start,
      O => \count_r[40]_i_15__1_n_0\
    );
\count_r[40]_i_16__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(41),
      I1 => data(13),
      I2 => start,
      O => \count_r[40]_i_16__1_n_0\
    );
\count_r[40]_i_17__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(40),
      I1 => data(13),
      I2 => start,
      O => \count_r[40]_i_17__1_n_0\
    );
\count_r[40]_i_2__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => start,
      O => \count_r[40]_i_2__1_n_0\
    );
\count_r[40]_i_3__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => start,
      O => \count_r[40]_i_3__1_n_0\
    );
\count_r[40]_i_4__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => start,
      O => \count_r[40]_i_4__1_n_0\
    );
\count_r[40]_i_5__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => start,
      O => \count_r[40]_i_5__1_n_0\
    );
\count_r[40]_i_6__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => start,
      O => \count_r[40]_i_6__1_n_0\
    );
\count_r[40]_i_7__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => start,
      O => \count_r[40]_i_7__1_n_0\
    );
\count_r[40]_i_8__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => start,
      O => \count_r[40]_i_8__1_n_0\
    );
\count_r[40]_i_9__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => start,
      O => \count_r[40]_i_9__1_n_0\
    );
\count_r[48]_i_10__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(54),
      I1 => data(13),
      I2 => start,
      O => \count_r[48]_i_10__1_n_0\
    );
\count_r[48]_i_11__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(53),
      I1 => data(13),
      I2 => start,
      O => \count_r[48]_i_11__1_n_0\
    );
\count_r[48]_i_12__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(52),
      I1 => data(13),
      I2 => start,
      O => \count_r[48]_i_12__1_n_0\
    );
\count_r[48]_i_13__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(51),
      I1 => data(13),
      I2 => start,
      O => \count_r[48]_i_13__1_n_0\
    );
\count_r[48]_i_14__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(50),
      I1 => data(13),
      I2 => start,
      O => \count_r[48]_i_14__1_n_0\
    );
\count_r[48]_i_15__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(49),
      I1 => data(13),
      I2 => start,
      O => \count_r[48]_i_15__1_n_0\
    );
\count_r[48]_i_16__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(48),
      I1 => data(13),
      I2 => start,
      O => \count_r[48]_i_16__1_n_0\
    );
\count_r[48]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => start,
      O => \count_r[48]_i_2_n_0\
    );
\count_r[48]_i_3__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => start,
      O => \count_r[48]_i_3__1_n_0\
    );
\count_r[48]_i_4__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => start,
      O => \count_r[48]_i_4__1_n_0\
    );
\count_r[48]_i_5__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => start,
      O => \count_r[48]_i_5__1_n_0\
    );
\count_r[48]_i_6__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => start,
      O => \count_r[48]_i_6__1_n_0\
    );
\count_r[48]_i_7__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => start,
      O => \count_r[48]_i_7__1_n_0\
    );
\count_r[48]_i_8__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => start,
      O => \count_r[48]_i_8__1_n_0\
    );
\count_r[48]_i_9__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A3"
    )
        port map (
      I0 => data(13),
      I1 => count_r_reg(55),
      I2 => start,
      O => \count_r[48]_i_9__0_n_0\
    );
\count_r[8]_i_10__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(15),
      I1 => data(12),
      I2 => start,
      O => \count_r[8]_i_10__1_n_0\
    );
\count_r[8]_i_11__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(14),
      I1 => data(12),
      I2 => start,
      O => \count_r[8]_i_11__1_n_0\
    );
\count_r[8]_i_12__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(13),
      I1 => data(12),
      I2 => start,
      O => \count_r[8]_i_12__1_n_0\
    );
\count_r[8]_i_13__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(12),
      I1 => data(12),
      I2 => start,
      O => \count_r[8]_i_13__1_n_0\
    );
\count_r[8]_i_14__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(11),
      I1 => data(11),
      I2 => start,
      O => \count_r[8]_i_14__1_n_0\
    );
\count_r[8]_i_15__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(10),
      I1 => data(10),
      I2 => start,
      O => \count_r[8]_i_15__1_n_0\
    );
\count_r[8]_i_16__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(9),
      I1 => data(9),
      I2 => start,
      O => \count_r[8]_i_16__1_n_0\
    );
\count_r[8]_i_17__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => count_r_reg(8),
      I1 => data(8),
      I2 => start,
      O => \count_r[8]_i_17__1_n_0\
    );
\count_r[8]_i_2__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => start,
      O => \count_r[8]_i_2__1_n_0\
    );
\count_r[8]_i_3__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => start,
      O => \count_r[8]_i_3__1_n_0\
    );
\count_r[8]_i_4__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => start,
      O => \count_r[8]_i_4__1_n_0\
    );
\count_r[8]_i_5__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => start,
      O => \count_r[8]_i_5__1_n_0\
    );
\count_r[8]_i_6__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => start,
      O => \count_r[8]_i_6__1_n_0\
    );
\count_r[8]_i_7__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => start,
      O => \count_r[8]_i_7__1_n_0\
    );
\count_r[8]_i_8__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => start,
      O => \count_r[8]_i_8__1_n_0\
    );
\count_r[8]_i_9__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => start,
      O => \count_r[8]_i_9__1_n_0\
    );
\count_r_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count_r_reg[0]_0\,
      D => \count_r_reg[0]_i_2__0_n_15\,
      Q => count_r_reg(0),
      R => \count_r_reg[55]_0\
    );
\count_r_reg[0]_i_2__0\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => \count_r_reg[0]_i_2__0_n_0\,
      CO(6) => \count_r_reg[0]_i_2__0_n_1\,
      CO(5) => \count_r_reg[0]_i_2__0_n_2\,
      CO(4) => \count_r_reg[0]_i_2__0_n_3\,
      CO(3) => \count_r_reg[0]_i_2__0_n_4\,
      CO(2) => \count_r_reg[0]_i_2__0_n_5\,
      CO(1) => \count_r_reg[0]_i_2__0_n_6\,
      CO(0) => \count_r_reg[0]_i_2__0_n_7\,
      DI(7) => \count_r[0]_i_3__1_n_0\,
      DI(6) => \count_r[0]_i_4__1_n_0\,
      DI(5) => \count_r[0]_i_5__1_n_0\,
      DI(4) => \count_r[0]_i_6__1_n_0\,
      DI(3) => \count_r[0]_i_7__1_n_0\,
      DI(2) => \count_r[0]_i_8__1_n_0\,
      DI(1) => \count_r[0]_i_9__1_n_0\,
      DI(0) => \count_r[0]_i_10__0_n_0\,
      O(7) => \count_r_reg[0]_i_2__0_n_8\,
      O(6) => \count_r_reg[0]_i_2__0_n_9\,
      O(5) => \count_r_reg[0]_i_2__0_n_10\,
      O(4) => \count_r_reg[0]_i_2__0_n_11\,
      O(3) => \count_r_reg[0]_i_2__0_n_12\,
      O(2) => \count_r_reg[0]_i_2__0_n_13\,
      O(1) => \count_r_reg[0]_i_2__0_n_14\,
      O(0) => \count_r_reg[0]_i_2__0_n_15\,
      S(7) => \count_r[0]_i_11__1_n_0\,
      S(6) => \count_r[0]_i_12__1_n_0\,
      S(5) => \count_r[0]_i_13__1_n_0\,
      S(4) => \count_r[0]_i_14__1_n_0\,
      S(3) => \count_r[0]_i_15__1_n_0\,
      S(2) => \count_r[0]_i_16__1_n_0\,
      S(1) => \count_r[0]_i_17__1_n_0\,
      S(0) => \count_r[0]_i_18__0_n_0\
    );
\count_r_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count_r_reg[0]_0\,
      D => \count_r_reg[8]_i_1__1_n_13\,
      Q => count_r_reg(10),
      R => \count_r_reg[55]_0\
    );
\count_r_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count_r_reg[0]_0\,
      D => \count_r_reg[8]_i_1__1_n_12\,
      Q => count_r_reg(11),
      R => \count_r_reg[55]_0\
    );
\count_r_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count_r_reg[0]_0\,
      D => \count_r_reg[8]_i_1__1_n_11\,
      Q => count_r_reg(12),
      R => \count_r_reg[55]_0\
    );
\count_r_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count_r_reg[0]_0\,
      D => \count_r_reg[8]_i_1__1_n_10\,
      Q => count_r_reg(13),
      R => \count_r_reg[55]_0\
    );
\count_r_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count_r_reg[0]_0\,
      D => \count_r_reg[8]_i_1__1_n_9\,
      Q => count_r_reg(14),
      R => \count_r_reg[55]_0\
    );
\count_r_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count_r_reg[0]_0\,
      D => \count_r_reg[8]_i_1__1_n_8\,
      Q => count_r_reg(15),
      R => \count_r_reg[55]_0\
    );
\count_r_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count_r_reg[0]_0\,
      D => \count_r_reg[16]_i_1__1_n_15\,
      Q => count_r_reg(16),
      R => \count_r_reg[55]_0\
    );
\count_r_reg[16]_i_1__1\: unisim.vcomponents.CARRY8
     port map (
      CI => \count_r_reg[8]_i_1__1_n_0\,
      CI_TOP => '0',
      CO(7) => \count_r_reg[16]_i_1__1_n_0\,
      CO(6) => \count_r_reg[16]_i_1__1_n_1\,
      CO(5) => \count_r_reg[16]_i_1__1_n_2\,
      CO(4) => \count_r_reg[16]_i_1__1_n_3\,
      CO(3) => \count_r_reg[16]_i_1__1_n_4\,
      CO(2) => \count_r_reg[16]_i_1__1_n_5\,
      CO(1) => \count_r_reg[16]_i_1__1_n_6\,
      CO(0) => \count_r_reg[16]_i_1__1_n_7\,
      DI(7) => \count_r[16]_i_2__1_n_0\,
      DI(6) => \count_r[16]_i_3__1_n_0\,
      DI(5) => \count_r[16]_i_4__1_n_0\,
      DI(4) => \count_r[16]_i_5__1_n_0\,
      DI(3) => \count_r[16]_i_6__1_n_0\,
      DI(2) => \count_r[16]_i_7__1_n_0\,
      DI(1) => \count_r[16]_i_8__1_n_0\,
      DI(0) => \count_r[16]_i_9__1_n_0\,
      O(7) => \count_r_reg[16]_i_1__1_n_8\,
      O(6) => \count_r_reg[16]_i_1__1_n_9\,
      O(5) => \count_r_reg[16]_i_1__1_n_10\,
      O(4) => \count_r_reg[16]_i_1__1_n_11\,
      O(3) => \count_r_reg[16]_i_1__1_n_12\,
      O(2) => \count_r_reg[16]_i_1__1_n_13\,
      O(1) => \count_r_reg[16]_i_1__1_n_14\,
      O(0) => \count_r_reg[16]_i_1__1_n_15\,
      S(7) => \count_r[16]_i_10__1_n_0\,
      S(6) => \count_r[16]_i_11__1_n_0\,
      S(5) => \count_r[16]_i_12__1_n_0\,
      S(4) => \count_r[16]_i_13__1_n_0\,
      S(3) => \count_r[16]_i_14__1_n_0\,
      S(2) => \count_r[16]_i_15__1_n_0\,
      S(1) => \count_r[16]_i_16__1_n_0\,
      S(0) => \count_r[16]_i_17__1_n_0\
    );
\count_r_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count_r_reg[0]_0\,
      D => \count_r_reg[16]_i_1__1_n_14\,
      Q => count_r_reg(17),
      R => \count_r_reg[55]_0\
    );
\count_r_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count_r_reg[0]_0\,
      D => \count_r_reg[16]_i_1__1_n_13\,
      Q => count_r_reg(18),
      R => \count_r_reg[55]_0\
    );
\count_r_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count_r_reg[0]_0\,
      D => \count_r_reg[16]_i_1__1_n_12\,
      Q => count_r_reg(19),
      R => \count_r_reg[55]_0\
    );
\count_r_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count_r_reg[0]_0\,
      D => \count_r_reg[0]_i_2__0_n_14\,
      Q => count_r_reg(1),
      R => \count_r_reg[55]_0\
    );
\count_r_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count_r_reg[0]_0\,
      D => \count_r_reg[16]_i_1__1_n_11\,
      Q => count_r_reg(20),
      R => \count_r_reg[55]_0\
    );
\count_r_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count_r_reg[0]_0\,
      D => \count_r_reg[16]_i_1__1_n_10\,
      Q => count_r_reg(21),
      R => \count_r_reg[55]_0\
    );
\count_r_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count_r_reg[0]_0\,
      D => \count_r_reg[16]_i_1__1_n_9\,
      Q => count_r_reg(22),
      R => \count_r_reg[55]_0\
    );
\count_r_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count_r_reg[0]_0\,
      D => \count_r_reg[16]_i_1__1_n_8\,
      Q => count_r_reg(23),
      R => \count_r_reg[55]_0\
    );
\count_r_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count_r_reg[0]_0\,
      D => \count_r_reg[24]_i_1__1_n_15\,
      Q => count_r_reg(24),
      R => \count_r_reg[55]_0\
    );
\count_r_reg[24]_i_1__1\: unisim.vcomponents.CARRY8
     port map (
      CI => \count_r_reg[16]_i_1__1_n_0\,
      CI_TOP => '0',
      CO(7) => \count_r_reg[24]_i_1__1_n_0\,
      CO(6) => \count_r_reg[24]_i_1__1_n_1\,
      CO(5) => \count_r_reg[24]_i_1__1_n_2\,
      CO(4) => \count_r_reg[24]_i_1__1_n_3\,
      CO(3) => \count_r_reg[24]_i_1__1_n_4\,
      CO(2) => \count_r_reg[24]_i_1__1_n_5\,
      CO(1) => \count_r_reg[24]_i_1__1_n_6\,
      CO(0) => \count_r_reg[24]_i_1__1_n_7\,
      DI(7) => \count_r[24]_i_2__1_n_0\,
      DI(6) => \count_r[24]_i_3__1_n_0\,
      DI(5) => \count_r[24]_i_4__1_n_0\,
      DI(4) => \count_r[24]_i_5__1_n_0\,
      DI(3) => \count_r[24]_i_6__1_n_0\,
      DI(2) => \count_r[24]_i_7__1_n_0\,
      DI(1) => \count_r[24]_i_8__1_n_0\,
      DI(0) => \count_r[24]_i_9__1_n_0\,
      O(7) => \count_r_reg[24]_i_1__1_n_8\,
      O(6) => \count_r_reg[24]_i_1__1_n_9\,
      O(5) => \count_r_reg[24]_i_1__1_n_10\,
      O(4) => \count_r_reg[24]_i_1__1_n_11\,
      O(3) => \count_r_reg[24]_i_1__1_n_12\,
      O(2) => \count_r_reg[24]_i_1__1_n_13\,
      O(1) => \count_r_reg[24]_i_1__1_n_14\,
      O(0) => \count_r_reg[24]_i_1__1_n_15\,
      S(7) => \count_r[24]_i_10__1_n_0\,
      S(6) => \count_r[24]_i_11__1_n_0\,
      S(5) => \count_r[24]_i_12__1_n_0\,
      S(4) => \count_r[24]_i_13__1_n_0\,
      S(3) => \count_r[24]_i_14__1_n_0\,
      S(2) => \count_r[24]_i_15__1_n_0\,
      S(1) => \count_r[24]_i_16__1_n_0\,
      S(0) => \count_r[24]_i_17__1_n_0\
    );
\count_r_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count_r_reg[0]_0\,
      D => \count_r_reg[24]_i_1__1_n_14\,
      Q => count_r_reg(25),
      R => \count_r_reg[55]_0\
    );
\count_r_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count_r_reg[0]_0\,
      D => \count_r_reg[24]_i_1__1_n_13\,
      Q => count_r_reg(26),
      R => \count_r_reg[55]_0\
    );
\count_r_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count_r_reg[0]_0\,
      D => \count_r_reg[24]_i_1__1_n_12\,
      Q => count_r_reg(27),
      R => \count_r_reg[55]_0\
    );
\count_r_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count_r_reg[0]_0\,
      D => \count_r_reg[24]_i_1__1_n_11\,
      Q => count_r_reg(28),
      R => \count_r_reg[55]_0\
    );
\count_r_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count_r_reg[0]_0\,
      D => \count_r_reg[24]_i_1__1_n_10\,
      Q => count_r_reg(29),
      R => \count_r_reg[55]_0\
    );
\count_r_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count_r_reg[0]_0\,
      D => \count_r_reg[0]_i_2__0_n_13\,
      Q => count_r_reg(2),
      R => \count_r_reg[55]_0\
    );
\count_r_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count_r_reg[0]_0\,
      D => \count_r_reg[24]_i_1__1_n_9\,
      Q => count_r_reg(30),
      R => \count_r_reg[55]_0\
    );
\count_r_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count_r_reg[0]_0\,
      D => \count_r_reg[24]_i_1__1_n_8\,
      Q => count_r_reg(31),
      R => \count_r_reg[55]_0\
    );
\count_r_reg[32]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count_r_reg[0]_0\,
      D => \count_r_reg[32]_i_1__1_n_15\,
      Q => count_r_reg(32),
      R => \count_r_reg[55]_0\
    );
\count_r_reg[32]_i_1__1\: unisim.vcomponents.CARRY8
     port map (
      CI => \count_r_reg[24]_i_1__1_n_0\,
      CI_TOP => '0',
      CO(7) => \count_r_reg[32]_i_1__1_n_0\,
      CO(6) => \count_r_reg[32]_i_1__1_n_1\,
      CO(5) => \count_r_reg[32]_i_1__1_n_2\,
      CO(4) => \count_r_reg[32]_i_1__1_n_3\,
      CO(3) => \count_r_reg[32]_i_1__1_n_4\,
      CO(2) => \count_r_reg[32]_i_1__1_n_5\,
      CO(1) => \count_r_reg[32]_i_1__1_n_6\,
      CO(0) => \count_r_reg[32]_i_1__1_n_7\,
      DI(7) => \count_r[32]_i_2__1_n_0\,
      DI(6) => \count_r[32]_i_3__1_n_0\,
      DI(5) => \count_r[32]_i_4__1_n_0\,
      DI(4) => \count_r[32]_i_5__1_n_0\,
      DI(3) => \count_r[32]_i_6__1_n_0\,
      DI(2) => \count_r[32]_i_7__1_n_0\,
      DI(1) => \count_r[32]_i_8__1_n_0\,
      DI(0) => \count_r[32]_i_9__1_n_0\,
      O(7) => \count_r_reg[32]_i_1__1_n_8\,
      O(6) => \count_r_reg[32]_i_1__1_n_9\,
      O(5) => \count_r_reg[32]_i_1__1_n_10\,
      O(4) => \count_r_reg[32]_i_1__1_n_11\,
      O(3) => \count_r_reg[32]_i_1__1_n_12\,
      O(2) => \count_r_reg[32]_i_1__1_n_13\,
      O(1) => \count_r_reg[32]_i_1__1_n_14\,
      O(0) => \count_r_reg[32]_i_1__1_n_15\,
      S(7) => \count_r[32]_i_10__1_n_0\,
      S(6) => \count_r[32]_i_11__1_n_0\,
      S(5) => \count_r[32]_i_12__1_n_0\,
      S(4) => \count_r[32]_i_13__1_n_0\,
      S(3) => \count_r[32]_i_14__1_n_0\,
      S(2) => \count_r[32]_i_15__1_n_0\,
      S(1) => \count_r[32]_i_16__1_n_0\,
      S(0) => \count_r[32]_i_17__1_n_0\
    );
\count_r_reg[33]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count_r_reg[0]_0\,
      D => \count_r_reg[32]_i_1__1_n_14\,
      Q => count_r_reg(33),
      R => \count_r_reg[55]_0\
    );
\count_r_reg[34]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count_r_reg[0]_0\,
      D => \count_r_reg[32]_i_1__1_n_13\,
      Q => count_r_reg(34),
      R => \count_r_reg[55]_0\
    );
\count_r_reg[35]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count_r_reg[0]_0\,
      D => \count_r_reg[32]_i_1__1_n_12\,
      Q => count_r_reg(35),
      R => \count_r_reg[55]_0\
    );
\count_r_reg[36]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count_r_reg[0]_0\,
      D => \count_r_reg[32]_i_1__1_n_11\,
      Q => count_r_reg(36),
      R => \count_r_reg[55]_0\
    );
\count_r_reg[37]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count_r_reg[0]_0\,
      D => \count_r_reg[32]_i_1__1_n_10\,
      Q => count_r_reg(37),
      R => \count_r_reg[55]_0\
    );
\count_r_reg[38]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count_r_reg[0]_0\,
      D => \count_r_reg[32]_i_1__1_n_9\,
      Q => count_r_reg(38),
      R => \count_r_reg[55]_0\
    );
\count_r_reg[39]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count_r_reg[0]_0\,
      D => \count_r_reg[32]_i_1__1_n_8\,
      Q => count_r_reg(39),
      R => \count_r_reg[55]_0\
    );
\count_r_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count_r_reg[0]_0\,
      D => \count_r_reg[0]_i_2__0_n_12\,
      Q => count_r_reg(3),
      R => \count_r_reg[55]_0\
    );
\count_r_reg[40]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count_r_reg[0]_0\,
      D => \count_r_reg[40]_i_1__1_n_15\,
      Q => count_r_reg(40),
      R => \count_r_reg[55]_0\
    );
\count_r_reg[40]_i_1__1\: unisim.vcomponents.CARRY8
     port map (
      CI => \count_r_reg[32]_i_1__1_n_0\,
      CI_TOP => '0',
      CO(7) => \count_r_reg[40]_i_1__1_n_0\,
      CO(6) => \count_r_reg[40]_i_1__1_n_1\,
      CO(5) => \count_r_reg[40]_i_1__1_n_2\,
      CO(4) => \count_r_reg[40]_i_1__1_n_3\,
      CO(3) => \count_r_reg[40]_i_1__1_n_4\,
      CO(2) => \count_r_reg[40]_i_1__1_n_5\,
      CO(1) => \count_r_reg[40]_i_1__1_n_6\,
      CO(0) => \count_r_reg[40]_i_1__1_n_7\,
      DI(7) => \count_r[40]_i_2__1_n_0\,
      DI(6) => \count_r[40]_i_3__1_n_0\,
      DI(5) => \count_r[40]_i_4__1_n_0\,
      DI(4) => \count_r[40]_i_5__1_n_0\,
      DI(3) => \count_r[40]_i_6__1_n_0\,
      DI(2) => \count_r[40]_i_7__1_n_0\,
      DI(1) => \count_r[40]_i_8__1_n_0\,
      DI(0) => \count_r[40]_i_9__1_n_0\,
      O(7) => \count_r_reg[40]_i_1__1_n_8\,
      O(6) => \count_r_reg[40]_i_1__1_n_9\,
      O(5) => \count_r_reg[40]_i_1__1_n_10\,
      O(4) => \count_r_reg[40]_i_1__1_n_11\,
      O(3) => \count_r_reg[40]_i_1__1_n_12\,
      O(2) => \count_r_reg[40]_i_1__1_n_13\,
      O(1) => \count_r_reg[40]_i_1__1_n_14\,
      O(0) => \count_r_reg[40]_i_1__1_n_15\,
      S(7) => \count_r[40]_i_10__1_n_0\,
      S(6) => \count_r[40]_i_11__1_n_0\,
      S(5) => \count_r[40]_i_12__1_n_0\,
      S(4) => \count_r[40]_i_13__1_n_0\,
      S(3) => \count_r[40]_i_14__1_n_0\,
      S(2) => \count_r[40]_i_15__1_n_0\,
      S(1) => \count_r[40]_i_16__1_n_0\,
      S(0) => \count_r[40]_i_17__1_n_0\
    );
\count_r_reg[41]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count_r_reg[0]_0\,
      D => \count_r_reg[40]_i_1__1_n_14\,
      Q => count_r_reg(41),
      R => \count_r_reg[55]_0\
    );
\count_r_reg[42]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count_r_reg[0]_0\,
      D => \count_r_reg[40]_i_1__1_n_13\,
      Q => count_r_reg(42),
      R => \count_r_reg[55]_0\
    );
\count_r_reg[43]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count_r_reg[0]_0\,
      D => \count_r_reg[40]_i_1__1_n_12\,
      Q => count_r_reg(43),
      R => \count_r_reg[55]_0\
    );
\count_r_reg[44]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count_r_reg[0]_0\,
      D => \count_r_reg[40]_i_1__1_n_11\,
      Q => count_r_reg(44),
      R => \count_r_reg[55]_0\
    );
\count_r_reg[45]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count_r_reg[0]_0\,
      D => \count_r_reg[40]_i_1__1_n_10\,
      Q => count_r_reg(45),
      R => \count_r_reg[55]_0\
    );
\count_r_reg[46]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count_r_reg[0]_0\,
      D => \count_r_reg[40]_i_1__1_n_9\,
      Q => count_r_reg(46),
      R => \count_r_reg[55]_0\
    );
\count_r_reg[47]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count_r_reg[0]_0\,
      D => \count_r_reg[40]_i_1__1_n_8\,
      Q => count_r_reg(47),
      R => \count_r_reg[55]_0\
    );
\count_r_reg[48]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count_r_reg[0]_0\,
      D => \count_r_reg[48]_i_1__1_n_15\,
      Q => count_r_reg(48),
      R => \count_r_reg[55]_0\
    );
\count_r_reg[48]_i_1__1\: unisim.vcomponents.CARRY8
     port map (
      CI => \count_r_reg[40]_i_1__1_n_0\,
      CI_TOP => '0',
      CO(7) => \NLW_count_r_reg[48]_i_1__1_CO_UNCONNECTED\(7),
      CO(6) => \count_r_reg[48]_i_1__1_n_1\,
      CO(5) => \count_r_reg[48]_i_1__1_n_2\,
      CO(4) => \count_r_reg[48]_i_1__1_n_3\,
      CO(3) => \count_r_reg[48]_i_1__1_n_4\,
      CO(2) => \count_r_reg[48]_i_1__1_n_5\,
      CO(1) => \count_r_reg[48]_i_1__1_n_6\,
      CO(0) => \count_r_reg[48]_i_1__1_n_7\,
      DI(7) => '0',
      DI(6) => \count_r[48]_i_2_n_0\,
      DI(5) => \count_r[48]_i_3__1_n_0\,
      DI(4) => \count_r[48]_i_4__1_n_0\,
      DI(3) => \count_r[48]_i_5__1_n_0\,
      DI(2) => \count_r[48]_i_6__1_n_0\,
      DI(1) => \count_r[48]_i_7__1_n_0\,
      DI(0) => \count_r[48]_i_8__1_n_0\,
      O(7) => \count_r_reg[48]_i_1__1_n_8\,
      O(6) => \count_r_reg[48]_i_1__1_n_9\,
      O(5) => \count_r_reg[48]_i_1__1_n_10\,
      O(4) => \count_r_reg[48]_i_1__1_n_11\,
      O(3) => \count_r_reg[48]_i_1__1_n_12\,
      O(2) => \count_r_reg[48]_i_1__1_n_13\,
      O(1) => \count_r_reg[48]_i_1__1_n_14\,
      O(0) => \count_r_reg[48]_i_1__1_n_15\,
      S(7) => \count_r[48]_i_9__0_n_0\,
      S(6) => \count_r[48]_i_10__1_n_0\,
      S(5) => \count_r[48]_i_11__1_n_0\,
      S(4) => \count_r[48]_i_12__1_n_0\,
      S(3) => \count_r[48]_i_13__1_n_0\,
      S(2) => \count_r[48]_i_14__1_n_0\,
      S(1) => \count_r[48]_i_15__1_n_0\,
      S(0) => \count_r[48]_i_16__1_n_0\
    );
\count_r_reg[49]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count_r_reg[0]_0\,
      D => \count_r_reg[48]_i_1__1_n_14\,
      Q => count_r_reg(49),
      R => \count_r_reg[55]_0\
    );
\count_r_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count_r_reg[0]_0\,
      D => \count_r_reg[0]_i_2__0_n_11\,
      Q => count_r_reg(4),
      R => \count_r_reg[55]_0\
    );
\count_r_reg[50]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count_r_reg[0]_0\,
      D => \count_r_reg[48]_i_1__1_n_13\,
      Q => count_r_reg(50),
      R => \count_r_reg[55]_0\
    );
\count_r_reg[51]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count_r_reg[0]_0\,
      D => \count_r_reg[48]_i_1__1_n_12\,
      Q => count_r_reg(51),
      R => \count_r_reg[55]_0\
    );
\count_r_reg[52]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count_r_reg[0]_0\,
      D => \count_r_reg[48]_i_1__1_n_11\,
      Q => count_r_reg(52),
      R => \count_r_reg[55]_0\
    );
\count_r_reg[53]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count_r_reg[0]_0\,
      D => \count_r_reg[48]_i_1__1_n_10\,
      Q => count_r_reg(53),
      R => \count_r_reg[55]_0\
    );
\count_r_reg[54]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count_r_reg[0]_0\,
      D => \count_r_reg[48]_i_1__1_n_9\,
      Q => count_r_reg(54),
      R => \count_r_reg[55]_0\
    );
\count_r_reg[55]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count_r_reg[0]_0\,
      D => \count_r_reg[48]_i_1__1_n_8\,
      Q => count_r_reg(55),
      R => \count_r_reg[55]_0\
    );
\count_r_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count_r_reg[0]_0\,
      D => \count_r_reg[0]_i_2__0_n_10\,
      Q => count_r_reg(5),
      R => \count_r_reg[55]_0\
    );
\count_r_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count_r_reg[0]_0\,
      D => \count_r_reg[0]_i_2__0_n_9\,
      Q => count_r_reg(6),
      R => \count_r_reg[55]_0\
    );
\count_r_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count_r_reg[0]_0\,
      D => \count_r_reg[0]_i_2__0_n_8\,
      Q => count_r_reg(7),
      R => \count_r_reg[55]_0\
    );
\count_r_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count_r_reg[0]_0\,
      D => \count_r_reg[8]_i_1__1_n_15\,
      Q => count_r_reg(8),
      R => \count_r_reg[55]_0\
    );
\count_r_reg[8]_i_1__1\: unisim.vcomponents.CARRY8
     port map (
      CI => \count_r_reg[0]_i_2__0_n_0\,
      CI_TOP => '0',
      CO(7) => \count_r_reg[8]_i_1__1_n_0\,
      CO(6) => \count_r_reg[8]_i_1__1_n_1\,
      CO(5) => \count_r_reg[8]_i_1__1_n_2\,
      CO(4) => \count_r_reg[8]_i_1__1_n_3\,
      CO(3) => \count_r_reg[8]_i_1__1_n_4\,
      CO(2) => \count_r_reg[8]_i_1__1_n_5\,
      CO(1) => \count_r_reg[8]_i_1__1_n_6\,
      CO(0) => \count_r_reg[8]_i_1__1_n_7\,
      DI(7) => \count_r[8]_i_2__1_n_0\,
      DI(6) => \count_r[8]_i_3__1_n_0\,
      DI(5) => \count_r[8]_i_4__1_n_0\,
      DI(4) => \count_r[8]_i_5__1_n_0\,
      DI(3) => \count_r[8]_i_6__1_n_0\,
      DI(2) => \count_r[8]_i_7__1_n_0\,
      DI(1) => \count_r[8]_i_8__1_n_0\,
      DI(0) => \count_r[8]_i_9__1_n_0\,
      O(7) => \count_r_reg[8]_i_1__1_n_8\,
      O(6) => \count_r_reg[8]_i_1__1_n_9\,
      O(5) => \count_r_reg[8]_i_1__1_n_10\,
      O(4) => \count_r_reg[8]_i_1__1_n_11\,
      O(3) => \count_r_reg[8]_i_1__1_n_12\,
      O(2) => \count_r_reg[8]_i_1__1_n_13\,
      O(1) => \count_r_reg[8]_i_1__1_n_14\,
      O(0) => \count_r_reg[8]_i_1__1_n_15\,
      S(7) => \count_r[8]_i_10__1_n_0\,
      S(6) => \count_r[8]_i_11__1_n_0\,
      S(5) => \count_r[8]_i_12__1_n_0\,
      S(4) => \count_r[8]_i_13__1_n_0\,
      S(3) => \count_r[8]_i_14__1_n_0\,
      S(2) => \count_r[8]_i_15__1_n_0\,
      S(1) => \count_r[8]_i_16__1_n_0\,
      S(0) => \count_r[8]_i_17__1_n_0\
    );
\count_r_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count_r_reg[0]_0\,
      D => \count_r_reg[8]_i_1__1_n_14\,
      Q => count_r_reg(9),
      R => \count_r_reg[55]_0\
    );
is_zero_r_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF80"
    )
        port map (
      I0 => w_running,
      I1 => data_valid,
      I2 => m_axi_WREADY,
      I3 => \^total_len_r_reg[8]\,
      O => E(0)
    );
is_zero_r_i_11: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => count_r_reg(19),
      I1 => count_r_reg(15),
      I2 => count_r_reg(40),
      I3 => count_r_reg(11),
      O => is_zero_r_i_11_n_0
    );
is_zero_r_i_12: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => count_r_reg(5),
      I1 => count_r_reg(3),
      I2 => count_r_reg(50),
      I3 => count_r_reg(24),
      O => is_zero_r_i_12_n_0
    );
is_zero_r_i_13: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => count_r_reg(25),
      I1 => count_r_reg(18),
      I2 => count_r_reg(23),
      I3 => count_r_reg(16),
      O => is_zero_r_i_13_n_0
    );
is_zero_r_i_14: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => count_r_reg(22),
      I1 => count_r_reg(21),
      I2 => count_r_reg(20),
      I3 => count_r_reg(9),
      O => is_zero_r_i_14_n_0
    );
is_zero_r_i_15: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => count_r_reg(38),
      I1 => count_r_reg(33),
      I2 => count_r_reg(41),
      I3 => count_r_reg(39),
      O => is_zero_r_i_15_n_0
    );
is_zero_r_i_16: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => count_r_reg(47),
      I1 => count_r_reg(35),
      I2 => count_r_reg(54),
      I3 => count_r_reg(32),
      O => is_zero_r_i_16_n_0
    );
is_zero_r_i_17: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => count_r_reg(31),
      I1 => count_r_reg(26),
      I2 => count_r_reg(46),
      I3 => count_r_reg(36),
      O => is_zero_r_i_17_n_0
    );
is_zero_r_i_18: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => count_r_reg(29),
      I1 => count_r_reg(6),
      I2 => count_r_reg(30),
      I3 => count_r_reg(4),
      O => is_zero_r_i_18_n_0
    );
is_zero_r_i_19: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => count_r_reg(14),
      I1 => count_r_reg(10),
      I2 => count_r_reg(48),
      I3 => count_r_reg(17),
      O => is_zero_r_i_19_n_0
    );
\is_zero_r_i_1__4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BAFFBA00"
    )
        port map (
      I0 => is_zero_r_reg_2,
      I1 => start,
      I2 => \is_zero_r_i_2__0_n_0\,
      I3 => \count_r_reg[0]_0\,
      I4 => \^is_zero_r_reg_0\,
      O => \is_zero_r_i_1__4_n_0\
    );
is_zero_r_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001FFFF00010000"
    )
        port map (
      I0 => Q(2),
      I1 => Q(1),
      I2 => Q(3),
      I3 => Q(0),
      I4 => \^total_len_r_reg[8]\,
      I5 => is_zero_r_reg_1,
      O => \final_burst_len_reg[2]\
    );
is_zero_r_i_20: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEF"
    )
        port map (
      I0 => count_r_reg(55),
      I1 => count_r_reg(34),
      I2 => count_r_reg(0),
      I3 => count_r_reg(37),
      O => is_zero_r_i_20_n_0
    );
is_zero_r_i_22: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => count_r_reg(53),
      I1 => count_r_reg(52),
      I2 => count_r_reg(13),
      I3 => count_r_reg(8),
      O => is_zero_r_i_22_n_0
    );
\is_zero_r_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000004"
    )
        port map (
      I0 => is_zero_r_i_9_n_0,
      I1 => is_zero_r_i_8_n_0,
      I2 => is_zero_r_i_7_n_0,
      I3 => is_zero_r_i_6_n_0,
      I4 => \is_zero_r_i_3__0_n_0\,
      I5 => is_zero_r_i_4_n_0,
      O => \is_zero_r_i_2__0_n_0\
    );
is_zero_r_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAABAAAA"
    )
        port map (
      I0 => is_zero_r_reg_2,
      I1 => is_zero_r_i_5_n_0,
      I2 => is_zero_r_i_6_n_0,
      I3 => is_zero_r_i_7_n_0,
      I4 => is_zero_r_i_8_n_0,
      I5 => is_zero_r_i_9_n_0,
      O => \^total_len_r_reg[8]\
    );
\is_zero_r_i_3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => count_r_reg(24),
      I1 => count_r_reg(50),
      I2 => count_r_reg(3),
      I3 => count_r_reg(5),
      I4 => is_zero_r_i_11_n_0,
      O => \is_zero_r_i_3__0_n_0\
    );
is_zero_r_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => count_r_reg(9),
      I1 => count_r_reg(20),
      I2 => count_r_reg(21),
      I3 => count_r_reg(22),
      I4 => is_zero_r_i_13_n_0,
      O => is_zero_r_i_4_n_0
    );
is_zero_r_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => is_zero_r_i_11_n_0,
      I1 => is_zero_r_i_12_n_0,
      I2 => is_zero_r_i_13_n_0,
      I3 => is_zero_r_i_14_n_0,
      O => is_zero_r_i_5_n_0
    );
is_zero_r_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => is_zero_r_i_15_n_0,
      I1 => is_zero_r_i_16_n_0,
      I2 => is_zero_r_i_17_n_0,
      I3 => is_zero_r_i_18_n_0,
      O => is_zero_r_i_6_n_0
    );
is_zero_r_i_7: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => count_r_reg(7),
      I1 => count_r_reg(51),
      I2 => count_r_reg(2),
      I3 => count_r_reg(49),
      I4 => is_zero_r_i_19_n_0,
      O => is_zero_r_i_7_n_0
    );
is_zero_r_i_8: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => count_r_reg(27),
      I1 => count_r_reg(28),
      I2 => count_r_reg(1),
      I3 => count_r_reg(45),
      I4 => is_zero_r_i_20_n_0,
      O => is_zero_r_i_8_n_0
    );
is_zero_r_i_9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => is_zero_r_i_3_0,
      I1 => is_zero_r_i_22_n_0,
      I2 => count_r_reg(43),
      I3 => count_r_reg(42),
      I4 => count_r_reg(44),
      I5 => count_r_reg(12),
      O => is_zero_r_i_9_n_0
    );
is_zero_r_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => \is_zero_r_i_1__4_n_0\,
      Q => \^is_zero_r_reg_0\,
      S => \count_r_reg[55]_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_counter__parameterized1\ is
  port (
    m_axi_AWREADY_0 : out STD_LOGIC;
    m_axi_AWREADY_1 : out STD_LOGIC;
    \count_r_reg[3]_0\ : in STD_LOGIC;
    clk : in STD_LOGIC;
    wfirst_pulse : in STD_LOGIC;
    is_zero_r_reg_0 : in STD_LOGIC;
    m_axi_AWREADY : in STD_LOGIC;
    stall_aw : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_counter__parameterized1\ : entity is "axi_counter";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_counter__parameterized1\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_counter__parameterized1\ is
  signal \count_r[0]_i_1__1_n_0\ : STD_LOGIC;
  signal \count_r[1]_i_1__1_n_0\ : STD_LOGIC;
  signal \count_r[2]_i_1__1_n_0\ : STD_LOGIC;
  signal \count_r[3]_i_1__1_n_0\ : STD_LOGIC;
  signal \count_r[3]_i_2_n_0\ : STD_LOGIC;
  signal \count_r_reg_n_0_[0]\ : STD_LOGIC;
  signal \count_r_reg_n_0_[1]\ : STD_LOGIC;
  signal \count_r_reg_n_0_[2]\ : STD_LOGIC;
  signal \count_r_reg_n_0_[3]\ : STD_LOGIC;
  signal idle_aw : STD_LOGIC;
  signal \is_zero_r_i_1__2_n_0\ : STD_LOGIC;
  signal \^m_axi_awready_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \count_r[1]_i_1__1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \count_r[3]_i_3\ : label is "soft_lutpair15";
begin
  m_axi_AWREADY_0 <= \^m_axi_awready_0\;
awvalid_r_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5053"
    )
        port map (
      I0 => m_axi_AWREADY,
      I1 => idle_aw,
      I2 => is_zero_r_reg_0,
      I3 => stall_aw,
      O => m_axi_AWREADY_1
    );
\count_r[0]_i_1__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \count_r_reg_n_0_[0]\,
      O => \count_r[0]_i_1__1_n_0\
    );
\count_r[1]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A6665999"
    )
        port map (
      I0 => \count_r_reg_n_0_[0]\,
      I1 => wfirst_pulse,
      I2 => is_zero_r_reg_0,
      I3 => m_axi_AWREADY,
      I4 => \count_r_reg_n_0_[1]\,
      O => \count_r[1]_i_1__1_n_0\
    );
\count_r[2]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8FFF7000FF70008F"
    )
        port map (
      I0 => m_axi_AWREADY,
      I1 => is_zero_r_reg_0,
      I2 => wfirst_pulse,
      I3 => \count_r_reg_n_0_[0]\,
      I4 => \count_r_reg_n_0_[2]\,
      I5 => \count_r_reg_n_0_[1]\,
      O => \count_r[2]_i_1__1_n_0\
    );
\count_r[3]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => wfirst_pulse,
      I1 => is_zero_r_reg_0,
      I2 => m_axi_AWREADY,
      O => \count_r[3]_i_1__1_n_0\
    );
\count_r[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA6AAAA9A9AAA9"
    )
        port map (
      I0 => \count_r_reg_n_0_[3]\,
      I1 => \count_r_reg_n_0_[2]\,
      I2 => \count_r_reg_n_0_[0]\,
      I3 => wfirst_pulse,
      I4 => \^m_axi_awready_0\,
      I5 => \count_r_reg_n_0_[1]\,
      O => \count_r[3]_i_2_n_0\
    );
\count_r[3]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => m_axi_AWREADY,
      I1 => is_zero_r_reg_0,
      O => \^m_axi_awready_0\
    );
\count_r_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count_r[3]_i_1__1_n_0\,
      D => \count_r[0]_i_1__1_n_0\,
      Q => \count_r_reg_n_0_[0]\,
      R => \count_r_reg[3]_0\
    );
\count_r_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count_r[3]_i_1__1_n_0\,
      D => \count_r[1]_i_1__1_n_0\,
      Q => \count_r_reg_n_0_[1]\,
      R => \count_r_reg[3]_0\
    );
\count_r_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count_r[3]_i_1__1_n_0\,
      D => \count_r[2]_i_1__1_n_0\,
      Q => \count_r_reg_n_0_[2]\,
      R => \count_r_reg[3]_0\
    );
\count_r_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count_r[3]_i_1__1_n_0\,
      D => \count_r[3]_i_2_n_0\,
      Q => \count_r_reg_n_0_[3]\,
      R => \count_r_reg[3]_0\
    );
\is_zero_r_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000002280000000"
    )
        port map (
      I0 => \count_r_reg_n_0_[0]\,
      I1 => \count_r_reg_n_0_[1]\,
      I2 => wfirst_pulse,
      I3 => \count_r_reg_n_0_[3]\,
      I4 => \count_r_reg_n_0_[2]\,
      I5 => \^m_axi_awready_0\,
      O => \is_zero_r_i_1__2_n_0\
    );
is_zero_r_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \count_r[3]_i_1__1_n_0\,
      D => \is_zero_r_i_1__2_n_0\,
      Q => idle_aw,
      S => \count_r_reg[3]_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_counter__parameterized2\ is
  port (
    stall_aw : out STD_LOGIC;
    \count_r_reg[0]_0\ : in STD_LOGIC;
    clk : in STD_LOGIC;
    is_zero_r_reg_0 : in STD_LOGIC;
    m_axi_AWREADY : in STD_LOGIC;
    m_axi_BVALID : in STD_LOGIC;
    \count_r_reg[3]_0\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_counter__parameterized2\ : entity is "axi_counter";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_counter__parameterized2\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_counter__parameterized2\ is
  signal \count_r[0]_i_1__2_n_0\ : STD_LOGIC;
  signal \count_r[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_r[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_r[3]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_r[4]_i_1_n_0\ : STD_LOGIC;
  signal \count_r[4]_i_2_n_0\ : STD_LOGIC;
  signal \count_r[4]_i_3_n_0\ : STD_LOGIC;
  signal \count_r_reg_n_0_[0]\ : STD_LOGIC;
  signal \count_r_reg_n_0_[1]\ : STD_LOGIC;
  signal \count_r_reg_n_0_[2]\ : STD_LOGIC;
  signal \count_r_reg_n_0_[3]\ : STD_LOGIC;
  signal \count_r_reg_n_0_[4]\ : STD_LOGIC;
  signal \is_zero_r_i_1__3_n_0\ : STD_LOGIC;
  signal \is_zero_r_i_2__1_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \count_r[0]_i_1__2\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \count_r[1]_i_1__0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \count_r[4]_i_3\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \is_zero_r_i_1__3\ : label is "soft_lutpair10";
begin
\count_r[0]_i_1__2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \count_r_reg_n_0_[0]\,
      O => \count_r[0]_i_1__2_n_0\
    );
\count_r[1]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA6A5595"
    )
        port map (
      I0 => \count_r_reg_n_0_[0]\,
      I1 => is_zero_r_reg_0,
      I2 => m_axi_AWREADY,
      I3 => m_axi_BVALID,
      I4 => \count_r_reg_n_0_[1]\,
      O => \count_r[1]_i_1__0_n_0\
    );
\count_r[2]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFF4000FF4000BF"
    )
        port map (
      I0 => m_axi_BVALID,
      I1 => m_axi_AWREADY,
      I2 => is_zero_r_reg_0,
      I3 => \count_r_reg_n_0_[0]\,
      I4 => \count_r_reg_n_0_[2]\,
      I5 => \count_r_reg_n_0_[1]\,
      O => \count_r[2]_i_1__0_n_0\
    );
\count_r[3]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DFFF2000FFBA0045"
    )
        port map (
      I0 => \count_r_reg_n_0_[1]\,
      I1 => m_axi_BVALID,
      I2 => \count_r_reg[3]_0\,
      I3 => \count_r_reg_n_0_[0]\,
      I4 => \count_r_reg_n_0_[3]\,
      I5 => \count_r_reg_n_0_[2]\,
      O => \count_r[3]_i_1__0_n_0\
    );
\count_r[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => m_axi_BVALID,
      I1 => is_zero_r_reg_0,
      I2 => m_axi_AWREADY,
      O => \count_r[4]_i_1_n_0\
    );
\count_r[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAA9"
    )
        port map (
      I0 => \count_r_reg_n_0_[4]\,
      I1 => \count_r_reg_n_0_[3]\,
      I2 => \count_r_reg_n_0_[1]\,
      I3 => \count_r[4]_i_3_n_0\,
      I4 => \count_r_reg_n_0_[0]\,
      I5 => \count_r_reg_n_0_[2]\,
      O => \count_r[4]_i_2_n_0\
    );
\count_r[4]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => is_zero_r_reg_0,
      I1 => m_axi_AWREADY,
      I2 => m_axi_BVALID,
      O => \count_r[4]_i_3_n_0\
    );
\count_r_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count_r[4]_i_1_n_0\,
      D => \count_r[0]_i_1__2_n_0\,
      Q => \count_r_reg_n_0_[0]\,
      R => \count_r_reg[0]_0\
    );
\count_r_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count_r[4]_i_1_n_0\,
      D => \count_r[1]_i_1__0_n_0\,
      Q => \count_r_reg_n_0_[1]\,
      R => \count_r_reg[0]_0\
    );
\count_r_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count_r[4]_i_1_n_0\,
      D => \count_r[2]_i_1__0_n_0\,
      Q => \count_r_reg_n_0_[2]\,
      R => \count_r_reg[0]_0\
    );
\count_r_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count_r[4]_i_1_n_0\,
      D => \count_r[3]_i_1__0_n_0\,
      Q => \count_r_reg_n_0_[3]\,
      R => \count_r_reg[0]_0\
    );
\count_r_reg[4]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \count_r[4]_i_1_n_0\,
      D => \count_r[4]_i_2_n_0\,
      Q => \count_r_reg_n_0_[4]\,
      S => \count_r_reg[0]_0\
    );
\is_zero_r_i_1__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \count_r_reg_n_0_[0]\,
      I1 => \is_zero_r_i_2__1_n_0\,
      O => \is_zero_r_i_1__3_n_0\
    );
\is_zero_r_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3FFFFFFDFFFFFFFD"
    )
        port map (
      I0 => m_axi_BVALID,
      I1 => \count_r_reg_n_0_[4]\,
      I2 => \count_r_reg_n_0_[3]\,
      I3 => \count_r_reg_n_0_[2]\,
      I4 => \count_r_reg_n_0_[1]\,
      I5 => \count_r_reg[3]_0\,
      O => \is_zero_r_i_2__1_n_0\
    );
is_zero_r_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count_r[4]_i_1_n_0\,
      D => \is_zero_r_i_1__3_n_0\,
      Q => stall_aw,
      R => \count_r_reg[0]_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized2\ is
  port (
    leaving_empty0 : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg\ : out STD_LOGIC;
    enb : out STD_LOGIC;
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_1\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \count_value_i_reg[0]_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rd_en : in STD_LOGIC;
    full : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    clr_full : in STD_LOGIC;
    ram_empty_i : in STD_LOGIC;
    \count_value_i_reg[0]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    rd_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized2\ : entity is "xpm_counter_updn";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized2\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized2\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \count_value_i[0]_i_1__1_n_0\ : STD_LOGIC;
  signal \count_value_i[1]_i_1__1_n_0\ : STD_LOGIC;
  signal \count_value_i[2]_i_1__1_n_0\ : STD_LOGIC;
  signal \count_value_i[3]_i_1__1_n_0\ : STD_LOGIC;
  signal \^enb\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_5_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_6_n_0\ : STD_LOGIC;
  signal going_full1 : STD_LOGIC;
  signal \^leaving_empty0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \count_value_i[0]_i_1__1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \count_value_i[1]_i_1__1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \count_value_i[2]_i_1__1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \count_value_i[3]_i_1__1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_3\ : label is "soft_lutpair2";
begin
  Q(3 downto 0) <= \^q\(3 downto 0);
  enb <= \^enb\;
  leaving_empty0 <= \^leaving_empty0\;
\count_value_i[0]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"10EF"
    )
        port map (
      I0 => rd_en,
      I1 => \count_value_i_reg[0]_0\(0),
      I2 => \count_value_i_reg[0]_0\(1),
      I3 => \^q\(0),
      O => \count_value_i[0]_i_1__1_n_0\
    );
\count_value_i[1]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02FFFD00"
    )
        port map (
      I0 => \count_value_i_reg[0]_0\(1),
      I1 => \count_value_i_reg[0]_0\(0),
      I2 => rd_en,
      I3 => \^q\(0),
      I4 => \^q\(1),
      O => \count_value_i[1]_i_1__1_n_0\
    );
\count_value_i[2]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      O => \count_value_i[2]_i_1__1_n_0\
    );
\count_value_i[3]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => \^q\(3),
      O => \count_value_i[3]_i_1__1_n_0\
    );
\count_value_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => \^enb\,
      D => \count_value_i[0]_i_1__1_n_0\,
      Q => \^q\(0),
      R => \count_value_i_reg[0]_1\(0)
    );
\count_value_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => \^enb\,
      D => \count_value_i[1]_i_1__1_n_0\,
      Q => \^q\(1),
      R => \count_value_i_reg[0]_1\(0)
    );
\count_value_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => \^enb\,
      D => \count_value_i[2]_i_1__1_n_0\,
      Q => \^q\(2),
      R => \count_value_i_reg[0]_1\(0)
    );
\count_value_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => \^enb\,
      D => \count_value_i[3]_i_1__1_n_0\,
      Q => \^q\(3),
      R => \count_value_i_reg[0]_1\(0)
    );
\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000003B2A2A2A"
    )
        port map (
      I0 => full,
      I1 => \^enb\,
      I2 => \^leaving_empty0\,
      I3 => going_full1,
      I4 => E(0),
      I5 => clr_full,
      O => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg\
    );
\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"90"
    )
        port map (
      I0 => \^q\(3),
      I1 => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0\(3),
      I2 => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_5_n_0\,
      O => \^leaving_empty0\
    );
\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"90"
    )
        port map (
      I0 => \^q\(3),
      I1 => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_1\(3),
      I2 => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_6_n_0\,
      O => going_full1
    );
\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(0),
      I1 => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0\(0),
      I2 => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0\(2),
      I3 => \^q\(2),
      I4 => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0\(1),
      I5 => \^q\(1),
      O => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_5_n_0\
    );
\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(0),
      I1 => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_1\(0),
      I2 => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_1\(2),
      I3 => \^q\(2),
      I4 => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_1\(1),
      I5 => \^q\(1),
      O => \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_6_n_0\
    );
\gen_sdpram.xpm_memory_base_inst_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00FD"
    )
        port map (
      I0 => \count_value_i_reg[0]_0\(1),
      I1 => \count_value_i_reg[0]_0\(0),
      I2 => rd_en,
      I3 => ram_empty_i,
      O => \^enb\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized2_2\ is
  port (
    ram_empty_i0 : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    enb : in STD_LOGIC;
    leaving_empty0 : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    ram_empty_i : in STD_LOGIC;
    \gen_pntr_flags_cc.ram_empty_i_reg\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \count_value_i_reg[3]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    rd_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized2_2\ : entity is "xpm_counter_updn";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized2_2\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized2_2\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \count_value_i[0]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i[1]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i[2]_i_1_n_0\ : STD_LOGIC;
  signal \count_value_i[3]_i_1_n_0\ : STD_LOGIC;
  signal \gen_pntr_flags_cc.ram_empty_i_i_3_n_0\ : STD_LOGIC;
  signal going_empty1 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \count_value_i[0]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \count_value_i[1]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \count_value_i[2]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \count_value_i[3]_i_1\ : label is "soft_lutpair4";
begin
  Q(3 downto 0) <= \^q\(3 downto 0);
\count_value_i[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      O => \count_value_i[0]_i_1_n_0\
    );
\count_value_i[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      O => \count_value_i[1]_i_1_n_0\
    );
\count_value_i[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      O => \count_value_i[2]_i_1_n_0\
    );
\count_value_i[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => \^q\(3),
      O => \count_value_i[3]_i_1_n_0\
    );
\count_value_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      D => \count_value_i[0]_i_1_n_0\,
      Q => \^q\(0),
      R => \count_value_i_reg[3]_0\(0)
    );
\count_value_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      D => \count_value_i[1]_i_1_n_0\,
      Q => \^q\(1),
      R => \count_value_i_reg[3]_0\(0)
    );
\count_value_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      D => \count_value_i[2]_i_1_n_0\,
      Q => \^q\(2),
      R => \count_value_i_reg[3]_0\(0)
    );
\count_value_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      D => \count_value_i[3]_i_1_n_0\,
      Q => \^q\(3),
      R => \count_value_i_reg[3]_0\(0)
    );
\gen_pntr_flags_cc.ram_empty_i_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0FFF0088"
    )
        port map (
      I0 => enb,
      I1 => going_empty1,
      I2 => leaving_empty0,
      I3 => E(0),
      I4 => ram_empty_i,
      O => ram_empty_i0
    );
\gen_pntr_flags_cc.ram_empty_i_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"90"
    )
        port map (
      I0 => \^q\(3),
      I1 => \gen_pntr_flags_cc.ram_empty_i_reg\(3),
      I2 => \gen_pntr_flags_cc.ram_empty_i_i_3_n_0\,
      O => going_empty1
    );
\gen_pntr_flags_cc.ram_empty_i_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^q\(0),
      I1 => \gen_pntr_flags_cc.ram_empty_i_reg\(0),
      I2 => \gen_pntr_flags_cc.ram_empty_i_reg\(2),
      I3 => \^q\(2),
      I4 => \gen_pntr_flags_cc.ram_empty_i_reg\(1),
      I5 => \^q\(1),
      O => \gen_pntr_flags_cc.ram_empty_i_i_3_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized3\ is
  port (
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \count_value_i_reg[1]_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rd_en : in STD_LOGIC;
    \count_value_i_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    rd_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized3\ : entity is "xpm_counter_updn";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized3\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized3\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \count_value_i[0]_i_1__2_n_0\ : STD_LOGIC;
  signal \count_value_i[1]_i_1__2_n_0\ : STD_LOGIC;
  signal \count_value_i[2]_i_1__2_n_0\ : STD_LOGIC;
  signal \count_value_i[3]_i_1__2_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \count_value_i[2]_i_1__2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \count_value_i[3]_i_1__2\ : label is "soft_lutpair3";
begin
  Q(3 downto 0) <= \^q\(3 downto 0);
\count_value_i[0]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"10EF"
    )
        port map (
      I0 => rd_en,
      I1 => \count_value_i_reg[1]_0\(0),
      I2 => \count_value_i_reg[1]_0\(1),
      I3 => \^q\(0),
      O => \count_value_i[0]_i_1__2_n_0\
    );
\count_value_i[1]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02FFFD00"
    )
        port map (
      I0 => \count_value_i_reg[1]_0\(1),
      I1 => \count_value_i_reg[1]_0\(0),
      I2 => rd_en,
      I3 => \^q\(0),
      I4 => \^q\(1),
      O => \count_value_i[1]_i_1__2_n_0\
    );
\count_value_i[2]_i_1__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      O => \count_value_i[2]_i_1__2_n_0\
    );
\count_value_i[3]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => \^q\(3),
      O => \count_value_i[3]_i_1__2_n_0\
    );
\count_value_i_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      D => \count_value_i[0]_i_1__2_n_0\,
      Q => \^q\(0),
      S => \count_value_i_reg[0]_0\(0)
    );
\count_value_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      D => \count_value_i[1]_i_1__2_n_0\,
      Q => \^q\(1),
      R => \count_value_i_reg[0]_0\(0)
    );
\count_value_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      D => \count_value_i[2]_i_1__2_n_0\,
      Q => \^q\(2),
      R => \count_value_i_reg[0]_0\(0)
    );
\count_value_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      D => \count_value_i[3]_i_1__2_n_0\,
      Q => \^q\(3),
      R => \count_value_i_reg[0]_0\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized3_3\ is
  port (
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \count_value_i_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    rd_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized3_3\ : entity is "xpm_counter_updn";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized3_3\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized3_3\ is
  signal \^q\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \count_value_i[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_value_i[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_value_i[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_value_i[3]_i_1__0_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \count_value_i[2]_i_1__0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \count_value_i[3]_i_1__0\ : label is "soft_lutpair6";
begin
  Q(3 downto 0) <= \^q\(3 downto 0);
\count_value_i[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      O => \count_value_i[0]_i_1__0_n_0\
    );
\count_value_i[1]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      O => \count_value_i[1]_i_1__0_n_0\
    );
\count_value_i[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      O => \count_value_i[2]_i_1__0_n_0\
    );
\count_value_i[3]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => \^q\(3),
      O => \count_value_i[3]_i_1__0_n_0\
    );
\count_value_i_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      D => \count_value_i[0]_i_1__0_n_0\,
      Q => \^q\(0),
      S => \count_value_i_reg[0]_0\(0)
    );
\count_value_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      D => \count_value_i[1]_i_1__0_n_0\,
      Q => \^q\(1),
      R => \count_value_i_reg[0]_0\(0)
    );
\count_value_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      D => \count_value_i[2]_i_1__0_n_0\,
      Q => \^q\(2),
      R => \count_value_i_reg[0]_0\(0)
    );
\count_value_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      D => \count_value_i[3]_i_1__0_n_0\,
      Q => \^q\(3),
      R => \count_value_i_reg[0]_0\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_bit is
  port (
    rst_d1 : out STD_LOGIC;
    clr_full : out STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    rd_clk : in STD_LOGIC;
    rst : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_bit;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_bit is
  signal \^rst_d1\ : STD_LOGIC;
begin
  rst_d1 <= \^rst_d1\;
d_out_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => Q(0),
      Q => \^rst_d1\,
      R => '0'
    );
\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => rst,
      I1 => \^rst_d1\,
      I2 => Q(0),
      O => clr_full
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_rst is
  port (
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    rst : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    full : in STD_LOGIC;
    rst_d1 : in STD_LOGIC;
    rd_clk : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_rst;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_rst is
  signal \^q\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \gen_rst_cc.fifo_wr_rst_cc\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal p_0_in : STD_LOGIC;
  signal \power_on_rst_reg_n_0_[0]\ : STD_LOGIC;
  signal rst_i : STD_LOGIC;
begin
  Q(0) <= \^q\(0);
\gen_rst_cc.fifo_wr_rst_cc[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => p_0_in,
      I1 => rst,
      O => rst_i
    );
\gen_rst_cc.fifo_wr_rst_cc_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => '0',
      Q => \gen_rst_cc.fifo_wr_rst_cc\(0),
      S => rst_i
    );
\gen_rst_cc.fifo_wr_rst_cc_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => \gen_rst_cc.fifo_wr_rst_cc\(0),
      Q => \gen_rst_cc.fifo_wr_rst_cc\(1),
      S => rst_i
    );
\gen_rst_cc.fifo_wr_rst_cc_reg[2]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => \gen_rst_cc.fifo_wr_rst_cc\(1),
      Q => \^q\(0),
      S => rst_i
    );
\gen_sdpram.xpm_memory_base_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => wr_en,
      I1 => full,
      I2 => \^q\(0),
      I3 => rst_d1,
      O => E(0)
    );
\power_on_rst_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => '0',
      Q => \power_on_rst_reg_n_0_[0]\,
      R => '0'
    );
\power_on_rst_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => \power_on_rst_reg_n_0_[0]\,
      Q => p_0_in,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base is
  port (
    sleep : in STD_LOGIC;
    clka : in STD_LOGIC;
    rsta : in STD_LOGIC;
    ena : in STD_LOGIC;
    regcea : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 3 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 127 downto 0 );
    injectsbiterra : in STD_LOGIC;
    injectdbiterra : in STD_LOGIC;
    douta : out STD_LOGIC_VECTOR ( 127 downto 0 );
    sbiterra : out STD_LOGIC;
    dbiterra : out STD_LOGIC;
    clkb : in STD_LOGIC;
    rstb : in STD_LOGIC;
    enb : in STD_LOGIC;
    regceb : in STD_LOGIC;
    web : in STD_LOGIC_VECTOR ( 0 to 0 );
    addrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 127 downto 0 );
    injectsbiterrb : in STD_LOGIC;
    injectdbiterrb : in STD_LOGIC;
    doutb : out STD_LOGIC_VECTOR ( 127 downto 0 );
    sbiterrb : out STD_LOGIC;
    dbiterrb : out STD_LOGIC
  );
  attribute ADDR_WIDTH_A : integer;
  attribute ADDR_WIDTH_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 4;
  attribute ADDR_WIDTH_B : integer;
  attribute ADDR_WIDTH_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 4;
  attribute AUTO_SLEEP_TIME : integer;
  attribute AUTO_SLEEP_TIME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute BYTE_WRITE_WIDTH_A : integer;
  attribute BYTE_WRITE_WIDTH_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 128;
  attribute BYTE_WRITE_WIDTH_B : integer;
  attribute BYTE_WRITE_WIDTH_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 128;
  attribute CASCADE_HEIGHT : integer;
  attribute CASCADE_HEIGHT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute CLOCKING_MODE : integer;
  attribute CLOCKING_MODE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute ECC_MODE : integer;
  attribute ECC_MODE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute MAX_NUM_CHAR : integer;
  attribute MAX_NUM_CHAR of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute MEMORY_INIT_FILE : string;
  attribute MEMORY_INIT_FILE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is "none";
  attribute MEMORY_INIT_PARAM : string;
  attribute MEMORY_INIT_PARAM of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is "";
  attribute MEMORY_OPTIMIZATION : string;
  attribute MEMORY_OPTIMIZATION of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is "true";
  attribute MEMORY_PRIMITIVE : integer;
  attribute MEMORY_PRIMITIVE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 1;
  attribute MEMORY_SIZE : integer;
  attribute MEMORY_SIZE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 2048;
  attribute MEMORY_TYPE : integer;
  attribute MEMORY_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 1;
  attribute MESSAGE_CONTROL : integer;
  attribute MESSAGE_CONTROL of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute NUM_CHAR_LOC : integer;
  attribute NUM_CHAR_LOC of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute P_ECC_MODE : string;
  attribute P_ECC_MODE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is "no_ecc";
  attribute P_ENABLE_BYTE_WRITE_A : integer;
  attribute P_ENABLE_BYTE_WRITE_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute P_ENABLE_BYTE_WRITE_B : integer;
  attribute P_ENABLE_BYTE_WRITE_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute P_MAX_DEPTH_DATA : integer;
  attribute P_MAX_DEPTH_DATA of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 16;
  attribute P_MEMORY_OPT : string;
  attribute P_MEMORY_OPT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is "yes";
  attribute P_MEMORY_PRIMITIVE : string;
  attribute P_MEMORY_PRIMITIVE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is "distributed";
  attribute P_MIN_WIDTH_DATA : integer;
  attribute P_MIN_WIDTH_DATA of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 128;
  attribute P_MIN_WIDTH_DATA_A : integer;
  attribute P_MIN_WIDTH_DATA_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 128;
  attribute P_MIN_WIDTH_DATA_B : integer;
  attribute P_MIN_WIDTH_DATA_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 128;
  attribute P_MIN_WIDTH_DATA_ECC : integer;
  attribute P_MIN_WIDTH_DATA_ECC of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 128;
  attribute P_MIN_WIDTH_DATA_LDW : integer;
  attribute P_MIN_WIDTH_DATA_LDW of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 4;
  attribute P_MIN_WIDTH_DATA_SHFT : integer;
  attribute P_MIN_WIDTH_DATA_SHFT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 128;
  attribute P_NUM_COLS_WRITE_A : integer;
  attribute P_NUM_COLS_WRITE_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 1;
  attribute P_NUM_COLS_WRITE_B : integer;
  attribute P_NUM_COLS_WRITE_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 1;
  attribute P_NUM_ROWS_READ_A : integer;
  attribute P_NUM_ROWS_READ_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 1;
  attribute P_NUM_ROWS_READ_B : integer;
  attribute P_NUM_ROWS_READ_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 1;
  attribute P_NUM_ROWS_WRITE_A : integer;
  attribute P_NUM_ROWS_WRITE_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 1;
  attribute P_NUM_ROWS_WRITE_B : integer;
  attribute P_NUM_ROWS_WRITE_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 1;
  attribute P_SDP_WRITE_MODE : string;
  attribute P_SDP_WRITE_MODE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is "yes";
  attribute P_WIDTH_ADDR_LSB_READ_A : integer;
  attribute P_WIDTH_ADDR_LSB_READ_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute P_WIDTH_ADDR_LSB_READ_B : integer;
  attribute P_WIDTH_ADDR_LSB_READ_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute P_WIDTH_ADDR_LSB_WRITE_A : integer;
  attribute P_WIDTH_ADDR_LSB_WRITE_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute P_WIDTH_ADDR_LSB_WRITE_B : integer;
  attribute P_WIDTH_ADDR_LSB_WRITE_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute P_WIDTH_ADDR_READ_A : integer;
  attribute P_WIDTH_ADDR_READ_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 4;
  attribute P_WIDTH_ADDR_READ_B : integer;
  attribute P_WIDTH_ADDR_READ_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 4;
  attribute P_WIDTH_ADDR_WRITE_A : integer;
  attribute P_WIDTH_ADDR_WRITE_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 4;
  attribute P_WIDTH_ADDR_WRITE_B : integer;
  attribute P_WIDTH_ADDR_WRITE_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 4;
  attribute P_WIDTH_COL_WRITE_A : integer;
  attribute P_WIDTH_COL_WRITE_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 128;
  attribute P_WIDTH_COL_WRITE_B : integer;
  attribute P_WIDTH_COL_WRITE_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 128;
  attribute READ_DATA_WIDTH_A : integer;
  attribute READ_DATA_WIDTH_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 128;
  attribute READ_DATA_WIDTH_B : integer;
  attribute READ_DATA_WIDTH_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 128;
  attribute READ_LATENCY_A : integer;
  attribute READ_LATENCY_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 2;
  attribute READ_LATENCY_B : integer;
  attribute READ_LATENCY_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 2;
  attribute READ_RESET_VALUE_A : string;
  attribute READ_RESET_VALUE_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is "0";
  attribute READ_RESET_VALUE_B : string;
  attribute READ_RESET_VALUE_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is "0";
  attribute RST_MODE_A : string;
  attribute RST_MODE_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is "SYNC";
  attribute RST_MODE_B : string;
  attribute RST_MODE_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is "SYNC";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute USE_EMBEDDED_CONSTRAINT : integer;
  attribute USE_EMBEDDED_CONSTRAINT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute USE_MEM_INIT : integer;
  attribute USE_MEM_INIT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute USE_MEM_INIT_MMI : integer;
  attribute USE_MEM_INIT_MMI of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute WAKEUP_TIME : integer;
  attribute WAKEUP_TIME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute WRITE_DATA_WIDTH_A : integer;
  attribute WRITE_DATA_WIDTH_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 128;
  attribute WRITE_DATA_WIDTH_B : integer;
  attribute WRITE_DATA_WIDTH_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 128;
  attribute WRITE_MODE_A : integer;
  attribute WRITE_MODE_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 2;
  attribute WRITE_MODE_B : integer;
  attribute WRITE_MODE_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 1;
  attribute WRITE_PROTECT : integer;
  attribute WRITE_PROTECT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 1;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is "TRUE";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is "soft";
  attribute rsta_loop_iter : integer;
  attribute rsta_loop_iter of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 128;
  attribute rstb_loop_iter : integer;
  attribute rstb_loop_iter of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 128;
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base is
  signal \<const0>\ : STD_LOGIC;
  signal \gen_rd_b.doutb_reg\ : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal \gen_rd_b.doutb_reg0\ : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_0_13_DOH_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_112_125_DOH_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_126_127_DOB_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_126_127_DOC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_126_127_DOD_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_126_127_DOE_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_126_127_DOF_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_126_127_DOG_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_126_127_DOH_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_14_27_DOH_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_28_41_DOH_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_42_55_DOH_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_56_69_DOH_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_70_83_DOH_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_84_97_DOH_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_98_111_DOH_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute dram_emb_xdc : string;
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[0]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[100]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[101]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[102]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[103]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[104]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[105]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[106]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[107]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[108]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[109]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[10]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[110]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[111]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[112]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[113]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[114]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[115]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[116]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[117]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[118]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[119]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[11]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[120]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[121]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[122]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[123]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[124]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[125]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[126]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[127]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[12]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[13]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[14]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[15]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[16]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[17]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[18]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[19]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[1]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[20]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[21]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[22]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[23]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[24]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[25]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[26]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[27]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[28]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[29]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[2]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[30]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[31]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[32]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[33]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[34]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[35]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[36]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[37]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[38]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[39]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[3]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[40]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[41]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[42]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[43]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[44]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[45]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[46]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[47]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[48]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[49]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[4]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[50]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[51]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[52]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[53]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[54]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[55]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[56]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[57]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[58]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[59]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[5]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[60]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[61]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[62]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[63]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[64]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[65]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[66]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[67]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[68]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[69]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[6]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[70]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[71]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[72]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[73]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[74]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[75]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[76]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[77]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[78]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[79]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[7]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[80]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[81]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[82]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[83]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[84]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[85]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[86]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[87]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[88]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[89]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[8]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[90]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[91]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[92]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[93]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[94]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[95]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[96]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[97]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[98]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[99]\ : label is "no";
  attribute dram_emb_xdc of \gen_rd_b.doutb_reg_reg[9]\ : label is "no";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_a.gen_word_narrow.mem_reg_0_15_0_13\ : label is "";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of \gen_wr_a.gen_word_narrow.mem_reg_0_15_0_13\ : label is 2048;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of \gen_wr_a.gen_word_narrow.mem_reg_0_15_0_13\ : label is "gen_wr_a.gen_word_narrow.mem";
  attribute RTL_RAM_TYPE : string;
  attribute RTL_RAM_TYPE of \gen_wr_a.gen_word_narrow.mem_reg_0_15_0_13\ : label is "RAM_SDP";
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of \gen_wr_a.gen_word_narrow.mem_reg_0_15_0_13\ : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of \gen_wr_a.gen_word_narrow.mem_reg_0_15_0_13\ : label is 15;
  attribute ram_offset : integer;
  attribute ram_offset of \gen_wr_a.gen_word_narrow.mem_reg_0_15_0_13\ : label is 0;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of \gen_wr_a.gen_word_narrow.mem_reg_0_15_0_13\ : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of \gen_wr_a.gen_word_narrow.mem_reg_0_15_0_13\ : label is 13;
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_a.gen_word_narrow.mem_reg_0_15_112_125\ : label is "";
  attribute RTL_RAM_BITS of \gen_wr_a.gen_word_narrow.mem_reg_0_15_112_125\ : label is 2048;
  attribute RTL_RAM_NAME of \gen_wr_a.gen_word_narrow.mem_reg_0_15_112_125\ : label is "gen_wr_a.gen_word_narrow.mem";
  attribute RTL_RAM_TYPE of \gen_wr_a.gen_word_narrow.mem_reg_0_15_112_125\ : label is "RAM_SDP";
  attribute ram_addr_begin of \gen_wr_a.gen_word_narrow.mem_reg_0_15_112_125\ : label is 0;
  attribute ram_addr_end of \gen_wr_a.gen_word_narrow.mem_reg_0_15_112_125\ : label is 15;
  attribute ram_offset of \gen_wr_a.gen_word_narrow.mem_reg_0_15_112_125\ : label is 0;
  attribute ram_slice_begin of \gen_wr_a.gen_word_narrow.mem_reg_0_15_112_125\ : label is 112;
  attribute ram_slice_end of \gen_wr_a.gen_word_narrow.mem_reg_0_15_112_125\ : label is 125;
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_a.gen_word_narrow.mem_reg_0_15_126_127\ : label is "";
  attribute RTL_RAM_BITS of \gen_wr_a.gen_word_narrow.mem_reg_0_15_126_127\ : label is 2048;
  attribute RTL_RAM_NAME of \gen_wr_a.gen_word_narrow.mem_reg_0_15_126_127\ : label is "gen_wr_a.gen_word_narrow.mem";
  attribute RTL_RAM_TYPE of \gen_wr_a.gen_word_narrow.mem_reg_0_15_126_127\ : label is "RAM_SDP";
  attribute ram_addr_begin of \gen_wr_a.gen_word_narrow.mem_reg_0_15_126_127\ : label is 0;
  attribute ram_addr_end of \gen_wr_a.gen_word_narrow.mem_reg_0_15_126_127\ : label is 15;
  attribute ram_offset of \gen_wr_a.gen_word_narrow.mem_reg_0_15_126_127\ : label is 0;
  attribute ram_slice_begin of \gen_wr_a.gen_word_narrow.mem_reg_0_15_126_127\ : label is 126;
  attribute ram_slice_end of \gen_wr_a.gen_word_narrow.mem_reg_0_15_126_127\ : label is 127;
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_a.gen_word_narrow.mem_reg_0_15_14_27\ : label is "";
  attribute RTL_RAM_BITS of \gen_wr_a.gen_word_narrow.mem_reg_0_15_14_27\ : label is 2048;
  attribute RTL_RAM_NAME of \gen_wr_a.gen_word_narrow.mem_reg_0_15_14_27\ : label is "gen_wr_a.gen_word_narrow.mem";
  attribute RTL_RAM_TYPE of \gen_wr_a.gen_word_narrow.mem_reg_0_15_14_27\ : label is "RAM_SDP";
  attribute ram_addr_begin of \gen_wr_a.gen_word_narrow.mem_reg_0_15_14_27\ : label is 0;
  attribute ram_addr_end of \gen_wr_a.gen_word_narrow.mem_reg_0_15_14_27\ : label is 15;
  attribute ram_offset of \gen_wr_a.gen_word_narrow.mem_reg_0_15_14_27\ : label is 0;
  attribute ram_slice_begin of \gen_wr_a.gen_word_narrow.mem_reg_0_15_14_27\ : label is 14;
  attribute ram_slice_end of \gen_wr_a.gen_word_narrow.mem_reg_0_15_14_27\ : label is 27;
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_a.gen_word_narrow.mem_reg_0_15_28_41\ : label is "";
  attribute RTL_RAM_BITS of \gen_wr_a.gen_word_narrow.mem_reg_0_15_28_41\ : label is 2048;
  attribute RTL_RAM_NAME of \gen_wr_a.gen_word_narrow.mem_reg_0_15_28_41\ : label is "gen_wr_a.gen_word_narrow.mem";
  attribute RTL_RAM_TYPE of \gen_wr_a.gen_word_narrow.mem_reg_0_15_28_41\ : label is "RAM_SDP";
  attribute ram_addr_begin of \gen_wr_a.gen_word_narrow.mem_reg_0_15_28_41\ : label is 0;
  attribute ram_addr_end of \gen_wr_a.gen_word_narrow.mem_reg_0_15_28_41\ : label is 15;
  attribute ram_offset of \gen_wr_a.gen_word_narrow.mem_reg_0_15_28_41\ : label is 0;
  attribute ram_slice_begin of \gen_wr_a.gen_word_narrow.mem_reg_0_15_28_41\ : label is 28;
  attribute ram_slice_end of \gen_wr_a.gen_word_narrow.mem_reg_0_15_28_41\ : label is 41;
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_a.gen_word_narrow.mem_reg_0_15_42_55\ : label is "";
  attribute RTL_RAM_BITS of \gen_wr_a.gen_word_narrow.mem_reg_0_15_42_55\ : label is 2048;
  attribute RTL_RAM_NAME of \gen_wr_a.gen_word_narrow.mem_reg_0_15_42_55\ : label is "gen_wr_a.gen_word_narrow.mem";
  attribute RTL_RAM_TYPE of \gen_wr_a.gen_word_narrow.mem_reg_0_15_42_55\ : label is "RAM_SDP";
  attribute ram_addr_begin of \gen_wr_a.gen_word_narrow.mem_reg_0_15_42_55\ : label is 0;
  attribute ram_addr_end of \gen_wr_a.gen_word_narrow.mem_reg_0_15_42_55\ : label is 15;
  attribute ram_offset of \gen_wr_a.gen_word_narrow.mem_reg_0_15_42_55\ : label is 0;
  attribute ram_slice_begin of \gen_wr_a.gen_word_narrow.mem_reg_0_15_42_55\ : label is 42;
  attribute ram_slice_end of \gen_wr_a.gen_word_narrow.mem_reg_0_15_42_55\ : label is 55;
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_a.gen_word_narrow.mem_reg_0_15_56_69\ : label is "";
  attribute RTL_RAM_BITS of \gen_wr_a.gen_word_narrow.mem_reg_0_15_56_69\ : label is 2048;
  attribute RTL_RAM_NAME of \gen_wr_a.gen_word_narrow.mem_reg_0_15_56_69\ : label is "gen_wr_a.gen_word_narrow.mem";
  attribute RTL_RAM_TYPE of \gen_wr_a.gen_word_narrow.mem_reg_0_15_56_69\ : label is "RAM_SDP";
  attribute ram_addr_begin of \gen_wr_a.gen_word_narrow.mem_reg_0_15_56_69\ : label is 0;
  attribute ram_addr_end of \gen_wr_a.gen_word_narrow.mem_reg_0_15_56_69\ : label is 15;
  attribute ram_offset of \gen_wr_a.gen_word_narrow.mem_reg_0_15_56_69\ : label is 0;
  attribute ram_slice_begin of \gen_wr_a.gen_word_narrow.mem_reg_0_15_56_69\ : label is 56;
  attribute ram_slice_end of \gen_wr_a.gen_word_narrow.mem_reg_0_15_56_69\ : label is 69;
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_a.gen_word_narrow.mem_reg_0_15_70_83\ : label is "";
  attribute RTL_RAM_BITS of \gen_wr_a.gen_word_narrow.mem_reg_0_15_70_83\ : label is 2048;
  attribute RTL_RAM_NAME of \gen_wr_a.gen_word_narrow.mem_reg_0_15_70_83\ : label is "gen_wr_a.gen_word_narrow.mem";
  attribute RTL_RAM_TYPE of \gen_wr_a.gen_word_narrow.mem_reg_0_15_70_83\ : label is "RAM_SDP";
  attribute ram_addr_begin of \gen_wr_a.gen_word_narrow.mem_reg_0_15_70_83\ : label is 0;
  attribute ram_addr_end of \gen_wr_a.gen_word_narrow.mem_reg_0_15_70_83\ : label is 15;
  attribute ram_offset of \gen_wr_a.gen_word_narrow.mem_reg_0_15_70_83\ : label is 0;
  attribute ram_slice_begin of \gen_wr_a.gen_word_narrow.mem_reg_0_15_70_83\ : label is 70;
  attribute ram_slice_end of \gen_wr_a.gen_word_narrow.mem_reg_0_15_70_83\ : label is 83;
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_a.gen_word_narrow.mem_reg_0_15_84_97\ : label is "";
  attribute RTL_RAM_BITS of \gen_wr_a.gen_word_narrow.mem_reg_0_15_84_97\ : label is 2048;
  attribute RTL_RAM_NAME of \gen_wr_a.gen_word_narrow.mem_reg_0_15_84_97\ : label is "gen_wr_a.gen_word_narrow.mem";
  attribute RTL_RAM_TYPE of \gen_wr_a.gen_word_narrow.mem_reg_0_15_84_97\ : label is "RAM_SDP";
  attribute ram_addr_begin of \gen_wr_a.gen_word_narrow.mem_reg_0_15_84_97\ : label is 0;
  attribute ram_addr_end of \gen_wr_a.gen_word_narrow.mem_reg_0_15_84_97\ : label is 15;
  attribute ram_offset of \gen_wr_a.gen_word_narrow.mem_reg_0_15_84_97\ : label is 0;
  attribute ram_slice_begin of \gen_wr_a.gen_word_narrow.mem_reg_0_15_84_97\ : label is 84;
  attribute ram_slice_end of \gen_wr_a.gen_word_narrow.mem_reg_0_15_84_97\ : label is 97;
  attribute METHODOLOGY_DRC_VIOS of \gen_wr_a.gen_word_narrow.mem_reg_0_15_98_111\ : label is "";
  attribute RTL_RAM_BITS of \gen_wr_a.gen_word_narrow.mem_reg_0_15_98_111\ : label is 2048;
  attribute RTL_RAM_NAME of \gen_wr_a.gen_word_narrow.mem_reg_0_15_98_111\ : label is "gen_wr_a.gen_word_narrow.mem";
  attribute RTL_RAM_TYPE of \gen_wr_a.gen_word_narrow.mem_reg_0_15_98_111\ : label is "RAM_SDP";
  attribute ram_addr_begin of \gen_wr_a.gen_word_narrow.mem_reg_0_15_98_111\ : label is 0;
  attribute ram_addr_end of \gen_wr_a.gen_word_narrow.mem_reg_0_15_98_111\ : label is 15;
  attribute ram_offset of \gen_wr_a.gen_word_narrow.mem_reg_0_15_98_111\ : label is 0;
  attribute ram_slice_begin of \gen_wr_a.gen_word_narrow.mem_reg_0_15_98_111\ : label is 98;
  attribute ram_slice_end of \gen_wr_a.gen_word_narrow.mem_reg_0_15_98_111\ : label is 111;
begin
  dbiterra <= \<const0>\;
  dbiterrb <= \<const0>\;
  douta(127) <= \<const0>\;
  douta(126) <= \<const0>\;
  douta(125) <= \<const0>\;
  douta(124) <= \<const0>\;
  douta(123) <= \<const0>\;
  douta(122) <= \<const0>\;
  douta(121) <= \<const0>\;
  douta(120) <= \<const0>\;
  douta(119) <= \<const0>\;
  douta(118) <= \<const0>\;
  douta(117) <= \<const0>\;
  douta(116) <= \<const0>\;
  douta(115) <= \<const0>\;
  douta(114) <= \<const0>\;
  douta(113) <= \<const0>\;
  douta(112) <= \<const0>\;
  douta(111) <= \<const0>\;
  douta(110) <= \<const0>\;
  douta(109) <= \<const0>\;
  douta(108) <= \<const0>\;
  douta(107) <= \<const0>\;
  douta(106) <= \<const0>\;
  douta(105) <= \<const0>\;
  douta(104) <= \<const0>\;
  douta(103) <= \<const0>\;
  douta(102) <= \<const0>\;
  douta(101) <= \<const0>\;
  douta(100) <= \<const0>\;
  douta(99) <= \<const0>\;
  douta(98) <= \<const0>\;
  douta(97) <= \<const0>\;
  douta(96) <= \<const0>\;
  douta(95) <= \<const0>\;
  douta(94) <= \<const0>\;
  douta(93) <= \<const0>\;
  douta(92) <= \<const0>\;
  douta(91) <= \<const0>\;
  douta(90) <= \<const0>\;
  douta(89) <= \<const0>\;
  douta(88) <= \<const0>\;
  douta(87) <= \<const0>\;
  douta(86) <= \<const0>\;
  douta(85) <= \<const0>\;
  douta(84) <= \<const0>\;
  douta(83) <= \<const0>\;
  douta(82) <= \<const0>\;
  douta(81) <= \<const0>\;
  douta(80) <= \<const0>\;
  douta(79) <= \<const0>\;
  douta(78) <= \<const0>\;
  douta(77) <= \<const0>\;
  douta(76) <= \<const0>\;
  douta(75) <= \<const0>\;
  douta(74) <= \<const0>\;
  douta(73) <= \<const0>\;
  douta(72) <= \<const0>\;
  douta(71) <= \<const0>\;
  douta(70) <= \<const0>\;
  douta(69) <= \<const0>\;
  douta(68) <= \<const0>\;
  douta(67) <= \<const0>\;
  douta(66) <= \<const0>\;
  douta(65) <= \<const0>\;
  douta(64) <= \<const0>\;
  douta(63) <= \<const0>\;
  douta(62) <= \<const0>\;
  douta(61) <= \<const0>\;
  douta(60) <= \<const0>\;
  douta(59) <= \<const0>\;
  douta(58) <= \<const0>\;
  douta(57) <= \<const0>\;
  douta(56) <= \<const0>\;
  douta(55) <= \<const0>\;
  douta(54) <= \<const0>\;
  douta(53) <= \<const0>\;
  douta(52) <= \<const0>\;
  douta(51) <= \<const0>\;
  douta(50) <= \<const0>\;
  douta(49) <= \<const0>\;
  douta(48) <= \<const0>\;
  douta(47) <= \<const0>\;
  douta(46) <= \<const0>\;
  douta(45) <= \<const0>\;
  douta(44) <= \<const0>\;
  douta(43) <= \<const0>\;
  douta(42) <= \<const0>\;
  douta(41) <= \<const0>\;
  douta(40) <= \<const0>\;
  douta(39) <= \<const0>\;
  douta(38) <= \<const0>\;
  douta(37) <= \<const0>\;
  douta(36) <= \<const0>\;
  douta(35) <= \<const0>\;
  douta(34) <= \<const0>\;
  douta(33) <= \<const0>\;
  douta(32) <= \<const0>\;
  douta(31) <= \<const0>\;
  douta(30) <= \<const0>\;
  douta(29) <= \<const0>\;
  douta(28) <= \<const0>\;
  douta(27) <= \<const0>\;
  douta(26) <= \<const0>\;
  douta(25) <= \<const0>\;
  douta(24) <= \<const0>\;
  douta(23) <= \<const0>\;
  douta(22) <= \<const0>\;
  douta(21) <= \<const0>\;
  douta(20) <= \<const0>\;
  douta(19) <= \<const0>\;
  douta(18) <= \<const0>\;
  douta(17) <= \<const0>\;
  douta(16) <= \<const0>\;
  douta(15) <= \<const0>\;
  douta(14) <= \<const0>\;
  douta(13) <= \<const0>\;
  douta(12) <= \<const0>\;
  douta(11) <= \<const0>\;
  douta(10) <= \<const0>\;
  douta(9) <= \<const0>\;
  douta(8) <= \<const0>\;
  douta(7) <= \<const0>\;
  douta(6) <= \<const0>\;
  douta(5) <= \<const0>\;
  douta(4) <= \<const0>\;
  douta(3) <= \<const0>\;
  douta(2) <= \<const0>\;
  douta(1) <= \<const0>\;
  douta(0) <= \<const0>\;
  sbiterra <= \<const0>\;
  sbiterrb <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\gen_rd_b.doutb_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(0),
      Q => \gen_rd_b.doutb_reg\(0),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[100]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(100),
      Q => \gen_rd_b.doutb_reg\(100),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[101]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(101),
      Q => \gen_rd_b.doutb_reg\(101),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[102]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(102),
      Q => \gen_rd_b.doutb_reg\(102),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[103]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(103),
      Q => \gen_rd_b.doutb_reg\(103),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[104]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(104),
      Q => \gen_rd_b.doutb_reg\(104),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[105]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(105),
      Q => \gen_rd_b.doutb_reg\(105),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[106]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(106),
      Q => \gen_rd_b.doutb_reg\(106),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[107]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(107),
      Q => \gen_rd_b.doutb_reg\(107),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[108]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(108),
      Q => \gen_rd_b.doutb_reg\(108),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[109]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(109),
      Q => \gen_rd_b.doutb_reg\(109),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(10),
      Q => \gen_rd_b.doutb_reg\(10),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[110]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(110),
      Q => \gen_rd_b.doutb_reg\(110),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[111]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(111),
      Q => \gen_rd_b.doutb_reg\(111),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[112]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(112),
      Q => \gen_rd_b.doutb_reg\(112),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[113]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(113),
      Q => \gen_rd_b.doutb_reg\(113),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[114]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(114),
      Q => \gen_rd_b.doutb_reg\(114),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[115]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(115),
      Q => \gen_rd_b.doutb_reg\(115),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[116]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(116),
      Q => \gen_rd_b.doutb_reg\(116),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[117]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(117),
      Q => \gen_rd_b.doutb_reg\(117),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[118]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(118),
      Q => \gen_rd_b.doutb_reg\(118),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[119]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(119),
      Q => \gen_rd_b.doutb_reg\(119),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(11),
      Q => \gen_rd_b.doutb_reg\(11),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[120]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(120),
      Q => \gen_rd_b.doutb_reg\(120),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[121]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(121),
      Q => \gen_rd_b.doutb_reg\(121),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[122]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(122),
      Q => \gen_rd_b.doutb_reg\(122),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[123]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(123),
      Q => \gen_rd_b.doutb_reg\(123),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[124]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(124),
      Q => \gen_rd_b.doutb_reg\(124),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[125]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(125),
      Q => \gen_rd_b.doutb_reg\(125),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[126]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(126),
      Q => \gen_rd_b.doutb_reg\(126),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[127]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(127),
      Q => \gen_rd_b.doutb_reg\(127),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(12),
      Q => \gen_rd_b.doutb_reg\(12),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(13),
      Q => \gen_rd_b.doutb_reg\(13),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(14),
      Q => \gen_rd_b.doutb_reg\(14),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(15),
      Q => \gen_rd_b.doutb_reg\(15),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(16),
      Q => \gen_rd_b.doutb_reg\(16),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(17),
      Q => \gen_rd_b.doutb_reg\(17),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(18),
      Q => \gen_rd_b.doutb_reg\(18),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(19),
      Q => \gen_rd_b.doutb_reg\(19),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(1),
      Q => \gen_rd_b.doutb_reg\(1),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(20),
      Q => \gen_rd_b.doutb_reg\(20),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(21),
      Q => \gen_rd_b.doutb_reg\(21),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(22),
      Q => \gen_rd_b.doutb_reg\(22),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(23),
      Q => \gen_rd_b.doutb_reg\(23),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(24),
      Q => \gen_rd_b.doutb_reg\(24),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(25),
      Q => \gen_rd_b.doutb_reg\(25),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(26),
      Q => \gen_rd_b.doutb_reg\(26),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(27),
      Q => \gen_rd_b.doutb_reg\(27),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(28),
      Q => \gen_rd_b.doutb_reg\(28),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(29),
      Q => \gen_rd_b.doutb_reg\(29),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(2),
      Q => \gen_rd_b.doutb_reg\(2),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(30),
      Q => \gen_rd_b.doutb_reg\(30),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(31),
      Q => \gen_rd_b.doutb_reg\(31),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[32]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(32),
      Q => \gen_rd_b.doutb_reg\(32),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[33]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(33),
      Q => \gen_rd_b.doutb_reg\(33),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[34]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(34),
      Q => \gen_rd_b.doutb_reg\(34),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[35]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(35),
      Q => \gen_rd_b.doutb_reg\(35),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[36]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(36),
      Q => \gen_rd_b.doutb_reg\(36),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[37]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(37),
      Q => \gen_rd_b.doutb_reg\(37),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[38]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(38),
      Q => \gen_rd_b.doutb_reg\(38),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[39]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(39),
      Q => \gen_rd_b.doutb_reg\(39),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(3),
      Q => \gen_rd_b.doutb_reg\(3),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[40]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(40),
      Q => \gen_rd_b.doutb_reg\(40),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[41]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(41),
      Q => \gen_rd_b.doutb_reg\(41),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[42]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(42),
      Q => \gen_rd_b.doutb_reg\(42),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[43]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(43),
      Q => \gen_rd_b.doutb_reg\(43),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[44]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(44),
      Q => \gen_rd_b.doutb_reg\(44),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[45]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(45),
      Q => \gen_rd_b.doutb_reg\(45),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[46]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(46),
      Q => \gen_rd_b.doutb_reg\(46),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[47]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(47),
      Q => \gen_rd_b.doutb_reg\(47),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[48]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(48),
      Q => \gen_rd_b.doutb_reg\(48),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[49]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(49),
      Q => \gen_rd_b.doutb_reg\(49),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(4),
      Q => \gen_rd_b.doutb_reg\(4),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[50]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(50),
      Q => \gen_rd_b.doutb_reg\(50),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[51]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(51),
      Q => \gen_rd_b.doutb_reg\(51),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[52]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(52),
      Q => \gen_rd_b.doutb_reg\(52),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[53]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(53),
      Q => \gen_rd_b.doutb_reg\(53),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[54]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(54),
      Q => \gen_rd_b.doutb_reg\(54),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[55]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(55),
      Q => \gen_rd_b.doutb_reg\(55),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[56]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(56),
      Q => \gen_rd_b.doutb_reg\(56),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[57]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(57),
      Q => \gen_rd_b.doutb_reg\(57),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[58]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(58),
      Q => \gen_rd_b.doutb_reg\(58),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[59]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(59),
      Q => \gen_rd_b.doutb_reg\(59),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(5),
      Q => \gen_rd_b.doutb_reg\(5),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[60]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(60),
      Q => \gen_rd_b.doutb_reg\(60),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[61]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(61),
      Q => \gen_rd_b.doutb_reg\(61),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[62]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(62),
      Q => \gen_rd_b.doutb_reg\(62),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[63]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(63),
      Q => \gen_rd_b.doutb_reg\(63),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[64]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(64),
      Q => \gen_rd_b.doutb_reg\(64),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[65]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(65),
      Q => \gen_rd_b.doutb_reg\(65),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[66]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(66),
      Q => \gen_rd_b.doutb_reg\(66),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[67]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(67),
      Q => \gen_rd_b.doutb_reg\(67),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[68]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(68),
      Q => \gen_rd_b.doutb_reg\(68),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[69]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(69),
      Q => \gen_rd_b.doutb_reg\(69),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(6),
      Q => \gen_rd_b.doutb_reg\(6),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[70]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(70),
      Q => \gen_rd_b.doutb_reg\(70),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[71]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(71),
      Q => \gen_rd_b.doutb_reg\(71),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[72]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(72),
      Q => \gen_rd_b.doutb_reg\(72),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[73]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(73),
      Q => \gen_rd_b.doutb_reg\(73),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[74]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(74),
      Q => \gen_rd_b.doutb_reg\(74),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[75]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(75),
      Q => \gen_rd_b.doutb_reg\(75),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[76]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(76),
      Q => \gen_rd_b.doutb_reg\(76),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[77]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(77),
      Q => \gen_rd_b.doutb_reg\(77),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[78]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(78),
      Q => \gen_rd_b.doutb_reg\(78),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[79]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(79),
      Q => \gen_rd_b.doutb_reg\(79),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(7),
      Q => \gen_rd_b.doutb_reg\(7),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[80]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(80),
      Q => \gen_rd_b.doutb_reg\(80),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[81]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(81),
      Q => \gen_rd_b.doutb_reg\(81),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[82]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(82),
      Q => \gen_rd_b.doutb_reg\(82),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[83]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(83),
      Q => \gen_rd_b.doutb_reg\(83),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[84]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(84),
      Q => \gen_rd_b.doutb_reg\(84),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[85]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(85),
      Q => \gen_rd_b.doutb_reg\(85),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[86]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(86),
      Q => \gen_rd_b.doutb_reg\(86),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[87]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(87),
      Q => \gen_rd_b.doutb_reg\(87),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[88]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(88),
      Q => \gen_rd_b.doutb_reg\(88),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[89]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(89),
      Q => \gen_rd_b.doutb_reg\(89),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(8),
      Q => \gen_rd_b.doutb_reg\(8),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[90]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(90),
      Q => \gen_rd_b.doutb_reg\(90),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[91]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(91),
      Q => \gen_rd_b.doutb_reg\(91),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[92]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(92),
      Q => \gen_rd_b.doutb_reg\(92),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[93]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(93),
      Q => \gen_rd_b.doutb_reg\(93),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[94]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(94),
      Q => \gen_rd_b.doutb_reg\(94),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[95]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(95),
      Q => \gen_rd_b.doutb_reg\(95),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[96]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(96),
      Q => \gen_rd_b.doutb_reg\(96),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[97]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(97),
      Q => \gen_rd_b.doutb_reg\(97),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[98]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(98),
      Q => \gen_rd_b.doutb_reg\(98),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[99]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(99),
      Q => \gen_rd_b.doutb_reg\(99),
      R => '0'
    );
\gen_rd_b.doutb_reg_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => enb,
      D => \gen_rd_b.doutb_reg0\(9),
      Q => \gen_rd_b.doutb_reg\(9),
      R => '0'
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(0),
      Q => doutb(0),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][100]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(100),
      Q => doutb(100),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][101]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(101),
      Q => doutb(101),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][102]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(102),
      Q => doutb(102),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][103]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(103),
      Q => doutb(103),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][104]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(104),
      Q => doutb(104),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][105]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(105),
      Q => doutb(105),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][106]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(106),
      Q => doutb(106),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][107]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(107),
      Q => doutb(107),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][108]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(108),
      Q => doutb(108),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][109]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(109),
      Q => doutb(109),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(10),
      Q => doutb(10),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][110]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(110),
      Q => doutb(110),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][111]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(111),
      Q => doutb(111),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][112]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(112),
      Q => doutb(112),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][113]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(113),
      Q => doutb(113),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][114]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(114),
      Q => doutb(114),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][115]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(115),
      Q => doutb(115),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][116]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(116),
      Q => doutb(116),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][117]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(117),
      Q => doutb(117),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][118]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(118),
      Q => doutb(118),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][119]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(119),
      Q => doutb(119),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(11),
      Q => doutb(11),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][120]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(120),
      Q => doutb(120),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][121]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(121),
      Q => doutb(121),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][122]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(122),
      Q => doutb(122),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][123]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(123),
      Q => doutb(123),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][124]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(124),
      Q => doutb(124),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][125]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(125),
      Q => doutb(125),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][126]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(126),
      Q => doutb(126),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][127]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(127),
      Q => doutb(127),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(12),
      Q => doutb(12),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(13),
      Q => doutb(13),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(14),
      Q => doutb(14),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(15),
      Q => doutb(15),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(16),
      Q => doutb(16),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(17),
      Q => doutb(17),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(18),
      Q => doutb(18),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(19),
      Q => doutb(19),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(1),
      Q => doutb(1),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(20),
      Q => doutb(20),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(21),
      Q => doutb(21),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(22),
      Q => doutb(22),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(23),
      Q => doutb(23),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(24),
      Q => doutb(24),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(25),
      Q => doutb(25),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(26),
      Q => doutb(26),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(27),
      Q => doutb(27),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(28),
      Q => doutb(28),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(29),
      Q => doutb(29),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(2),
      Q => doutb(2),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(30),
      Q => doutb(30),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(31),
      Q => doutb(31),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][32]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(32),
      Q => doutb(32),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][33]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(33),
      Q => doutb(33),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][34]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(34),
      Q => doutb(34),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][35]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(35),
      Q => doutb(35),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][36]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(36),
      Q => doutb(36),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][37]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(37),
      Q => doutb(37),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][38]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(38),
      Q => doutb(38),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][39]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(39),
      Q => doutb(39),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(3),
      Q => doutb(3),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][40]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(40),
      Q => doutb(40),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][41]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(41),
      Q => doutb(41),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][42]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(42),
      Q => doutb(42),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][43]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(43),
      Q => doutb(43),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][44]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(44),
      Q => doutb(44),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][45]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(45),
      Q => doutb(45),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][46]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(46),
      Q => doutb(46),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][47]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(47),
      Q => doutb(47),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][48]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(48),
      Q => doutb(48),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][49]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(49),
      Q => doutb(49),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(4),
      Q => doutb(4),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][50]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(50),
      Q => doutb(50),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][51]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(51),
      Q => doutb(51),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][52]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(52),
      Q => doutb(52),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][53]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(53),
      Q => doutb(53),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][54]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(54),
      Q => doutb(54),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][55]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(55),
      Q => doutb(55),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][56]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(56),
      Q => doutb(56),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][57]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(57),
      Q => doutb(57),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][58]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(58),
      Q => doutb(58),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][59]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(59),
      Q => doutb(59),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(5),
      Q => doutb(5),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][60]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(60),
      Q => doutb(60),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][61]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(61),
      Q => doutb(61),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][62]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(62),
      Q => doutb(62),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][63]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(63),
      Q => doutb(63),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][64]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(64),
      Q => doutb(64),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][65]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(65),
      Q => doutb(65),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][66]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(66),
      Q => doutb(66),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][67]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(67),
      Q => doutb(67),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][68]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(68),
      Q => doutb(68),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][69]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(69),
      Q => doutb(69),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(6),
      Q => doutb(6),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][70]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(70),
      Q => doutb(70),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][71]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(71),
      Q => doutb(71),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][72]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(72),
      Q => doutb(72),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][73]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(73),
      Q => doutb(73),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][74]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(74),
      Q => doutb(74),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][75]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(75),
      Q => doutb(75),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][76]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(76),
      Q => doutb(76),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][77]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(77),
      Q => doutb(77),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][78]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(78),
      Q => doutb(78),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][79]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(79),
      Q => doutb(79),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(7),
      Q => doutb(7),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][80]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(80),
      Q => doutb(80),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][81]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(81),
      Q => doutb(81),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][82]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(82),
      Q => doutb(82),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][83]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(83),
      Q => doutb(83),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][84]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(84),
      Q => doutb(84),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][85]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(85),
      Q => doutb(85),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][86]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(86),
      Q => doutb(86),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][87]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(87),
      Q => doutb(87),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][88]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(88),
      Q => doutb(88),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][89]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(89),
      Q => doutb(89),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(8),
      Q => doutb(8),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][90]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(90),
      Q => doutb(90),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][91]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(91),
      Q => doutb(91),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][92]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(92),
      Q => doutb(92),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][93]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(93),
      Q => doutb(93),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][94]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(94),
      Q => doutb(94),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][95]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(95),
      Q => doutb(95),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][96]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(96),
      Q => doutb(96),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][97]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(97),
      Q => doutb(97),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][98]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(98),
      Q => doutb(98),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][99]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(99),
      Q => doutb(99),
      R => rstb
    );
\gen_rd_b.gen_doutb_pipe.doutb_pipe_reg[0][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => regceb,
      D => \gen_rd_b.doutb_reg\(9),
      Q => doutb(9),
      R => rstb
    );
\gen_wr_a.gen_word_narrow.mem_reg_0_15_0_13\: unisim.vcomponents.RAM32M16
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000",
      INIT_E => X"0000000000000000",
      INIT_F => X"0000000000000000",
      INIT_G => X"0000000000000000",
      INIT_H => X"0000000000000000"
    )
        port map (
      ADDRA(4) => '0',
      ADDRA(3 downto 0) => addrb(3 downto 0),
      ADDRB(4) => '0',
      ADDRB(3 downto 0) => addrb(3 downto 0),
      ADDRC(4) => '0',
      ADDRC(3 downto 0) => addrb(3 downto 0),
      ADDRD(4) => '0',
      ADDRD(3 downto 0) => addrb(3 downto 0),
      ADDRE(4) => '0',
      ADDRE(3 downto 0) => addrb(3 downto 0),
      ADDRF(4) => '0',
      ADDRF(3 downto 0) => addrb(3 downto 0),
      ADDRG(4) => '0',
      ADDRG(3 downto 0) => addrb(3 downto 0),
      ADDRH(4) => '0',
      ADDRH(3 downto 0) => addra(3 downto 0),
      DIA(1 downto 0) => dina(1 downto 0),
      DIB(1 downto 0) => dina(3 downto 2),
      DIC(1 downto 0) => dina(5 downto 4),
      DID(1 downto 0) => dina(7 downto 6),
      DIE(1 downto 0) => dina(9 downto 8),
      DIF(1 downto 0) => dina(11 downto 10),
      DIG(1 downto 0) => dina(13 downto 12),
      DIH(1 downto 0) => B"00",
      DOA(1 downto 0) => \gen_rd_b.doutb_reg0\(1 downto 0),
      DOB(1 downto 0) => \gen_rd_b.doutb_reg0\(3 downto 2),
      DOC(1 downto 0) => \gen_rd_b.doutb_reg0\(5 downto 4),
      DOD(1 downto 0) => \gen_rd_b.doutb_reg0\(7 downto 6),
      DOE(1 downto 0) => \gen_rd_b.doutb_reg0\(9 downto 8),
      DOF(1 downto 0) => \gen_rd_b.doutb_reg0\(11 downto 10),
      DOG(1 downto 0) => \gen_rd_b.doutb_reg0\(13 downto 12),
      DOH(1 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_0_13_DOH_UNCONNECTED\(1 downto 0),
      WCLK => clka,
      WE => ena
    );
\gen_wr_a.gen_word_narrow.mem_reg_0_15_112_125\: unisim.vcomponents.RAM32M16
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000",
      INIT_E => X"0000000000000000",
      INIT_F => X"0000000000000000",
      INIT_G => X"0000000000000000",
      INIT_H => X"0000000000000000"
    )
        port map (
      ADDRA(4) => '0',
      ADDRA(3 downto 0) => addrb(3 downto 0),
      ADDRB(4) => '0',
      ADDRB(3 downto 0) => addrb(3 downto 0),
      ADDRC(4) => '0',
      ADDRC(3 downto 0) => addrb(3 downto 0),
      ADDRD(4) => '0',
      ADDRD(3 downto 0) => addrb(3 downto 0),
      ADDRE(4) => '0',
      ADDRE(3 downto 0) => addrb(3 downto 0),
      ADDRF(4) => '0',
      ADDRF(3 downto 0) => addrb(3 downto 0),
      ADDRG(4) => '0',
      ADDRG(3 downto 0) => addrb(3 downto 0),
      ADDRH(4) => '0',
      ADDRH(3 downto 0) => addra(3 downto 0),
      DIA(1 downto 0) => dina(113 downto 112),
      DIB(1 downto 0) => dina(115 downto 114),
      DIC(1 downto 0) => dina(117 downto 116),
      DID(1 downto 0) => dina(119 downto 118),
      DIE(1 downto 0) => dina(121 downto 120),
      DIF(1 downto 0) => dina(123 downto 122),
      DIG(1 downto 0) => dina(125 downto 124),
      DIH(1 downto 0) => B"00",
      DOA(1 downto 0) => \gen_rd_b.doutb_reg0\(113 downto 112),
      DOB(1 downto 0) => \gen_rd_b.doutb_reg0\(115 downto 114),
      DOC(1 downto 0) => \gen_rd_b.doutb_reg0\(117 downto 116),
      DOD(1 downto 0) => \gen_rd_b.doutb_reg0\(119 downto 118),
      DOE(1 downto 0) => \gen_rd_b.doutb_reg0\(121 downto 120),
      DOF(1 downto 0) => \gen_rd_b.doutb_reg0\(123 downto 122),
      DOG(1 downto 0) => \gen_rd_b.doutb_reg0\(125 downto 124),
      DOH(1 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_112_125_DOH_UNCONNECTED\(1 downto 0),
      WCLK => clka,
      WE => ena
    );
\gen_wr_a.gen_word_narrow.mem_reg_0_15_126_127\: unisim.vcomponents.RAM32M16
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000",
      INIT_E => X"0000000000000000",
      INIT_F => X"0000000000000000",
      INIT_G => X"0000000000000000",
      INIT_H => X"0000000000000000"
    )
        port map (
      ADDRA(4) => '0',
      ADDRA(3 downto 0) => addrb(3 downto 0),
      ADDRB(4) => '0',
      ADDRB(3 downto 0) => addrb(3 downto 0),
      ADDRC(4) => '0',
      ADDRC(3 downto 0) => addrb(3 downto 0),
      ADDRD(4) => '0',
      ADDRD(3 downto 0) => addrb(3 downto 0),
      ADDRE(4) => '0',
      ADDRE(3 downto 0) => addrb(3 downto 0),
      ADDRF(4) => '0',
      ADDRF(3 downto 0) => addrb(3 downto 0),
      ADDRG(4) => '0',
      ADDRG(3 downto 0) => addrb(3 downto 0),
      ADDRH(4) => '0',
      ADDRH(3 downto 0) => addra(3 downto 0),
      DIA(1 downto 0) => dina(127 downto 126),
      DIB(1 downto 0) => B"00",
      DIC(1 downto 0) => B"00",
      DID(1 downto 0) => B"00",
      DIE(1 downto 0) => B"00",
      DIF(1 downto 0) => B"00",
      DIG(1 downto 0) => B"00",
      DIH(1 downto 0) => B"00",
      DOA(1 downto 0) => \gen_rd_b.doutb_reg0\(127 downto 126),
      DOB(1 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_126_127_DOB_UNCONNECTED\(1 downto 0),
      DOC(1 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_126_127_DOC_UNCONNECTED\(1 downto 0),
      DOD(1 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_126_127_DOD_UNCONNECTED\(1 downto 0),
      DOE(1 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_126_127_DOE_UNCONNECTED\(1 downto 0),
      DOF(1 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_126_127_DOF_UNCONNECTED\(1 downto 0),
      DOG(1 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_126_127_DOG_UNCONNECTED\(1 downto 0),
      DOH(1 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_126_127_DOH_UNCONNECTED\(1 downto 0),
      WCLK => clka,
      WE => ena
    );
\gen_wr_a.gen_word_narrow.mem_reg_0_15_14_27\: unisim.vcomponents.RAM32M16
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000",
      INIT_E => X"0000000000000000",
      INIT_F => X"0000000000000000",
      INIT_G => X"0000000000000000",
      INIT_H => X"0000000000000000"
    )
        port map (
      ADDRA(4) => '0',
      ADDRA(3 downto 0) => addrb(3 downto 0),
      ADDRB(4) => '0',
      ADDRB(3 downto 0) => addrb(3 downto 0),
      ADDRC(4) => '0',
      ADDRC(3 downto 0) => addrb(3 downto 0),
      ADDRD(4) => '0',
      ADDRD(3 downto 0) => addrb(3 downto 0),
      ADDRE(4) => '0',
      ADDRE(3 downto 0) => addrb(3 downto 0),
      ADDRF(4) => '0',
      ADDRF(3 downto 0) => addrb(3 downto 0),
      ADDRG(4) => '0',
      ADDRG(3 downto 0) => addrb(3 downto 0),
      ADDRH(4) => '0',
      ADDRH(3 downto 0) => addra(3 downto 0),
      DIA(1 downto 0) => dina(15 downto 14),
      DIB(1 downto 0) => dina(17 downto 16),
      DIC(1 downto 0) => dina(19 downto 18),
      DID(1 downto 0) => dina(21 downto 20),
      DIE(1 downto 0) => dina(23 downto 22),
      DIF(1 downto 0) => dina(25 downto 24),
      DIG(1 downto 0) => dina(27 downto 26),
      DIH(1 downto 0) => B"00",
      DOA(1 downto 0) => \gen_rd_b.doutb_reg0\(15 downto 14),
      DOB(1 downto 0) => \gen_rd_b.doutb_reg0\(17 downto 16),
      DOC(1 downto 0) => \gen_rd_b.doutb_reg0\(19 downto 18),
      DOD(1 downto 0) => \gen_rd_b.doutb_reg0\(21 downto 20),
      DOE(1 downto 0) => \gen_rd_b.doutb_reg0\(23 downto 22),
      DOF(1 downto 0) => \gen_rd_b.doutb_reg0\(25 downto 24),
      DOG(1 downto 0) => \gen_rd_b.doutb_reg0\(27 downto 26),
      DOH(1 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_14_27_DOH_UNCONNECTED\(1 downto 0),
      WCLK => clka,
      WE => ena
    );
\gen_wr_a.gen_word_narrow.mem_reg_0_15_28_41\: unisim.vcomponents.RAM32M16
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000",
      INIT_E => X"0000000000000000",
      INIT_F => X"0000000000000000",
      INIT_G => X"0000000000000000",
      INIT_H => X"0000000000000000"
    )
        port map (
      ADDRA(4) => '0',
      ADDRA(3 downto 0) => addrb(3 downto 0),
      ADDRB(4) => '0',
      ADDRB(3 downto 0) => addrb(3 downto 0),
      ADDRC(4) => '0',
      ADDRC(3 downto 0) => addrb(3 downto 0),
      ADDRD(4) => '0',
      ADDRD(3 downto 0) => addrb(3 downto 0),
      ADDRE(4) => '0',
      ADDRE(3 downto 0) => addrb(3 downto 0),
      ADDRF(4) => '0',
      ADDRF(3 downto 0) => addrb(3 downto 0),
      ADDRG(4) => '0',
      ADDRG(3 downto 0) => addrb(3 downto 0),
      ADDRH(4) => '0',
      ADDRH(3 downto 0) => addra(3 downto 0),
      DIA(1 downto 0) => dina(29 downto 28),
      DIB(1 downto 0) => dina(31 downto 30),
      DIC(1 downto 0) => dina(33 downto 32),
      DID(1 downto 0) => dina(35 downto 34),
      DIE(1 downto 0) => dina(37 downto 36),
      DIF(1 downto 0) => dina(39 downto 38),
      DIG(1 downto 0) => dina(41 downto 40),
      DIH(1 downto 0) => B"00",
      DOA(1 downto 0) => \gen_rd_b.doutb_reg0\(29 downto 28),
      DOB(1 downto 0) => \gen_rd_b.doutb_reg0\(31 downto 30),
      DOC(1 downto 0) => \gen_rd_b.doutb_reg0\(33 downto 32),
      DOD(1 downto 0) => \gen_rd_b.doutb_reg0\(35 downto 34),
      DOE(1 downto 0) => \gen_rd_b.doutb_reg0\(37 downto 36),
      DOF(1 downto 0) => \gen_rd_b.doutb_reg0\(39 downto 38),
      DOG(1 downto 0) => \gen_rd_b.doutb_reg0\(41 downto 40),
      DOH(1 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_28_41_DOH_UNCONNECTED\(1 downto 0),
      WCLK => clka,
      WE => ena
    );
\gen_wr_a.gen_word_narrow.mem_reg_0_15_42_55\: unisim.vcomponents.RAM32M16
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000",
      INIT_E => X"0000000000000000",
      INIT_F => X"0000000000000000",
      INIT_G => X"0000000000000000",
      INIT_H => X"0000000000000000"
    )
        port map (
      ADDRA(4) => '0',
      ADDRA(3 downto 0) => addrb(3 downto 0),
      ADDRB(4) => '0',
      ADDRB(3 downto 0) => addrb(3 downto 0),
      ADDRC(4) => '0',
      ADDRC(3 downto 0) => addrb(3 downto 0),
      ADDRD(4) => '0',
      ADDRD(3 downto 0) => addrb(3 downto 0),
      ADDRE(4) => '0',
      ADDRE(3 downto 0) => addrb(3 downto 0),
      ADDRF(4) => '0',
      ADDRF(3 downto 0) => addrb(3 downto 0),
      ADDRG(4) => '0',
      ADDRG(3 downto 0) => addrb(3 downto 0),
      ADDRH(4) => '0',
      ADDRH(3 downto 0) => addra(3 downto 0),
      DIA(1 downto 0) => dina(43 downto 42),
      DIB(1 downto 0) => dina(45 downto 44),
      DIC(1 downto 0) => dina(47 downto 46),
      DID(1 downto 0) => dina(49 downto 48),
      DIE(1 downto 0) => dina(51 downto 50),
      DIF(1 downto 0) => dina(53 downto 52),
      DIG(1 downto 0) => dina(55 downto 54),
      DIH(1 downto 0) => B"00",
      DOA(1 downto 0) => \gen_rd_b.doutb_reg0\(43 downto 42),
      DOB(1 downto 0) => \gen_rd_b.doutb_reg0\(45 downto 44),
      DOC(1 downto 0) => \gen_rd_b.doutb_reg0\(47 downto 46),
      DOD(1 downto 0) => \gen_rd_b.doutb_reg0\(49 downto 48),
      DOE(1 downto 0) => \gen_rd_b.doutb_reg0\(51 downto 50),
      DOF(1 downto 0) => \gen_rd_b.doutb_reg0\(53 downto 52),
      DOG(1 downto 0) => \gen_rd_b.doutb_reg0\(55 downto 54),
      DOH(1 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_42_55_DOH_UNCONNECTED\(1 downto 0),
      WCLK => clka,
      WE => ena
    );
\gen_wr_a.gen_word_narrow.mem_reg_0_15_56_69\: unisim.vcomponents.RAM32M16
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000",
      INIT_E => X"0000000000000000",
      INIT_F => X"0000000000000000",
      INIT_G => X"0000000000000000",
      INIT_H => X"0000000000000000"
    )
        port map (
      ADDRA(4) => '0',
      ADDRA(3 downto 0) => addrb(3 downto 0),
      ADDRB(4) => '0',
      ADDRB(3 downto 0) => addrb(3 downto 0),
      ADDRC(4) => '0',
      ADDRC(3 downto 0) => addrb(3 downto 0),
      ADDRD(4) => '0',
      ADDRD(3 downto 0) => addrb(3 downto 0),
      ADDRE(4) => '0',
      ADDRE(3 downto 0) => addrb(3 downto 0),
      ADDRF(4) => '0',
      ADDRF(3 downto 0) => addrb(3 downto 0),
      ADDRG(4) => '0',
      ADDRG(3 downto 0) => addrb(3 downto 0),
      ADDRH(4) => '0',
      ADDRH(3 downto 0) => addra(3 downto 0),
      DIA(1 downto 0) => dina(57 downto 56),
      DIB(1 downto 0) => dina(59 downto 58),
      DIC(1 downto 0) => dina(61 downto 60),
      DID(1 downto 0) => dina(63 downto 62),
      DIE(1 downto 0) => dina(65 downto 64),
      DIF(1 downto 0) => dina(67 downto 66),
      DIG(1 downto 0) => dina(69 downto 68),
      DIH(1 downto 0) => B"00",
      DOA(1 downto 0) => \gen_rd_b.doutb_reg0\(57 downto 56),
      DOB(1 downto 0) => \gen_rd_b.doutb_reg0\(59 downto 58),
      DOC(1 downto 0) => \gen_rd_b.doutb_reg0\(61 downto 60),
      DOD(1 downto 0) => \gen_rd_b.doutb_reg0\(63 downto 62),
      DOE(1 downto 0) => \gen_rd_b.doutb_reg0\(65 downto 64),
      DOF(1 downto 0) => \gen_rd_b.doutb_reg0\(67 downto 66),
      DOG(1 downto 0) => \gen_rd_b.doutb_reg0\(69 downto 68),
      DOH(1 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_56_69_DOH_UNCONNECTED\(1 downto 0),
      WCLK => clka,
      WE => ena
    );
\gen_wr_a.gen_word_narrow.mem_reg_0_15_70_83\: unisim.vcomponents.RAM32M16
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000",
      INIT_E => X"0000000000000000",
      INIT_F => X"0000000000000000",
      INIT_G => X"0000000000000000",
      INIT_H => X"0000000000000000"
    )
        port map (
      ADDRA(4) => '0',
      ADDRA(3 downto 0) => addrb(3 downto 0),
      ADDRB(4) => '0',
      ADDRB(3 downto 0) => addrb(3 downto 0),
      ADDRC(4) => '0',
      ADDRC(3 downto 0) => addrb(3 downto 0),
      ADDRD(4) => '0',
      ADDRD(3 downto 0) => addrb(3 downto 0),
      ADDRE(4) => '0',
      ADDRE(3 downto 0) => addrb(3 downto 0),
      ADDRF(4) => '0',
      ADDRF(3 downto 0) => addrb(3 downto 0),
      ADDRG(4) => '0',
      ADDRG(3 downto 0) => addrb(3 downto 0),
      ADDRH(4) => '0',
      ADDRH(3 downto 0) => addra(3 downto 0),
      DIA(1 downto 0) => dina(71 downto 70),
      DIB(1 downto 0) => dina(73 downto 72),
      DIC(1 downto 0) => dina(75 downto 74),
      DID(1 downto 0) => dina(77 downto 76),
      DIE(1 downto 0) => dina(79 downto 78),
      DIF(1 downto 0) => dina(81 downto 80),
      DIG(1 downto 0) => dina(83 downto 82),
      DIH(1 downto 0) => B"00",
      DOA(1 downto 0) => \gen_rd_b.doutb_reg0\(71 downto 70),
      DOB(1 downto 0) => \gen_rd_b.doutb_reg0\(73 downto 72),
      DOC(1 downto 0) => \gen_rd_b.doutb_reg0\(75 downto 74),
      DOD(1 downto 0) => \gen_rd_b.doutb_reg0\(77 downto 76),
      DOE(1 downto 0) => \gen_rd_b.doutb_reg0\(79 downto 78),
      DOF(1 downto 0) => \gen_rd_b.doutb_reg0\(81 downto 80),
      DOG(1 downto 0) => \gen_rd_b.doutb_reg0\(83 downto 82),
      DOH(1 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_70_83_DOH_UNCONNECTED\(1 downto 0),
      WCLK => clka,
      WE => ena
    );
\gen_wr_a.gen_word_narrow.mem_reg_0_15_84_97\: unisim.vcomponents.RAM32M16
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000",
      INIT_E => X"0000000000000000",
      INIT_F => X"0000000000000000",
      INIT_G => X"0000000000000000",
      INIT_H => X"0000000000000000"
    )
        port map (
      ADDRA(4) => '0',
      ADDRA(3 downto 0) => addrb(3 downto 0),
      ADDRB(4) => '0',
      ADDRB(3 downto 0) => addrb(3 downto 0),
      ADDRC(4) => '0',
      ADDRC(3 downto 0) => addrb(3 downto 0),
      ADDRD(4) => '0',
      ADDRD(3 downto 0) => addrb(3 downto 0),
      ADDRE(4) => '0',
      ADDRE(3 downto 0) => addrb(3 downto 0),
      ADDRF(4) => '0',
      ADDRF(3 downto 0) => addrb(3 downto 0),
      ADDRG(4) => '0',
      ADDRG(3 downto 0) => addrb(3 downto 0),
      ADDRH(4) => '0',
      ADDRH(3 downto 0) => addra(3 downto 0),
      DIA(1 downto 0) => dina(85 downto 84),
      DIB(1 downto 0) => dina(87 downto 86),
      DIC(1 downto 0) => dina(89 downto 88),
      DID(1 downto 0) => dina(91 downto 90),
      DIE(1 downto 0) => dina(93 downto 92),
      DIF(1 downto 0) => dina(95 downto 94),
      DIG(1 downto 0) => dina(97 downto 96),
      DIH(1 downto 0) => B"00",
      DOA(1 downto 0) => \gen_rd_b.doutb_reg0\(85 downto 84),
      DOB(1 downto 0) => \gen_rd_b.doutb_reg0\(87 downto 86),
      DOC(1 downto 0) => \gen_rd_b.doutb_reg0\(89 downto 88),
      DOD(1 downto 0) => \gen_rd_b.doutb_reg0\(91 downto 90),
      DOE(1 downto 0) => \gen_rd_b.doutb_reg0\(93 downto 92),
      DOF(1 downto 0) => \gen_rd_b.doutb_reg0\(95 downto 94),
      DOG(1 downto 0) => \gen_rd_b.doutb_reg0\(97 downto 96),
      DOH(1 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_84_97_DOH_UNCONNECTED\(1 downto 0),
      WCLK => clka,
      WE => ena
    );
\gen_wr_a.gen_word_narrow.mem_reg_0_15_98_111\: unisim.vcomponents.RAM32M16
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000",
      INIT_E => X"0000000000000000",
      INIT_F => X"0000000000000000",
      INIT_G => X"0000000000000000",
      INIT_H => X"0000000000000000"
    )
        port map (
      ADDRA(4) => '0',
      ADDRA(3 downto 0) => addrb(3 downto 0),
      ADDRB(4) => '0',
      ADDRB(3 downto 0) => addrb(3 downto 0),
      ADDRC(4) => '0',
      ADDRC(3 downto 0) => addrb(3 downto 0),
      ADDRD(4) => '0',
      ADDRD(3 downto 0) => addrb(3 downto 0),
      ADDRE(4) => '0',
      ADDRE(3 downto 0) => addrb(3 downto 0),
      ADDRF(4) => '0',
      ADDRF(3 downto 0) => addrb(3 downto 0),
      ADDRG(4) => '0',
      ADDRG(3 downto 0) => addrb(3 downto 0),
      ADDRH(4) => '0',
      ADDRH(3 downto 0) => addra(3 downto 0),
      DIA(1 downto 0) => dina(99 downto 98),
      DIB(1 downto 0) => dina(101 downto 100),
      DIC(1 downto 0) => dina(103 downto 102),
      DID(1 downto 0) => dina(105 downto 104),
      DIE(1 downto 0) => dina(107 downto 106),
      DIF(1 downto 0) => dina(109 downto 108),
      DIG(1 downto 0) => dina(111 downto 110),
      DIH(1 downto 0) => B"00",
      DOA(1 downto 0) => \gen_rd_b.doutb_reg0\(99 downto 98),
      DOB(1 downto 0) => \gen_rd_b.doutb_reg0\(101 downto 100),
      DOC(1 downto 0) => \gen_rd_b.doutb_reg0\(103 downto 102),
      DOD(1 downto 0) => \gen_rd_b.doutb_reg0\(105 downto 104),
      DOE(1 downto 0) => \gen_rd_b.doutb_reg0\(107 downto 106),
      DOF(1 downto 0) => \gen_rd_b.doutb_reg0\(109 downto 108),
      DOG(1 downto 0) => \gen_rd_b.doutb_reg0\(111 downto 110),
      DOH(1 downto 0) => \NLW_gen_wr_a.gen_word_narrow.mem_reg_0_15_98_111_DOH_UNCONNECTED\(1 downto 0),
      WCLK => clka,
      WE => ena
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base is
  port (
    sleep : in STD_LOGIC;
    rst : in STD_LOGIC;
    wr_clk : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 127 downto 0 );
    full : out STD_LOGIC;
    full_n : out STD_LOGIC;
    prog_full : out STD_LOGIC;
    wr_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    overflow : out STD_LOGIC;
    wr_rst_busy : out STD_LOGIC;
    almost_full : out STD_LOGIC;
    wr_ack : out STD_LOGIC;
    rd_clk : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 127 downto 0 );
    empty : out STD_LOGIC;
    prog_empty : out STD_LOGIC;
    rd_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    underflow : out STD_LOGIC;
    rd_rst_busy : out STD_LOGIC;
    almost_empty : out STD_LOGIC;
    data_valid : out STD_LOGIC;
    injectsbiterr : in STD_LOGIC;
    injectdbiterr : in STD_LOGIC;
    sbiterr : out STD_LOGIC;
    dbiterr : out STD_LOGIC
  );
  attribute CASCADE_HEIGHT : integer;
  attribute CASCADE_HEIGHT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 0;
  attribute CDC_DEST_SYNC_FF : integer;
  attribute CDC_DEST_SYNC_FF of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 2;
  attribute COMMON_CLOCK : integer;
  attribute COMMON_CLOCK of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 1;
  attribute DOUT_RESET_VALUE : string;
  attribute DOUT_RESET_VALUE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is "0";
  attribute ECC_MODE : integer;
  attribute ECC_MODE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 0;
  attribute ENABLE_ECC : integer;
  attribute ENABLE_ECC of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 0;
  attribute EN_ADV_FEATURE : string;
  attribute EN_ADV_FEATURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is "16'b0001111100011111";
  attribute EN_AE : string;
  attribute EN_AE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is "1'b1";
  attribute EN_AF : string;
  attribute EN_AF of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is "1'b1";
  attribute EN_DVLD : string;
  attribute EN_DVLD of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is "1'b1";
  attribute EN_OF : string;
  attribute EN_OF of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is "1'b1";
  attribute EN_PE : string;
  attribute EN_PE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is "1'b1";
  attribute EN_PF : string;
  attribute EN_PF of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is "1'b1";
  attribute EN_RDC : string;
  attribute EN_RDC of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is "1'b1";
  attribute EN_UF : string;
  attribute EN_UF of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is "1'b1";
  attribute EN_WACK : string;
  attribute EN_WACK of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is "1'b1";
  attribute EN_WDC : string;
  attribute EN_WDC of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is "1'b1";
  attribute FG_EQ_ASYM_DOUT : string;
  attribute FG_EQ_ASYM_DOUT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is "1'b0";
  attribute FIFO_MEMORY_TYPE : integer;
  attribute FIFO_MEMORY_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 1;
  attribute FIFO_MEM_TYPE : integer;
  attribute FIFO_MEM_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 1;
  attribute FIFO_READ_DEPTH : integer;
  attribute FIFO_READ_DEPTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 16;
  attribute FIFO_READ_LATENCY : integer;
  attribute FIFO_READ_LATENCY of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 1;
  attribute FIFO_SIZE : integer;
  attribute FIFO_SIZE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 2048;
  attribute FIFO_WRITE_DEPTH : integer;
  attribute FIFO_WRITE_DEPTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 16;
  attribute FULL_RESET_VALUE : integer;
  attribute FULL_RESET_VALUE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 1;
  attribute FULL_RST_VAL : string;
  attribute FULL_RST_VAL of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is "1'b1";
  attribute PE_THRESH_ADJ : integer;
  attribute PE_THRESH_ADJ of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 7;
  attribute PE_THRESH_MAX : integer;
  attribute PE_THRESH_MAX of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 11;
  attribute PE_THRESH_MIN : integer;
  attribute PE_THRESH_MIN of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 5;
  attribute PF_THRESH_ADJ : integer;
  attribute PF_THRESH_ADJ of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 8;
  attribute PF_THRESH_MAX : integer;
  attribute PF_THRESH_MAX of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 11;
  attribute PF_THRESH_MIN : integer;
  attribute PF_THRESH_MIN of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 5;
  attribute PROG_EMPTY_THRESH : integer;
  attribute PROG_EMPTY_THRESH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 9;
  attribute PROG_FULL_THRESH : integer;
  attribute PROG_FULL_THRESH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 10;
  attribute RD_DATA_COUNT_WIDTH : integer;
  attribute RD_DATA_COUNT_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 5;
  attribute RD_DC_WIDTH_EXT : integer;
  attribute RD_DC_WIDTH_EXT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 5;
  attribute RD_LATENCY : integer;
  attribute RD_LATENCY of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 2;
  attribute RD_MODE : integer;
  attribute RD_MODE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 1;
  attribute RD_PNTR_WIDTH : integer;
  attribute RD_PNTR_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 4;
  attribute READ_DATA_WIDTH : integer;
  attribute READ_DATA_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 128;
  attribute READ_MODE : integer;
  attribute READ_MODE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 1;
  attribute READ_MODE_LL : integer;
  attribute READ_MODE_LL of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 1;
  attribute RELATED_CLOCKS : integer;
  attribute RELATED_CLOCKS of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 0;
  attribute REMOVE_WR_RD_PROT_LOGIC : integer;
  attribute REMOVE_WR_RD_PROT_LOGIC of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 0;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 0;
  attribute USE_ADV_FEATURES : string;
  attribute USE_ADV_FEATURES of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is "1F1F";
  attribute VERSION : integer;
  attribute VERSION of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 0;
  attribute WAKEUP_TIME : integer;
  attribute WAKEUP_TIME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 0;
  attribute WIDTH_RATIO : integer;
  attribute WIDTH_RATIO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 1;
  attribute WRITE_DATA_WIDTH : integer;
  attribute WRITE_DATA_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 128;
  attribute WR_DATA_COUNT_WIDTH : integer;
  attribute WR_DATA_COUNT_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 5;
  attribute WR_DC_WIDTH_EXT : integer;
  attribute WR_DC_WIDTH_EXT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 5;
  attribute WR_DEPTH_LOG : integer;
  attribute WR_DEPTH_LOG of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 4;
  attribute WR_PNTR_WIDTH : integer;
  attribute WR_PNTR_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 4;
  attribute WR_RD_RATIO : integer;
  attribute WR_RD_RATIO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 0;
  attribute WR_WIDTH_LOG : integer;
  attribute WR_WIDTH_LOG of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 7;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is "TRUE";
  attribute both_stages_valid : integer;
  attribute both_stages_valid of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 3;
  attribute invalid : integer;
  attribute invalid of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 0;
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is "soft";
  attribute stage1_valid : integer;
  attribute stage1_valid of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 2;
  attribute stage2_valid : integer;
  attribute stage2_valid of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base : entity is 1;
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base is
  signal \<const0>\ : STD_LOGIC;
  signal clr_full : STD_LOGIC;
  signal curr_fwft_state : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal data_valid_fwft1 : STD_LOGIC;
  signal \^full\ : STD_LOGIC;
  signal \gen_fwft.empty_fwft_i_reg_n_0\ : STD_LOGIC;
  signal \gen_fwft.gdvld_fwft.data_valid_fwft_i_1_n_0\ : STD_LOGIC;
  signal \gen_fwft.ram_regout_en\ : STD_LOGIC;
  signal leaving_empty0 : STD_LOGIC;
  signal \next_fwft_state__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ram_empty_i : STD_LOGIC;
  signal ram_empty_i0 : STD_LOGIC;
  signal ram_wr_en_pf : STD_LOGIC;
  signal rd_pntr_ext : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal rdp_inst_n_5 : STD_LOGIC;
  signal rdp_inst_n_6 : STD_LOGIC;
  signal rdpp1_inst_n_0 : STD_LOGIC;
  signal rdpp1_inst_n_1 : STD_LOGIC;
  signal rdpp1_inst_n_2 : STD_LOGIC;
  signal rdpp1_inst_n_3 : STD_LOGIC;
  signal rst_d1 : STD_LOGIC;
  signal wr_pntr_ext : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal wrpp1_inst_n_0 : STD_LOGIC;
  signal wrpp1_inst_n_1 : STD_LOGIC;
  signal wrpp1_inst_n_2 : STD_LOGIC;
  signal wrpp1_inst_n_3 : STD_LOGIC;
  signal xpm_fifo_rst_inst_n_1 : STD_LOGIC;
  signal \NLW_gen_sdpram.xpm_memory_base_inst_dbiterra_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_sdpram.xpm_memory_base_inst_dbiterrb_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_sdpram.xpm_memory_base_inst_sbiterra_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_sdpram.xpm_memory_base_inst_sbiterrb_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_gen_sdpram.xpm_memory_base_inst_douta_UNCONNECTED\ : STD_LOGIC_VECTOR ( 127 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_gen_fwft.curr_fwft_state[0]_i_1\ : label is "soft_lutpair7";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_gen_fwft.curr_fwft_state_reg[0]\ : label is "invalid:00,stage1_valid:01,both_stages_valid:10,stage2_valid:11";
  attribute FSM_ENCODED_STATES of \FSM_sequential_gen_fwft.curr_fwft_state_reg[1]\ : label is "invalid:00,stage1_valid:01,both_stages_valid:10,stage2_valid:11";
  attribute SOFT_HLUTNM of \gen_fwft.empty_fwft_i_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \gen_fwft.gdvld_fwft.data_valid_fwft_i_1\ : label is "soft_lutpair7";
  attribute ADDR_WIDTH_A : integer;
  attribute ADDR_WIDTH_A of \gen_sdpram.xpm_memory_base_inst\ : label is 4;
  attribute ADDR_WIDTH_B : integer;
  attribute ADDR_WIDTH_B of \gen_sdpram.xpm_memory_base_inst\ : label is 4;
  attribute AUTO_SLEEP_TIME : integer;
  attribute AUTO_SLEEP_TIME of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute BYTE_WRITE_WIDTH_A : integer;
  attribute BYTE_WRITE_WIDTH_A of \gen_sdpram.xpm_memory_base_inst\ : label is 128;
  attribute BYTE_WRITE_WIDTH_B : integer;
  attribute BYTE_WRITE_WIDTH_B of \gen_sdpram.xpm_memory_base_inst\ : label is 128;
  attribute CASCADE_HEIGHT of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute CLOCKING_MODE : integer;
  attribute CLOCKING_MODE of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute ECC_MODE of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute KEEP_HIERARCHY of \gen_sdpram.xpm_memory_base_inst\ : label is "soft";
  attribute MAX_NUM_CHAR : integer;
  attribute MAX_NUM_CHAR of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute MEMORY_INIT_FILE : string;
  attribute MEMORY_INIT_FILE of \gen_sdpram.xpm_memory_base_inst\ : label is "none";
  attribute MEMORY_INIT_PARAM : string;
  attribute MEMORY_INIT_PARAM of \gen_sdpram.xpm_memory_base_inst\ : label is "";
  attribute MEMORY_OPTIMIZATION : string;
  attribute MEMORY_OPTIMIZATION of \gen_sdpram.xpm_memory_base_inst\ : label is "true";
  attribute MEMORY_PRIMITIVE : integer;
  attribute MEMORY_PRIMITIVE of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute MEMORY_SIZE : integer;
  attribute MEMORY_SIZE of \gen_sdpram.xpm_memory_base_inst\ : label is 2048;
  attribute MEMORY_TYPE : integer;
  attribute MEMORY_TYPE of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute MESSAGE_CONTROL : integer;
  attribute MESSAGE_CONTROL of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute NUM_CHAR_LOC : integer;
  attribute NUM_CHAR_LOC of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute P_ECC_MODE : string;
  attribute P_ECC_MODE of \gen_sdpram.xpm_memory_base_inst\ : label is "no_ecc";
  attribute P_ENABLE_BYTE_WRITE_A : integer;
  attribute P_ENABLE_BYTE_WRITE_A of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute P_ENABLE_BYTE_WRITE_B : integer;
  attribute P_ENABLE_BYTE_WRITE_B of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute P_MAX_DEPTH_DATA : integer;
  attribute P_MAX_DEPTH_DATA of \gen_sdpram.xpm_memory_base_inst\ : label is 16;
  attribute P_MEMORY_OPT : string;
  attribute P_MEMORY_OPT of \gen_sdpram.xpm_memory_base_inst\ : label is "yes";
  attribute P_MEMORY_PRIMITIVE : string;
  attribute P_MEMORY_PRIMITIVE of \gen_sdpram.xpm_memory_base_inst\ : label is "distributed";
  attribute P_MIN_WIDTH_DATA : integer;
  attribute P_MIN_WIDTH_DATA of \gen_sdpram.xpm_memory_base_inst\ : label is 128;
  attribute P_MIN_WIDTH_DATA_A : integer;
  attribute P_MIN_WIDTH_DATA_A of \gen_sdpram.xpm_memory_base_inst\ : label is 128;
  attribute P_MIN_WIDTH_DATA_B : integer;
  attribute P_MIN_WIDTH_DATA_B of \gen_sdpram.xpm_memory_base_inst\ : label is 128;
  attribute P_MIN_WIDTH_DATA_ECC : integer;
  attribute P_MIN_WIDTH_DATA_ECC of \gen_sdpram.xpm_memory_base_inst\ : label is 128;
  attribute P_MIN_WIDTH_DATA_LDW : integer;
  attribute P_MIN_WIDTH_DATA_LDW of \gen_sdpram.xpm_memory_base_inst\ : label is 4;
  attribute P_MIN_WIDTH_DATA_SHFT : integer;
  attribute P_MIN_WIDTH_DATA_SHFT of \gen_sdpram.xpm_memory_base_inst\ : label is 128;
  attribute P_NUM_COLS_WRITE_A : integer;
  attribute P_NUM_COLS_WRITE_A of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute P_NUM_COLS_WRITE_B : integer;
  attribute P_NUM_COLS_WRITE_B of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute P_NUM_ROWS_READ_A : integer;
  attribute P_NUM_ROWS_READ_A of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute P_NUM_ROWS_READ_B : integer;
  attribute P_NUM_ROWS_READ_B of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute P_NUM_ROWS_WRITE_A : integer;
  attribute P_NUM_ROWS_WRITE_A of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute P_NUM_ROWS_WRITE_B : integer;
  attribute P_NUM_ROWS_WRITE_B of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute P_SDP_WRITE_MODE : string;
  attribute P_SDP_WRITE_MODE of \gen_sdpram.xpm_memory_base_inst\ : label is "yes";
  attribute P_WIDTH_ADDR_LSB_READ_A : integer;
  attribute P_WIDTH_ADDR_LSB_READ_A of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute P_WIDTH_ADDR_LSB_READ_B : integer;
  attribute P_WIDTH_ADDR_LSB_READ_B of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute P_WIDTH_ADDR_LSB_WRITE_A : integer;
  attribute P_WIDTH_ADDR_LSB_WRITE_A of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute P_WIDTH_ADDR_LSB_WRITE_B : integer;
  attribute P_WIDTH_ADDR_LSB_WRITE_B of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute P_WIDTH_ADDR_READ_A : integer;
  attribute P_WIDTH_ADDR_READ_A of \gen_sdpram.xpm_memory_base_inst\ : label is 4;
  attribute P_WIDTH_ADDR_READ_B : integer;
  attribute P_WIDTH_ADDR_READ_B of \gen_sdpram.xpm_memory_base_inst\ : label is 4;
  attribute P_WIDTH_ADDR_WRITE_A : integer;
  attribute P_WIDTH_ADDR_WRITE_A of \gen_sdpram.xpm_memory_base_inst\ : label is 4;
  attribute P_WIDTH_ADDR_WRITE_B : integer;
  attribute P_WIDTH_ADDR_WRITE_B of \gen_sdpram.xpm_memory_base_inst\ : label is 4;
  attribute P_WIDTH_COL_WRITE_A : integer;
  attribute P_WIDTH_COL_WRITE_A of \gen_sdpram.xpm_memory_base_inst\ : label is 128;
  attribute P_WIDTH_COL_WRITE_B : integer;
  attribute P_WIDTH_COL_WRITE_B of \gen_sdpram.xpm_memory_base_inst\ : label is 128;
  attribute READ_DATA_WIDTH_A : integer;
  attribute READ_DATA_WIDTH_A of \gen_sdpram.xpm_memory_base_inst\ : label is 128;
  attribute READ_DATA_WIDTH_B : integer;
  attribute READ_DATA_WIDTH_B of \gen_sdpram.xpm_memory_base_inst\ : label is 128;
  attribute READ_LATENCY_A : integer;
  attribute READ_LATENCY_A of \gen_sdpram.xpm_memory_base_inst\ : label is 2;
  attribute READ_LATENCY_B : integer;
  attribute READ_LATENCY_B of \gen_sdpram.xpm_memory_base_inst\ : label is 2;
  attribute READ_RESET_VALUE_A : string;
  attribute READ_RESET_VALUE_A of \gen_sdpram.xpm_memory_base_inst\ : label is "0";
  attribute READ_RESET_VALUE_B : string;
  attribute READ_RESET_VALUE_B of \gen_sdpram.xpm_memory_base_inst\ : label is "0";
  attribute RST_MODE_A : string;
  attribute RST_MODE_A of \gen_sdpram.xpm_memory_base_inst\ : label is "SYNC";
  attribute RST_MODE_B : string;
  attribute RST_MODE_B of \gen_sdpram.xpm_memory_base_inst\ : label is "SYNC";
  attribute SIM_ASSERT_CHK of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute USE_EMBEDDED_CONSTRAINT : integer;
  attribute USE_EMBEDDED_CONSTRAINT of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute USE_MEM_INIT : integer;
  attribute USE_MEM_INIT of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute USE_MEM_INIT_MMI : integer;
  attribute USE_MEM_INIT_MMI of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute VERSION of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute WAKEUP_TIME of \gen_sdpram.xpm_memory_base_inst\ : label is 0;
  attribute WRITE_DATA_WIDTH_A : integer;
  attribute WRITE_DATA_WIDTH_A of \gen_sdpram.xpm_memory_base_inst\ : label is 128;
  attribute WRITE_DATA_WIDTH_B : integer;
  attribute WRITE_DATA_WIDTH_B of \gen_sdpram.xpm_memory_base_inst\ : label is 128;
  attribute WRITE_MODE_A : integer;
  attribute WRITE_MODE_A of \gen_sdpram.xpm_memory_base_inst\ : label is 2;
  attribute WRITE_MODE_B : integer;
  attribute WRITE_MODE_B of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute WRITE_PROTECT : integer;
  attribute WRITE_PROTECT of \gen_sdpram.xpm_memory_base_inst\ : label is 1;
  attribute XPM_MODULE of \gen_sdpram.xpm_memory_base_inst\ : label is "TRUE";
  attribute rsta_loop_iter : integer;
  attribute rsta_loop_iter of \gen_sdpram.xpm_memory_base_inst\ : label is 128;
  attribute rstb_loop_iter : integer;
  attribute rstb_loop_iter of \gen_sdpram.xpm_memory_base_inst\ : label is 128;
  attribute SOFT_HLUTNM of \gen_sdpram.xpm_memory_base_inst_i_3\ : label is "soft_lutpair8";
begin
  almost_empty <= \<const0>\;
  almost_full <= \<const0>\;
  dbiterr <= \<const0>\;
  empty <= \<const0>\;
  full <= \^full\;
  full_n <= \<const0>\;
  overflow <= \<const0>\;
  prog_empty <= \<const0>\;
  prog_full <= \<const0>\;
  rd_data_count(4) <= \<const0>\;
  rd_data_count(3) <= \<const0>\;
  rd_data_count(2) <= \<const0>\;
  rd_data_count(1) <= \<const0>\;
  rd_data_count(0) <= \<const0>\;
  rd_rst_busy <= \<const0>\;
  sbiterr <= \<const0>\;
  underflow <= \<const0>\;
  wr_ack <= \<const0>\;
  wr_data_count(4) <= \<const0>\;
  wr_data_count(3) <= \<const0>\;
  wr_data_count(2) <= \<const0>\;
  wr_data_count(1) <= \<const0>\;
  wr_data_count(0) <= \<const0>\;
  wr_rst_busy <= \<const0>\;
\FSM_sequential_gen_fwft.curr_fwft_state[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6A85"
    )
        port map (
      I0 => curr_fwft_state(0),
      I1 => rd_en,
      I2 => curr_fwft_state(1),
      I3 => ram_empty_i,
      O => \next_fwft_state__0\(0)
    );
\FSM_sequential_gen_fwft.curr_fwft_state[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7C"
    )
        port map (
      I0 => rd_en,
      I1 => curr_fwft_state(1),
      I2 => curr_fwft_state(0),
      O => \next_fwft_state__0\(1)
    );
\FSM_sequential_gen_fwft.curr_fwft_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => \next_fwft_state__0\(0),
      Q => curr_fwft_state(0),
      R => xpm_fifo_rst_inst_n_1
    );
\FSM_sequential_gen_fwft.curr_fwft_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => \next_fwft_state__0\(1),
      Q => curr_fwft_state(1),
      R => xpm_fifo_rst_inst_n_1
    );
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\gen_fwft.empty_fwft_i_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F380"
    )
        port map (
      I0 => rd_en,
      I1 => curr_fwft_state(0),
      I2 => curr_fwft_state(1),
      I3 => \gen_fwft.empty_fwft_i_reg_n_0\,
      O => data_valid_fwft1
    );
\gen_fwft.empty_fwft_i_reg\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => data_valid_fwft1,
      Q => \gen_fwft.empty_fwft_i_reg_n_0\,
      S => xpm_fifo_rst_inst_n_1
    );
\gen_fwft.gdvld_fwft.data_valid_fwft_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3575"
    )
        port map (
      I0 => \gen_fwft.empty_fwft_i_reg_n_0\,
      I1 => curr_fwft_state(1),
      I2 => curr_fwft_state(0),
      I3 => rd_en,
      O => \gen_fwft.gdvld_fwft.data_valid_fwft_i_1_n_0\
    );
\gen_fwft.gdvld_fwft.data_valid_fwft_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => \gen_fwft.gdvld_fwft.data_valid_fwft_i_1_n_0\,
      Q => data_valid,
      R => xpm_fifo_rst_inst_n_1
    );
\gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => rdp_inst_n_5,
      Q => \^full\,
      S => xpm_fifo_rst_inst_n_1
    );
\gen_pntr_flags_cc.ram_empty_i_reg\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => ram_empty_i0,
      Q => ram_empty_i,
      S => xpm_fifo_rst_inst_n_1
    );
\gen_sdpram.xpm_memory_base_inst\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base
     port map (
      addra(3 downto 0) => wr_pntr_ext(3 downto 0),
      addrb(3 downto 0) => rd_pntr_ext(3 downto 0),
      clka => rd_clk,
      clkb => '0',
      dbiterra => \NLW_gen_sdpram.xpm_memory_base_inst_dbiterra_UNCONNECTED\,
      dbiterrb => \NLW_gen_sdpram.xpm_memory_base_inst_dbiterrb_UNCONNECTED\,
      dina(127 downto 0) => din(127 downto 0),
      dinb(127 downto 0) => B"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
      douta(127 downto 0) => \NLW_gen_sdpram.xpm_memory_base_inst_douta_UNCONNECTED\(127 downto 0),
      doutb(127 downto 0) => dout(127 downto 0),
      ena => ram_wr_en_pf,
      enb => rdp_inst_n_6,
      injectdbiterra => '0',
      injectdbiterrb => '0',
      injectsbiterra => '0',
      injectsbiterrb => '0',
      regcea => '0',
      regceb => \gen_fwft.ram_regout_en\,
      rsta => '0',
      rstb => xpm_fifo_rst_inst_n_1,
      sbiterra => \NLW_gen_sdpram.xpm_memory_base_inst_sbiterra_UNCONNECTED\,
      sbiterrb => \NLW_gen_sdpram.xpm_memory_base_inst_sbiterrb_UNCONNECTED\,
      sleep => sleep,
      wea(0) => '0',
      web(0) => '0'
    );
\gen_sdpram.xpm_memory_base_inst_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"62"
    )
        port map (
      I0 => curr_fwft_state(0),
      I1 => curr_fwft_state(1),
      I2 => rd_en,
      O => \gen_fwft.ram_regout_en\
    );
rdp_inst: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized2\
     port map (
      E(0) => ram_wr_en_pf,
      Q(3 downto 0) => rd_pntr_ext(3 downto 0),
      clr_full => clr_full,
      \count_value_i_reg[0]_0\(1 downto 0) => curr_fwft_state(1 downto 0),
      \count_value_i_reg[0]_1\(0) => xpm_fifo_rst_inst_n_1,
      enb => rdp_inst_n_6,
      full => \^full\,
      \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg\ => rdp_inst_n_5,
      \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_0\(3 downto 0) => wr_pntr_ext(3 downto 0),
      \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_1\(3) => wrpp1_inst_n_0,
      \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_1\(2) => wrpp1_inst_n_1,
      \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_1\(1) => wrpp1_inst_n_2,
      \gen_pntr_flags_cc.gen_full_rst_val.ram_full_i_reg_1\(0) => wrpp1_inst_n_3,
      leaving_empty0 => leaving_empty0,
      ram_empty_i => ram_empty_i,
      rd_clk => rd_clk,
      rd_en => rd_en
    );
rdpp1_inst: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized3\
     port map (
      E(0) => rdp_inst_n_6,
      Q(3) => rdpp1_inst_n_0,
      Q(2) => rdpp1_inst_n_1,
      Q(1) => rdpp1_inst_n_2,
      Q(0) => rdpp1_inst_n_3,
      \count_value_i_reg[0]_0\(0) => xpm_fifo_rst_inst_n_1,
      \count_value_i_reg[1]_0\(1 downto 0) => curr_fwft_state(1 downto 0),
      rd_clk => rd_clk,
      rd_en => rd_en
    );
rst_d1_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_reg_bit
     port map (
      Q(0) => xpm_fifo_rst_inst_n_1,
      clr_full => clr_full,
      rd_clk => rd_clk,
      rst => rst,
      rst_d1 => rst_d1
    );
wrp_inst: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized2_2\
     port map (
      E(0) => ram_wr_en_pf,
      Q(3 downto 0) => wr_pntr_ext(3 downto 0),
      \count_value_i_reg[3]_0\(0) => xpm_fifo_rst_inst_n_1,
      enb => rdp_inst_n_6,
      \gen_pntr_flags_cc.ram_empty_i_reg\(3) => rdpp1_inst_n_0,
      \gen_pntr_flags_cc.ram_empty_i_reg\(2) => rdpp1_inst_n_1,
      \gen_pntr_flags_cc.ram_empty_i_reg\(1) => rdpp1_inst_n_2,
      \gen_pntr_flags_cc.ram_empty_i_reg\(0) => rdpp1_inst_n_3,
      leaving_empty0 => leaving_empty0,
      ram_empty_i => ram_empty_i,
      ram_empty_i0 => ram_empty_i0,
      rd_clk => rd_clk
    );
wrpp1_inst: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_counter_updn__parameterized3_3\
     port map (
      E(0) => ram_wr_en_pf,
      Q(3) => wrpp1_inst_n_0,
      Q(2) => wrpp1_inst_n_1,
      Q(1) => wrpp1_inst_n_2,
      Q(0) => wrpp1_inst_n_3,
      \count_value_i_reg[0]_0\(0) => xpm_fifo_rst_inst_n_1,
      rd_clk => rd_clk
    );
xpm_fifo_rst_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_rst
     port map (
      E(0) => ram_wr_en_pf,
      Q(0) => xpm_fifo_rst_inst_n_1,
      full => \^full\,
      rd_clk => rd_clk,
      rst => rst,
      rst_d1 => rst_d1,
      wr_en => wr_en
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_sync is
  port (
    sleep : in STD_LOGIC;
    rst : in STD_LOGIC;
    wr_clk : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 127 downto 0 );
    full : out STD_LOGIC;
    prog_full : out STD_LOGIC;
    wr_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    overflow : out STD_LOGIC;
    wr_rst_busy : out STD_LOGIC;
    almost_full : out STD_LOGIC;
    wr_ack : out STD_LOGIC;
    rd_en : in STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 127 downto 0 );
    empty : out STD_LOGIC;
    prog_empty : out STD_LOGIC;
    rd_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    underflow : out STD_LOGIC;
    rd_rst_busy : out STD_LOGIC;
    almost_empty : out STD_LOGIC;
    data_valid : out STD_LOGIC;
    injectsbiterr : in STD_LOGIC;
    injectdbiterr : in STD_LOGIC;
    sbiterr : out STD_LOGIC;
    dbiterr : out STD_LOGIC
  );
  attribute CASCADE_HEIGHT : integer;
  attribute CASCADE_HEIGHT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_sync : entity is 0;
  attribute DOUT_RESET_VALUE : string;
  attribute DOUT_RESET_VALUE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_sync : entity is "0";
  attribute ECC_MODE : string;
  attribute ECC_MODE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_sync : entity is "no_ecc";
  attribute EN_ADV_FEATURE_SYNC : string;
  attribute EN_ADV_FEATURE_SYNC of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_sync : entity is "16'b0001111100011111";
  attribute FIFO_MEMORY_TYPE : string;
  attribute FIFO_MEMORY_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_sync : entity is "distributed";
  attribute FIFO_READ_LATENCY : integer;
  attribute FIFO_READ_LATENCY of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_sync : entity is 1;
  attribute FIFO_WRITE_DEPTH : integer;
  attribute FIFO_WRITE_DEPTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_sync : entity is 16;
  attribute FULL_RESET_VALUE : integer;
  attribute FULL_RESET_VALUE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_sync : entity is 1;
  attribute PROG_EMPTY_THRESH : integer;
  attribute PROG_EMPTY_THRESH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_sync : entity is 9;
  attribute PROG_FULL_THRESH : integer;
  attribute PROG_FULL_THRESH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_sync : entity is 10;
  attribute P_COMMON_CLOCK : integer;
  attribute P_COMMON_CLOCK of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_sync : entity is 1;
  attribute P_ECC_MODE : integer;
  attribute P_ECC_MODE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_sync : entity is 0;
  attribute P_FIFO_MEMORY_TYPE : integer;
  attribute P_FIFO_MEMORY_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_sync : entity is 1;
  attribute P_READ_MODE : integer;
  attribute P_READ_MODE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_sync : entity is 1;
  attribute P_WAKEUP_TIME : integer;
  attribute P_WAKEUP_TIME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_sync : entity is 2;
  attribute RD_DATA_COUNT_WIDTH : integer;
  attribute RD_DATA_COUNT_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_sync : entity is 5;
  attribute READ_DATA_WIDTH : integer;
  attribute READ_DATA_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_sync : entity is 128;
  attribute READ_MODE : string;
  attribute READ_MODE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_sync : entity is "fwft";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_sync : entity is 0;
  attribute USE_ADV_FEATURES : string;
  attribute USE_ADV_FEATURES of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_sync : entity is "1F1F";
  attribute WAKEUP_TIME : integer;
  attribute WAKEUP_TIME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_sync : entity is 0;
  attribute WRITE_DATA_WIDTH : integer;
  attribute WRITE_DATA_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_sync : entity is 128;
  attribute WR_DATA_COUNT_WIDTH : integer;
  attribute WR_DATA_COUNT_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_sync : entity is 5;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_sync : entity is "TRUE";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_sync : entity is "soft";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_sync;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_sync is
  signal \<const0>\ : STD_LOGIC;
  signal NLW_xpm_fifo_base_inst_almost_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_fifo_base_inst_almost_full_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_fifo_base_inst_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_fifo_base_inst_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_fifo_base_inst_full_n_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_fifo_base_inst_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_fifo_base_inst_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_fifo_base_inst_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_fifo_base_inst_rd_rst_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_fifo_base_inst_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_fifo_base_inst_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_fifo_base_inst_wr_ack_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_fifo_base_inst_wr_rst_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_fifo_base_inst_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_xpm_fifo_base_inst_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  attribute CASCADE_HEIGHT of xpm_fifo_base_inst : label is 0;
  attribute CDC_DEST_SYNC_FF : integer;
  attribute CDC_DEST_SYNC_FF of xpm_fifo_base_inst : label is 2;
  attribute COMMON_CLOCK : integer;
  attribute COMMON_CLOCK of xpm_fifo_base_inst : label is 1;
  attribute DOUT_RESET_VALUE of xpm_fifo_base_inst : label is "0";
  attribute ECC_MODE_integer : integer;
  attribute ECC_MODE_integer of xpm_fifo_base_inst : label is 0;
  attribute ENABLE_ECC : integer;
  attribute ENABLE_ECC of xpm_fifo_base_inst : label is 0;
  attribute EN_ADV_FEATURE : string;
  attribute EN_ADV_FEATURE of xpm_fifo_base_inst : label is "16'b0001111100011111";
  attribute EN_AE : string;
  attribute EN_AE of xpm_fifo_base_inst : label is "1'b1";
  attribute EN_AF : string;
  attribute EN_AF of xpm_fifo_base_inst : label is "1'b1";
  attribute EN_DVLD : string;
  attribute EN_DVLD of xpm_fifo_base_inst : label is "1'b1";
  attribute EN_OF : string;
  attribute EN_OF of xpm_fifo_base_inst : label is "1'b1";
  attribute EN_PE : string;
  attribute EN_PE of xpm_fifo_base_inst : label is "1'b1";
  attribute EN_PF : string;
  attribute EN_PF of xpm_fifo_base_inst : label is "1'b1";
  attribute EN_RDC : string;
  attribute EN_RDC of xpm_fifo_base_inst : label is "1'b1";
  attribute EN_UF : string;
  attribute EN_UF of xpm_fifo_base_inst : label is "1'b1";
  attribute EN_WACK : string;
  attribute EN_WACK of xpm_fifo_base_inst : label is "1'b1";
  attribute EN_WDC : string;
  attribute EN_WDC of xpm_fifo_base_inst : label is "1'b1";
  attribute FG_EQ_ASYM_DOUT : string;
  attribute FG_EQ_ASYM_DOUT of xpm_fifo_base_inst : label is "1'b0";
  attribute FIFO_MEMORY_TYPE_integer : integer;
  attribute FIFO_MEMORY_TYPE_integer of xpm_fifo_base_inst : label is 1;
  attribute FIFO_MEM_TYPE : integer;
  attribute FIFO_MEM_TYPE of xpm_fifo_base_inst : label is 1;
  attribute FIFO_READ_DEPTH : integer;
  attribute FIFO_READ_DEPTH of xpm_fifo_base_inst : label is 16;
  attribute FIFO_READ_LATENCY of xpm_fifo_base_inst : label is 1;
  attribute FIFO_SIZE : integer;
  attribute FIFO_SIZE of xpm_fifo_base_inst : label is 2048;
  attribute FIFO_WRITE_DEPTH of xpm_fifo_base_inst : label is 16;
  attribute FULL_RESET_VALUE of xpm_fifo_base_inst : label is 1;
  attribute FULL_RST_VAL : string;
  attribute FULL_RST_VAL of xpm_fifo_base_inst : label is "1'b1";
  attribute KEEP_HIERARCHY of xpm_fifo_base_inst : label is "soft";
  attribute PE_THRESH_ADJ : integer;
  attribute PE_THRESH_ADJ of xpm_fifo_base_inst : label is 7;
  attribute PE_THRESH_MAX : integer;
  attribute PE_THRESH_MAX of xpm_fifo_base_inst : label is 11;
  attribute PE_THRESH_MIN : integer;
  attribute PE_THRESH_MIN of xpm_fifo_base_inst : label is 5;
  attribute PF_THRESH_ADJ : integer;
  attribute PF_THRESH_ADJ of xpm_fifo_base_inst : label is 8;
  attribute PF_THRESH_MAX : integer;
  attribute PF_THRESH_MAX of xpm_fifo_base_inst : label is 11;
  attribute PF_THRESH_MIN : integer;
  attribute PF_THRESH_MIN of xpm_fifo_base_inst : label is 5;
  attribute PROG_EMPTY_THRESH of xpm_fifo_base_inst : label is 9;
  attribute PROG_FULL_THRESH of xpm_fifo_base_inst : label is 10;
  attribute RD_DATA_COUNT_WIDTH of xpm_fifo_base_inst : label is 5;
  attribute RD_DC_WIDTH_EXT : integer;
  attribute RD_DC_WIDTH_EXT of xpm_fifo_base_inst : label is 5;
  attribute RD_LATENCY : integer;
  attribute RD_LATENCY of xpm_fifo_base_inst : label is 2;
  attribute RD_MODE : integer;
  attribute RD_MODE of xpm_fifo_base_inst : label is 1;
  attribute RD_PNTR_WIDTH : integer;
  attribute RD_PNTR_WIDTH of xpm_fifo_base_inst : label is 4;
  attribute READ_DATA_WIDTH of xpm_fifo_base_inst : label is 128;
  attribute READ_MODE_integer : integer;
  attribute READ_MODE_integer of xpm_fifo_base_inst : label is 1;
  attribute READ_MODE_LL : integer;
  attribute READ_MODE_LL of xpm_fifo_base_inst : label is 1;
  attribute RELATED_CLOCKS : integer;
  attribute RELATED_CLOCKS of xpm_fifo_base_inst : label is 0;
  attribute REMOVE_WR_RD_PROT_LOGIC : integer;
  attribute REMOVE_WR_RD_PROT_LOGIC of xpm_fifo_base_inst : label is 0;
  attribute SIM_ASSERT_CHK of xpm_fifo_base_inst : label is 0;
  attribute USE_ADV_FEATURES of xpm_fifo_base_inst : label is "1F1F";
  attribute VERSION : integer;
  attribute VERSION of xpm_fifo_base_inst : label is 0;
  attribute WAKEUP_TIME of xpm_fifo_base_inst : label is 0;
  attribute WIDTH_RATIO : integer;
  attribute WIDTH_RATIO of xpm_fifo_base_inst : label is 1;
  attribute WRITE_DATA_WIDTH of xpm_fifo_base_inst : label is 128;
  attribute WR_DATA_COUNT_WIDTH of xpm_fifo_base_inst : label is 5;
  attribute WR_DC_WIDTH_EXT : integer;
  attribute WR_DC_WIDTH_EXT of xpm_fifo_base_inst : label is 5;
  attribute WR_DEPTH_LOG : integer;
  attribute WR_DEPTH_LOG of xpm_fifo_base_inst : label is 4;
  attribute WR_PNTR_WIDTH : integer;
  attribute WR_PNTR_WIDTH of xpm_fifo_base_inst : label is 4;
  attribute WR_RD_RATIO : integer;
  attribute WR_RD_RATIO of xpm_fifo_base_inst : label is 0;
  attribute WR_WIDTH_LOG : integer;
  attribute WR_WIDTH_LOG of xpm_fifo_base_inst : label is 7;
  attribute XPM_MODULE of xpm_fifo_base_inst : label is "TRUE";
  attribute both_stages_valid : integer;
  attribute both_stages_valid of xpm_fifo_base_inst : label is 3;
  attribute invalid : integer;
  attribute invalid of xpm_fifo_base_inst : label is 0;
  attribute stage1_valid : integer;
  attribute stage1_valid of xpm_fifo_base_inst : label is 2;
  attribute stage2_valid : integer;
  attribute stage2_valid of xpm_fifo_base_inst : label is 1;
begin
  almost_empty <= \<const0>\;
  almost_full <= \<const0>\;
  dbiterr <= \<const0>\;
  empty <= \<const0>\;
  overflow <= \<const0>\;
  prog_empty <= \<const0>\;
  prog_full <= \<const0>\;
  rd_data_count(4) <= \<const0>\;
  rd_data_count(3) <= \<const0>\;
  rd_data_count(2) <= \<const0>\;
  rd_data_count(1) <= \<const0>\;
  rd_data_count(0) <= \<const0>\;
  rd_rst_busy <= \<const0>\;
  sbiterr <= \<const0>\;
  underflow <= \<const0>\;
  wr_ack <= \<const0>\;
  wr_data_count(4) <= \<const0>\;
  wr_data_count(3) <= \<const0>\;
  wr_data_count(2) <= \<const0>\;
  wr_data_count(1) <= \<const0>\;
  wr_data_count(0) <= \<const0>\;
  wr_rst_busy <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
xpm_fifo_base_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_base
     port map (
      almost_empty => NLW_xpm_fifo_base_inst_almost_empty_UNCONNECTED,
      almost_full => NLW_xpm_fifo_base_inst_almost_full_UNCONNECTED,
      data_valid => data_valid,
      dbiterr => NLW_xpm_fifo_base_inst_dbiterr_UNCONNECTED,
      din(127 downto 0) => din(127 downto 0),
      dout(127 downto 0) => dout(127 downto 0),
      empty => NLW_xpm_fifo_base_inst_empty_UNCONNECTED,
      full => full,
      full_n => NLW_xpm_fifo_base_inst_full_n_UNCONNECTED,
      injectdbiterr => '0',
      injectsbiterr => '0',
      overflow => NLW_xpm_fifo_base_inst_overflow_UNCONNECTED,
      prog_empty => NLW_xpm_fifo_base_inst_prog_empty_UNCONNECTED,
      prog_full => NLW_xpm_fifo_base_inst_prog_full_UNCONNECTED,
      rd_clk => wr_clk,
      rd_data_count(4 downto 0) => NLW_xpm_fifo_base_inst_rd_data_count_UNCONNECTED(4 downto 0),
      rd_en => rd_en,
      rd_rst_busy => NLW_xpm_fifo_base_inst_rd_rst_busy_UNCONNECTED,
      rst => rst,
      sbiterr => NLW_xpm_fifo_base_inst_sbiterr_UNCONNECTED,
      sleep => sleep,
      underflow => NLW_xpm_fifo_base_inst_underflow_UNCONNECTED,
      wr_ack => NLW_xpm_fifo_base_inst_wr_ack_UNCONNECTED,
      wr_clk => '0',
      wr_data_count(4 downto 0) => NLW_xpm_fifo_base_inst_wr_data_count_UNCONNECTED(4 downto 0),
      wr_en => wr_en,
      wr_rst_busy => NLW_xpm_fifo_base_inst_wr_rst_busy_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_swr_engine is
  port (
    is_zero_r_reg : out STD_LOGIC;
    awvalid_r_reg_0 : out STD_LOGIC;
    m_axi_AWADDR : out STD_LOGIC_VECTOR ( 56 downto 0 );
    m_axi_AWLEN : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_WDATA : out STD_LOGIC_VECTOR ( 127 downto 0 );
    ctrl_done : out STD_LOGIC;
    m_axi_WVALID : out STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    m_axi_WREADY : in STD_LOGIC;
    m_axi_AWREADY : in STD_LOGIC;
    m_axi_BVALID : in STD_LOGIC;
    clk : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    req_len : in STD_LOGIC_VECTOR ( 15 downto 0 );
    ctrl_start : in STD_LOGIC;
    baseAddr : in STD_LOGIC_VECTOR ( 55 downto 0 );
    rst_n : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_swr_engine;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_swr_engine is
  signal \addr[14]_i_10_n_0\ : STD_LOGIC;
  signal \addr[14]_i_2_n_0\ : STD_LOGIC;
  signal \addr[14]_i_3_n_0\ : STD_LOGIC;
  signal \addr[14]_i_4_n_0\ : STD_LOGIC;
  signal \addr[14]_i_5_n_0\ : STD_LOGIC;
  signal \addr[14]_i_6_n_0\ : STD_LOGIC;
  signal \addr[14]_i_7_n_0\ : STD_LOGIC;
  signal \addr[14]_i_8_n_0\ : STD_LOGIC;
  signal \addr[14]_i_9_n_0\ : STD_LOGIC;
  signal \addr[22]_i_2_n_0\ : STD_LOGIC;
  signal \addr[22]_i_3_n_0\ : STD_LOGIC;
  signal \addr[22]_i_4_n_0\ : STD_LOGIC;
  signal \addr[22]_i_5_n_0\ : STD_LOGIC;
  signal \addr[22]_i_6_n_0\ : STD_LOGIC;
  signal \addr[22]_i_7_n_0\ : STD_LOGIC;
  signal \addr[22]_i_8_n_0\ : STD_LOGIC;
  signal \addr[22]_i_9_n_0\ : STD_LOGIC;
  signal \addr[30]_i_2_n_0\ : STD_LOGIC;
  signal \addr[30]_i_3_n_0\ : STD_LOGIC;
  signal \addr[30]_i_4_n_0\ : STD_LOGIC;
  signal \addr[30]_i_5_n_0\ : STD_LOGIC;
  signal \addr[30]_i_6_n_0\ : STD_LOGIC;
  signal \addr[30]_i_7_n_0\ : STD_LOGIC;
  signal \addr[30]_i_8_n_0\ : STD_LOGIC;
  signal \addr[30]_i_9_n_0\ : STD_LOGIC;
  signal \addr[38]_i_2_n_0\ : STD_LOGIC;
  signal \addr[38]_i_3_n_0\ : STD_LOGIC;
  signal \addr[38]_i_4_n_0\ : STD_LOGIC;
  signal \addr[38]_i_5_n_0\ : STD_LOGIC;
  signal \addr[38]_i_6_n_0\ : STD_LOGIC;
  signal \addr[38]_i_7_n_0\ : STD_LOGIC;
  signal \addr[38]_i_8_n_0\ : STD_LOGIC;
  signal \addr[38]_i_9_n_0\ : STD_LOGIC;
  signal \addr[46]_i_2_n_0\ : STD_LOGIC;
  signal \addr[46]_i_3_n_0\ : STD_LOGIC;
  signal \addr[46]_i_4_n_0\ : STD_LOGIC;
  signal \addr[46]_i_5_n_0\ : STD_LOGIC;
  signal \addr[46]_i_6_n_0\ : STD_LOGIC;
  signal \addr[46]_i_7_n_0\ : STD_LOGIC;
  signal \addr[46]_i_8_n_0\ : STD_LOGIC;
  signal \addr[46]_i_9_n_0\ : STD_LOGIC;
  signal \addr[54]_i_2_n_0\ : STD_LOGIC;
  signal \addr[54]_i_3_n_0\ : STD_LOGIC;
  signal \addr[54]_i_4_n_0\ : STD_LOGIC;
  signal \addr[54]_i_5_n_0\ : STD_LOGIC;
  signal \addr[54]_i_6_n_0\ : STD_LOGIC;
  signal \addr[54]_i_7_n_0\ : STD_LOGIC;
  signal \addr[54]_i_8_n_0\ : STD_LOGIC;
  signal \addr[54]_i_9_n_0\ : STD_LOGIC;
  signal \addr[62]_i_2_n_0\ : STD_LOGIC;
  signal \addr[62]_i_3_n_0\ : STD_LOGIC;
  signal \addr[62]_i_4_n_0\ : STD_LOGIC;
  signal \addr[62]_i_5_n_0\ : STD_LOGIC;
  signal \addr[62]_i_6_n_0\ : STD_LOGIC;
  signal \addr[62]_i_7_n_0\ : STD_LOGIC;
  signal \addr[62]_i_8_n_0\ : STD_LOGIC;
  signal \addr[62]_i_9_n_0\ : STD_LOGIC;
  signal \addr[63]_i_3_n_0\ : STD_LOGIC;
  signal addr_offset_r : STD_LOGIC_VECTOR ( 63 downto 8 );
  signal \addr_reg[14]_i_1_n_0\ : STD_LOGIC;
  signal \addr_reg[14]_i_1_n_1\ : STD_LOGIC;
  signal \addr_reg[14]_i_1_n_10\ : STD_LOGIC;
  signal \addr_reg[14]_i_1_n_11\ : STD_LOGIC;
  signal \addr_reg[14]_i_1_n_12\ : STD_LOGIC;
  signal \addr_reg[14]_i_1_n_13\ : STD_LOGIC;
  signal \addr_reg[14]_i_1_n_14\ : STD_LOGIC;
  signal \addr_reg[14]_i_1_n_15\ : STD_LOGIC;
  signal \addr_reg[14]_i_1_n_2\ : STD_LOGIC;
  signal \addr_reg[14]_i_1_n_3\ : STD_LOGIC;
  signal \addr_reg[14]_i_1_n_4\ : STD_LOGIC;
  signal \addr_reg[14]_i_1_n_5\ : STD_LOGIC;
  signal \addr_reg[14]_i_1_n_6\ : STD_LOGIC;
  signal \addr_reg[14]_i_1_n_7\ : STD_LOGIC;
  signal \addr_reg[14]_i_1_n_8\ : STD_LOGIC;
  signal \addr_reg[14]_i_1_n_9\ : STD_LOGIC;
  signal \addr_reg[22]_i_1_n_0\ : STD_LOGIC;
  signal \addr_reg[22]_i_1_n_1\ : STD_LOGIC;
  signal \addr_reg[22]_i_1_n_10\ : STD_LOGIC;
  signal \addr_reg[22]_i_1_n_11\ : STD_LOGIC;
  signal \addr_reg[22]_i_1_n_12\ : STD_LOGIC;
  signal \addr_reg[22]_i_1_n_13\ : STD_LOGIC;
  signal \addr_reg[22]_i_1_n_14\ : STD_LOGIC;
  signal \addr_reg[22]_i_1_n_15\ : STD_LOGIC;
  signal \addr_reg[22]_i_1_n_2\ : STD_LOGIC;
  signal \addr_reg[22]_i_1_n_3\ : STD_LOGIC;
  signal \addr_reg[22]_i_1_n_4\ : STD_LOGIC;
  signal \addr_reg[22]_i_1_n_5\ : STD_LOGIC;
  signal \addr_reg[22]_i_1_n_6\ : STD_LOGIC;
  signal \addr_reg[22]_i_1_n_7\ : STD_LOGIC;
  signal \addr_reg[22]_i_1_n_8\ : STD_LOGIC;
  signal \addr_reg[22]_i_1_n_9\ : STD_LOGIC;
  signal \addr_reg[30]_i_1_n_0\ : STD_LOGIC;
  signal \addr_reg[30]_i_1_n_1\ : STD_LOGIC;
  signal \addr_reg[30]_i_1_n_10\ : STD_LOGIC;
  signal \addr_reg[30]_i_1_n_11\ : STD_LOGIC;
  signal \addr_reg[30]_i_1_n_12\ : STD_LOGIC;
  signal \addr_reg[30]_i_1_n_13\ : STD_LOGIC;
  signal \addr_reg[30]_i_1_n_14\ : STD_LOGIC;
  signal \addr_reg[30]_i_1_n_15\ : STD_LOGIC;
  signal \addr_reg[30]_i_1_n_2\ : STD_LOGIC;
  signal \addr_reg[30]_i_1_n_3\ : STD_LOGIC;
  signal \addr_reg[30]_i_1_n_4\ : STD_LOGIC;
  signal \addr_reg[30]_i_1_n_5\ : STD_LOGIC;
  signal \addr_reg[30]_i_1_n_6\ : STD_LOGIC;
  signal \addr_reg[30]_i_1_n_7\ : STD_LOGIC;
  signal \addr_reg[30]_i_1_n_8\ : STD_LOGIC;
  signal \addr_reg[30]_i_1_n_9\ : STD_LOGIC;
  signal \addr_reg[38]_i_1_n_0\ : STD_LOGIC;
  signal \addr_reg[38]_i_1_n_1\ : STD_LOGIC;
  signal \addr_reg[38]_i_1_n_10\ : STD_LOGIC;
  signal \addr_reg[38]_i_1_n_11\ : STD_LOGIC;
  signal \addr_reg[38]_i_1_n_12\ : STD_LOGIC;
  signal \addr_reg[38]_i_1_n_13\ : STD_LOGIC;
  signal \addr_reg[38]_i_1_n_14\ : STD_LOGIC;
  signal \addr_reg[38]_i_1_n_15\ : STD_LOGIC;
  signal \addr_reg[38]_i_1_n_2\ : STD_LOGIC;
  signal \addr_reg[38]_i_1_n_3\ : STD_LOGIC;
  signal \addr_reg[38]_i_1_n_4\ : STD_LOGIC;
  signal \addr_reg[38]_i_1_n_5\ : STD_LOGIC;
  signal \addr_reg[38]_i_1_n_6\ : STD_LOGIC;
  signal \addr_reg[38]_i_1_n_7\ : STD_LOGIC;
  signal \addr_reg[38]_i_1_n_8\ : STD_LOGIC;
  signal \addr_reg[38]_i_1_n_9\ : STD_LOGIC;
  signal \addr_reg[46]_i_1_n_0\ : STD_LOGIC;
  signal \addr_reg[46]_i_1_n_1\ : STD_LOGIC;
  signal \addr_reg[46]_i_1_n_10\ : STD_LOGIC;
  signal \addr_reg[46]_i_1_n_11\ : STD_LOGIC;
  signal \addr_reg[46]_i_1_n_12\ : STD_LOGIC;
  signal \addr_reg[46]_i_1_n_13\ : STD_LOGIC;
  signal \addr_reg[46]_i_1_n_14\ : STD_LOGIC;
  signal \addr_reg[46]_i_1_n_15\ : STD_LOGIC;
  signal \addr_reg[46]_i_1_n_2\ : STD_LOGIC;
  signal \addr_reg[46]_i_1_n_3\ : STD_LOGIC;
  signal \addr_reg[46]_i_1_n_4\ : STD_LOGIC;
  signal \addr_reg[46]_i_1_n_5\ : STD_LOGIC;
  signal \addr_reg[46]_i_1_n_6\ : STD_LOGIC;
  signal \addr_reg[46]_i_1_n_7\ : STD_LOGIC;
  signal \addr_reg[46]_i_1_n_8\ : STD_LOGIC;
  signal \addr_reg[46]_i_1_n_9\ : STD_LOGIC;
  signal \addr_reg[54]_i_1_n_0\ : STD_LOGIC;
  signal \addr_reg[54]_i_1_n_1\ : STD_LOGIC;
  signal \addr_reg[54]_i_1_n_10\ : STD_LOGIC;
  signal \addr_reg[54]_i_1_n_11\ : STD_LOGIC;
  signal \addr_reg[54]_i_1_n_12\ : STD_LOGIC;
  signal \addr_reg[54]_i_1_n_13\ : STD_LOGIC;
  signal \addr_reg[54]_i_1_n_14\ : STD_LOGIC;
  signal \addr_reg[54]_i_1_n_15\ : STD_LOGIC;
  signal \addr_reg[54]_i_1_n_2\ : STD_LOGIC;
  signal \addr_reg[54]_i_1_n_3\ : STD_LOGIC;
  signal \addr_reg[54]_i_1_n_4\ : STD_LOGIC;
  signal \addr_reg[54]_i_1_n_5\ : STD_LOGIC;
  signal \addr_reg[54]_i_1_n_6\ : STD_LOGIC;
  signal \addr_reg[54]_i_1_n_7\ : STD_LOGIC;
  signal \addr_reg[54]_i_1_n_8\ : STD_LOGIC;
  signal \addr_reg[54]_i_1_n_9\ : STD_LOGIC;
  signal \addr_reg[62]_i_1_n_0\ : STD_LOGIC;
  signal \addr_reg[62]_i_1_n_1\ : STD_LOGIC;
  signal \addr_reg[62]_i_1_n_10\ : STD_LOGIC;
  signal \addr_reg[62]_i_1_n_11\ : STD_LOGIC;
  signal \addr_reg[62]_i_1_n_12\ : STD_LOGIC;
  signal \addr_reg[62]_i_1_n_13\ : STD_LOGIC;
  signal \addr_reg[62]_i_1_n_14\ : STD_LOGIC;
  signal \addr_reg[62]_i_1_n_15\ : STD_LOGIC;
  signal \addr_reg[62]_i_1_n_2\ : STD_LOGIC;
  signal \addr_reg[62]_i_1_n_3\ : STD_LOGIC;
  signal \addr_reg[62]_i_1_n_4\ : STD_LOGIC;
  signal \addr_reg[62]_i_1_n_5\ : STD_LOGIC;
  signal \addr_reg[62]_i_1_n_6\ : STD_LOGIC;
  signal \addr_reg[62]_i_1_n_7\ : STD_LOGIC;
  signal \addr_reg[62]_i_1_n_8\ : STD_LOGIC;
  signal \addr_reg[62]_i_1_n_9\ : STD_LOGIC;
  signal \addr_reg[63]_i_2_n_15\ : STD_LOGIC;
  signal \^awvalid_r_reg_0\ : STD_LOGIC;
  signal ctrl_start_d1 : STD_LOGIC;
  signal data : STD_LOGIC_VECTOR ( 55 downto 0 );
  signal done0 : STD_LOGIC;
  signal final_burst_len : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal inst_aw_transaction_cntr_n_0 : STD_LOGIC;
  signal inst_aw_transaction_cntr_n_1 : STD_LOGIC;
  signal inst_b_transaction_cntr_n_0 : STD_LOGIC;
  signal inst_burst_cntr_n_1 : STD_LOGIC;
  signal inst_burst_cntr_n_2 : STD_LOGIC;
  signal inst_burst_cntr_n_3 : STD_LOGIC;
  signal inst_burst_cntr_n_4 : STD_LOGIC;
  signal inst_burst_cntr_n_5 : STD_LOGIC;
  signal inst_burst_cntr_n_6 : STD_LOGIC;
  signal inst_w_to_aw_cntr_n_0 : STD_LOGIC;
  signal inst_w_to_aw_cntr_n_1 : STD_LOGIC;
  signal inst_w_transaction_cntr_n_0 : STD_LOGIC;
  signal inst_w_transaction_cntr_n_1 : STD_LOGIC;
  signal inst_w_transaction_cntr_n_2 : STD_LOGIC;
  signal inst_w_transaction_cntr_n_3 : STD_LOGIC;
  signal is_zero_r : STD_LOGIC;
  signal \^m_axi_awaddr\ : STD_LOGIC_VECTOR ( 56 downto 0 );
  signal m_axi_wvalid_i : STD_LOGIC;
  signal rd_en0 : STD_LOGIC;
  signal s_axis_tready_n : STD_LOGIC;
  signal stall_aw : STD_LOGIC;
  signal start : STD_LOGIC;
  signal \start_reg_rep__0_n_0\ : STD_LOGIC;
  signal start_reg_rep_n_0 : STD_LOGIC;
  signal total_len_r1 : STD_LOGIC_VECTOR ( 59 downto 0 );
  signal \total_len_r[20]_i_2_n_0\ : STD_LOGIC;
  signal \total_len_r[20]_i_3_n_0\ : STD_LOGIC;
  signal \total_len_r[20]_i_4_n_0\ : STD_LOGIC;
  signal \total_len_r[20]_i_5_n_0\ : STD_LOGIC;
  signal \total_len_r[20]_i_6_n_0\ : STD_LOGIC;
  signal \total_len_r[20]_i_7_n_0\ : STD_LOGIC;
  signal \total_len_r[20]_i_8_n_0\ : STD_LOGIC;
  signal \total_len_r[8]_i_2_n_0\ : STD_LOGIC;
  signal \total_len_r[8]_i_3_n_0\ : STD_LOGIC;
  signal \total_len_r[8]_i_4_n_0\ : STD_LOGIC;
  signal \total_len_r[8]_i_5_n_0\ : STD_LOGIC;
  signal \total_len_r[8]_i_6_n_0\ : STD_LOGIC;
  signal \total_len_r[8]_i_7_n_0\ : STD_LOGIC;
  signal \total_len_r[8]_i_8_n_0\ : STD_LOGIC;
  signal \total_len_r[8]_i_9_n_0\ : STD_LOGIC;
  signal \total_len_r_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \total_len_r_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \total_len_r_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \total_len_r_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \total_len_r_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \total_len_r_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \total_len_r_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \total_len_r_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \total_len_r_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \total_len_r_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \total_len_r_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \total_len_r_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \total_len_r_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \total_len_r_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \total_len_r_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \total_len_r_reg_n_0_[0]\ : STD_LOGIC;
  signal \total_len_r_reg_n_0_[1]\ : STD_LOGIC;
  signal \total_len_r_reg_n_0_[2]\ : STD_LOGIC;
  signal \total_len_r_reg_n_0_[3]\ : STD_LOGIC;
  signal w_running : STD_LOGIC;
  signal wfirst : STD_LOGIC;
  signal wfirst_d1 : STD_LOGIC;
  signal wfirst_d10 : STD_LOGIC;
  signal wfirst_pulse : STD_LOGIC;
  signal wfirst_pulse0 : STD_LOGIC;
  signal \NLW_addr_reg[63]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_addr_reg[63]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 1 );
  signal NLW_inst_xpm_fifo_sync_almost_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_xpm_fifo_sync_almost_full_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_xpm_fifo_sync_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_xpm_fifo_sync_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_xpm_fifo_sync_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_xpm_fifo_sync_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_xpm_fifo_sync_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_xpm_fifo_sync_rd_rst_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_xpm_fifo_sync_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_xpm_fifo_sync_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_xpm_fifo_sync_wr_ack_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_xpm_fifo_sync_wr_rst_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_xpm_fifo_sync_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_inst_xpm_fifo_sync_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \NLW_total_len_r_reg[20]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 to 7 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \addr_reg[14]_i_1\ : label is 16;
  attribute ADDER_THRESHOLD of \addr_reg[22]_i_1\ : label is 16;
  attribute ADDER_THRESHOLD of \addr_reg[30]_i_1\ : label is 16;
  attribute ADDER_THRESHOLD of \addr_reg[38]_i_1\ : label is 16;
  attribute ADDER_THRESHOLD of \addr_reg[46]_i_1\ : label is 16;
  attribute ADDER_THRESHOLD of \addr_reg[54]_i_1\ : label is 16;
  attribute ADDER_THRESHOLD of \addr_reg[62]_i_1\ : label is 16;
  attribute ADDER_THRESHOLD of \addr_reg[63]_i_2\ : label is 16;
  attribute CASCADE_HEIGHT : integer;
  attribute CASCADE_HEIGHT of inst_xpm_fifo_sync : label is 0;
  attribute DOUT_RESET_VALUE : string;
  attribute DOUT_RESET_VALUE of inst_xpm_fifo_sync : label is "0";
  attribute ECC_MODE : string;
  attribute ECC_MODE of inst_xpm_fifo_sync : label is "no_ecc";
  attribute EN_ADV_FEATURE_SYNC : string;
  attribute EN_ADV_FEATURE_SYNC of inst_xpm_fifo_sync : label is "16'b0001111100011111";
  attribute FIFO_MEMORY_TYPE : string;
  attribute FIFO_MEMORY_TYPE of inst_xpm_fifo_sync : label is "distributed";
  attribute FIFO_READ_LATENCY : integer;
  attribute FIFO_READ_LATENCY of inst_xpm_fifo_sync : label is 1;
  attribute FIFO_WRITE_DEPTH : integer;
  attribute FIFO_WRITE_DEPTH of inst_xpm_fifo_sync : label is 16;
  attribute FULL_RESET_VALUE : integer;
  attribute FULL_RESET_VALUE of inst_xpm_fifo_sync : label is 1;
  attribute PROG_EMPTY_THRESH : integer;
  attribute PROG_EMPTY_THRESH of inst_xpm_fifo_sync : label is 9;
  attribute PROG_FULL_THRESH : integer;
  attribute PROG_FULL_THRESH of inst_xpm_fifo_sync : label is 10;
  attribute P_COMMON_CLOCK : integer;
  attribute P_COMMON_CLOCK of inst_xpm_fifo_sync : label is 1;
  attribute P_ECC_MODE : integer;
  attribute P_ECC_MODE of inst_xpm_fifo_sync : label is 0;
  attribute P_FIFO_MEMORY_TYPE : integer;
  attribute P_FIFO_MEMORY_TYPE of inst_xpm_fifo_sync : label is 1;
  attribute P_READ_MODE : integer;
  attribute P_READ_MODE of inst_xpm_fifo_sync : label is 1;
  attribute P_WAKEUP_TIME : integer;
  attribute P_WAKEUP_TIME of inst_xpm_fifo_sync : label is 2;
  attribute RD_DATA_COUNT_WIDTH : integer;
  attribute RD_DATA_COUNT_WIDTH of inst_xpm_fifo_sync : label is 5;
  attribute READ_DATA_WIDTH : integer;
  attribute READ_DATA_WIDTH of inst_xpm_fifo_sync : label is 128;
  attribute READ_MODE : string;
  attribute READ_MODE of inst_xpm_fifo_sync : label is "fwft";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of inst_xpm_fifo_sync : label is 0;
  attribute USE_ADV_FEATURES : string;
  attribute USE_ADV_FEATURES of inst_xpm_fifo_sync : label is "1F1F";
  attribute WAKEUP_TIME : integer;
  attribute WAKEUP_TIME of inst_xpm_fifo_sync : label is 0;
  attribute WRITE_DATA_WIDTH : integer;
  attribute WRITE_DATA_WIDTH of inst_xpm_fifo_sync : label is 128;
  attribute WR_DATA_COUNT_WIDTH : integer;
  attribute WR_DATA_COUNT_WIDTH of inst_xpm_fifo_sync : label is 5;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of inst_xpm_fifo_sync : label is "TRUE";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of inst_xpm_fifo_sync_i_1 : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of m_axi_WVALID_INST_0 : label is "soft_lutpair19";
  attribute ORIG_CELL_NAME : string;
  attribute ORIG_CELL_NAME of start_reg : label is "start_reg";
  attribute ORIG_CELL_NAME of start_reg_rep : label is "start_reg";
  attribute ORIG_CELL_NAME of \start_reg_rep__0\ : label is "start_reg";
  attribute SOFT_HLUTNM of wfirst_d1_i_1 : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of wfirst_pulse_i_1 : label is "soft_lutpair18";
begin
  awvalid_r_reg_0 <= \^awvalid_r_reg_0\;
  m_axi_AWADDR(56 downto 0) <= \^m_axi_awaddr\(56 downto 0);
\addr[14]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^m_axi_awaddr\(0),
      I1 => start_reg_rep_n_0,
      O => \addr[14]_i_10_n_0\
    );
\addr[14]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => start_reg_rep_n_0,
      O => \addr[14]_i_2_n_0\
    );
\addr[14]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => addr_offset_r(14),
      I1 => start_reg_rep_n_0,
      I2 => \^m_axi_awaddr\(7),
      O => \addr[14]_i_3_n_0\
    );
\addr[14]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => addr_offset_r(13),
      I1 => start_reg_rep_n_0,
      I2 => \^m_axi_awaddr\(6),
      O => \addr[14]_i_4_n_0\
    );
\addr[14]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => addr_offset_r(12),
      I1 => start_reg_rep_n_0,
      I2 => \^m_axi_awaddr\(5),
      O => \addr[14]_i_5_n_0\
    );
\addr[14]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => addr_offset_r(11),
      I1 => start_reg_rep_n_0,
      I2 => \^m_axi_awaddr\(4),
      O => \addr[14]_i_6_n_0\
    );
\addr[14]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => addr_offset_r(10),
      I1 => start_reg_rep_n_0,
      I2 => \^m_axi_awaddr\(3),
      O => \addr[14]_i_7_n_0\
    );
\addr[14]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => addr_offset_r(9),
      I1 => start_reg_rep_n_0,
      I2 => \^m_axi_awaddr\(2),
      O => \addr[14]_i_8_n_0\
    );
\addr[14]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => \^m_axi_awaddr\(1),
      I1 => addr_offset_r(8),
      I2 => start_reg_rep_n_0,
      O => \addr[14]_i_9_n_0\
    );
\addr[22]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => addr_offset_r(22),
      I1 => start_reg_rep_n_0,
      I2 => \^m_axi_awaddr\(15),
      O => \addr[22]_i_2_n_0\
    );
\addr[22]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => addr_offset_r(21),
      I1 => start_reg_rep_n_0,
      I2 => \^m_axi_awaddr\(14),
      O => \addr[22]_i_3_n_0\
    );
\addr[22]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => addr_offset_r(20),
      I1 => start_reg_rep_n_0,
      I2 => \^m_axi_awaddr\(13),
      O => \addr[22]_i_4_n_0\
    );
\addr[22]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => addr_offset_r(19),
      I1 => start_reg_rep_n_0,
      I2 => \^m_axi_awaddr\(12),
      O => \addr[22]_i_5_n_0\
    );
\addr[22]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => addr_offset_r(18),
      I1 => start_reg_rep_n_0,
      I2 => \^m_axi_awaddr\(11),
      O => \addr[22]_i_6_n_0\
    );
\addr[22]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => addr_offset_r(17),
      I1 => start_reg_rep_n_0,
      I2 => \^m_axi_awaddr\(10),
      O => \addr[22]_i_7_n_0\
    );
\addr[22]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => addr_offset_r(16),
      I1 => start_reg_rep_n_0,
      I2 => \^m_axi_awaddr\(9),
      O => \addr[22]_i_8_n_0\
    );
\addr[22]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => addr_offset_r(15),
      I1 => start_reg_rep_n_0,
      I2 => \^m_axi_awaddr\(8),
      O => \addr[22]_i_9_n_0\
    );
\addr[30]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => addr_offset_r(30),
      I1 => start_reg_rep_n_0,
      I2 => \^m_axi_awaddr\(23),
      O => \addr[30]_i_2_n_0\
    );
\addr[30]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => addr_offset_r(29),
      I1 => start_reg_rep_n_0,
      I2 => \^m_axi_awaddr\(22),
      O => \addr[30]_i_3_n_0\
    );
\addr[30]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => addr_offset_r(28),
      I1 => start_reg_rep_n_0,
      I2 => \^m_axi_awaddr\(21),
      O => \addr[30]_i_4_n_0\
    );
\addr[30]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => addr_offset_r(27),
      I1 => start_reg_rep_n_0,
      I2 => \^m_axi_awaddr\(20),
      O => \addr[30]_i_5_n_0\
    );
\addr[30]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => addr_offset_r(26),
      I1 => start_reg_rep_n_0,
      I2 => \^m_axi_awaddr\(19),
      O => \addr[30]_i_6_n_0\
    );
\addr[30]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => addr_offset_r(25),
      I1 => start_reg_rep_n_0,
      I2 => \^m_axi_awaddr\(18),
      O => \addr[30]_i_7_n_0\
    );
\addr[30]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => addr_offset_r(24),
      I1 => start_reg_rep_n_0,
      I2 => \^m_axi_awaddr\(17),
      O => \addr[30]_i_8_n_0\
    );
\addr[30]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => addr_offset_r(23),
      I1 => start_reg_rep_n_0,
      I2 => \^m_axi_awaddr\(16),
      O => \addr[30]_i_9_n_0\
    );
\addr[38]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => addr_offset_r(38),
      I1 => start_reg_rep_n_0,
      I2 => \^m_axi_awaddr\(31),
      O => \addr[38]_i_2_n_0\
    );
\addr[38]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => addr_offset_r(37),
      I1 => start_reg_rep_n_0,
      I2 => \^m_axi_awaddr\(30),
      O => \addr[38]_i_3_n_0\
    );
\addr[38]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => addr_offset_r(36),
      I1 => start_reg_rep_n_0,
      I2 => \^m_axi_awaddr\(29),
      O => \addr[38]_i_4_n_0\
    );
\addr[38]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => addr_offset_r(35),
      I1 => start_reg_rep_n_0,
      I2 => \^m_axi_awaddr\(28),
      O => \addr[38]_i_5_n_0\
    );
\addr[38]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => addr_offset_r(34),
      I1 => start_reg_rep_n_0,
      I2 => \^m_axi_awaddr\(27),
      O => \addr[38]_i_6_n_0\
    );
\addr[38]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => addr_offset_r(33),
      I1 => start_reg_rep_n_0,
      I2 => \^m_axi_awaddr\(26),
      O => \addr[38]_i_7_n_0\
    );
\addr[38]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => addr_offset_r(32),
      I1 => start_reg_rep_n_0,
      I2 => \^m_axi_awaddr\(25),
      O => \addr[38]_i_8_n_0\
    );
\addr[38]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => addr_offset_r(31),
      I1 => start_reg_rep_n_0,
      I2 => \^m_axi_awaddr\(24),
      O => \addr[38]_i_9_n_0\
    );
\addr[46]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => addr_offset_r(46),
      I1 => start_reg_rep_n_0,
      I2 => \^m_axi_awaddr\(39),
      O => \addr[46]_i_2_n_0\
    );
\addr[46]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => addr_offset_r(45),
      I1 => start_reg_rep_n_0,
      I2 => \^m_axi_awaddr\(38),
      O => \addr[46]_i_3_n_0\
    );
\addr[46]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => addr_offset_r(44),
      I1 => start_reg_rep_n_0,
      I2 => \^m_axi_awaddr\(37),
      O => \addr[46]_i_4_n_0\
    );
\addr[46]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => addr_offset_r(43),
      I1 => start_reg_rep_n_0,
      I2 => \^m_axi_awaddr\(36),
      O => \addr[46]_i_5_n_0\
    );
\addr[46]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => addr_offset_r(42),
      I1 => start_reg_rep_n_0,
      I2 => \^m_axi_awaddr\(35),
      O => \addr[46]_i_6_n_0\
    );
\addr[46]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => addr_offset_r(41),
      I1 => start_reg_rep_n_0,
      I2 => \^m_axi_awaddr\(34),
      O => \addr[46]_i_7_n_0\
    );
\addr[46]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => addr_offset_r(40),
      I1 => start_reg_rep_n_0,
      I2 => \^m_axi_awaddr\(33),
      O => \addr[46]_i_8_n_0\
    );
\addr[46]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => addr_offset_r(39),
      I1 => start_reg_rep_n_0,
      I2 => \^m_axi_awaddr\(32),
      O => \addr[46]_i_9_n_0\
    );
\addr[54]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => addr_offset_r(54),
      I1 => start_reg_rep_n_0,
      I2 => \^m_axi_awaddr\(47),
      O => \addr[54]_i_2_n_0\
    );
\addr[54]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => addr_offset_r(53),
      I1 => start_reg_rep_n_0,
      I2 => \^m_axi_awaddr\(46),
      O => \addr[54]_i_3_n_0\
    );
\addr[54]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => addr_offset_r(52),
      I1 => start_reg_rep_n_0,
      I2 => \^m_axi_awaddr\(45),
      O => \addr[54]_i_4_n_0\
    );
\addr[54]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => addr_offset_r(51),
      I1 => start_reg_rep_n_0,
      I2 => \^m_axi_awaddr\(44),
      O => \addr[54]_i_5_n_0\
    );
\addr[54]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => addr_offset_r(50),
      I1 => start_reg_rep_n_0,
      I2 => \^m_axi_awaddr\(43),
      O => \addr[54]_i_6_n_0\
    );
\addr[54]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => addr_offset_r(49),
      I1 => start_reg_rep_n_0,
      I2 => \^m_axi_awaddr\(42),
      O => \addr[54]_i_7_n_0\
    );
\addr[54]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => addr_offset_r(48),
      I1 => start_reg_rep_n_0,
      I2 => \^m_axi_awaddr\(41),
      O => \addr[54]_i_8_n_0\
    );
\addr[54]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => addr_offset_r(47),
      I1 => start_reg_rep_n_0,
      I2 => \^m_axi_awaddr\(40),
      O => \addr[54]_i_9_n_0\
    );
\addr[62]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => addr_offset_r(62),
      I1 => start_reg_rep_n_0,
      I2 => \^m_axi_awaddr\(55),
      O => \addr[62]_i_2_n_0\
    );
\addr[62]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => addr_offset_r(61),
      I1 => start_reg_rep_n_0,
      I2 => \^m_axi_awaddr\(54),
      O => \addr[62]_i_3_n_0\
    );
\addr[62]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => addr_offset_r(60),
      I1 => start_reg_rep_n_0,
      I2 => \^m_axi_awaddr\(53),
      O => \addr[62]_i_4_n_0\
    );
\addr[62]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => addr_offset_r(59),
      I1 => start_reg_rep_n_0,
      I2 => \^m_axi_awaddr\(52),
      O => \addr[62]_i_5_n_0\
    );
\addr[62]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => addr_offset_r(58),
      I1 => start_reg_rep_n_0,
      I2 => \^m_axi_awaddr\(51),
      O => \addr[62]_i_6_n_0\
    );
\addr[62]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => addr_offset_r(57),
      I1 => start_reg_rep_n_0,
      I2 => \^m_axi_awaddr\(50),
      O => \addr[62]_i_7_n_0\
    );
\addr[62]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => addr_offset_r(56),
      I1 => start_reg_rep_n_0,
      I2 => \^m_axi_awaddr\(49),
      O => \addr[62]_i_8_n_0\
    );
\addr[62]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => addr_offset_r(55),
      I1 => start_reg_rep_n_0,
      I2 => \^m_axi_awaddr\(48),
      O => \addr[62]_i_9_n_0\
    );
\addr[63]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => addr_offset_r(63),
      I1 => start_reg_rep_n_0,
      I2 => \^m_axi_awaddr\(56),
      O => \addr[63]_i_3_n_0\
    );
\addr_offset_r_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ctrl_start,
      D => baseAddr(2),
      Q => addr_offset_r(10),
      R => '0'
    );
\addr_offset_r_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ctrl_start,
      D => baseAddr(3),
      Q => addr_offset_r(11),
      R => '0'
    );
\addr_offset_r_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ctrl_start,
      D => baseAddr(4),
      Q => addr_offset_r(12),
      R => '0'
    );
\addr_offset_r_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ctrl_start,
      D => baseAddr(5),
      Q => addr_offset_r(13),
      R => '0'
    );
\addr_offset_r_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ctrl_start,
      D => baseAddr(6),
      Q => addr_offset_r(14),
      R => '0'
    );
\addr_offset_r_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ctrl_start,
      D => baseAddr(7),
      Q => addr_offset_r(15),
      R => '0'
    );
\addr_offset_r_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ctrl_start,
      D => baseAddr(8),
      Q => addr_offset_r(16),
      R => '0'
    );
\addr_offset_r_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ctrl_start,
      D => baseAddr(9),
      Q => addr_offset_r(17),
      R => '0'
    );
\addr_offset_r_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ctrl_start,
      D => baseAddr(10),
      Q => addr_offset_r(18),
      R => '0'
    );
\addr_offset_r_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ctrl_start,
      D => baseAddr(11),
      Q => addr_offset_r(19),
      R => '0'
    );
\addr_offset_r_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ctrl_start,
      D => baseAddr(12),
      Q => addr_offset_r(20),
      R => '0'
    );
\addr_offset_r_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ctrl_start,
      D => baseAddr(13),
      Q => addr_offset_r(21),
      R => '0'
    );
\addr_offset_r_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ctrl_start,
      D => baseAddr(14),
      Q => addr_offset_r(22),
      R => '0'
    );
\addr_offset_r_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ctrl_start,
      D => baseAddr(15),
      Q => addr_offset_r(23),
      R => '0'
    );
\addr_offset_r_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ctrl_start,
      D => baseAddr(16),
      Q => addr_offset_r(24),
      R => '0'
    );
\addr_offset_r_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ctrl_start,
      D => baseAddr(17),
      Q => addr_offset_r(25),
      R => '0'
    );
\addr_offset_r_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ctrl_start,
      D => baseAddr(18),
      Q => addr_offset_r(26),
      R => '0'
    );
\addr_offset_r_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ctrl_start,
      D => baseAddr(19),
      Q => addr_offset_r(27),
      R => '0'
    );
\addr_offset_r_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ctrl_start,
      D => baseAddr(20),
      Q => addr_offset_r(28),
      R => '0'
    );
\addr_offset_r_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ctrl_start,
      D => baseAddr(21),
      Q => addr_offset_r(29),
      R => '0'
    );
\addr_offset_r_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ctrl_start,
      D => baseAddr(22),
      Q => addr_offset_r(30),
      R => '0'
    );
\addr_offset_r_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ctrl_start,
      D => baseAddr(23),
      Q => addr_offset_r(31),
      R => '0'
    );
\addr_offset_r_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ctrl_start,
      D => baseAddr(24),
      Q => addr_offset_r(32),
      R => '0'
    );
\addr_offset_r_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ctrl_start,
      D => baseAddr(25),
      Q => addr_offset_r(33),
      R => '0'
    );
\addr_offset_r_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ctrl_start,
      D => baseAddr(26),
      Q => addr_offset_r(34),
      R => '0'
    );
\addr_offset_r_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ctrl_start,
      D => baseAddr(27),
      Q => addr_offset_r(35),
      R => '0'
    );
\addr_offset_r_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ctrl_start,
      D => baseAddr(28),
      Q => addr_offset_r(36),
      R => '0'
    );
\addr_offset_r_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ctrl_start,
      D => baseAddr(29),
      Q => addr_offset_r(37),
      R => '0'
    );
\addr_offset_r_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ctrl_start,
      D => baseAddr(30),
      Q => addr_offset_r(38),
      R => '0'
    );
\addr_offset_r_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ctrl_start,
      D => baseAddr(31),
      Q => addr_offset_r(39),
      R => '0'
    );
\addr_offset_r_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ctrl_start,
      D => baseAddr(32),
      Q => addr_offset_r(40),
      R => '0'
    );
\addr_offset_r_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ctrl_start,
      D => baseAddr(33),
      Q => addr_offset_r(41),
      R => '0'
    );
\addr_offset_r_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ctrl_start,
      D => baseAddr(34),
      Q => addr_offset_r(42),
      R => '0'
    );
\addr_offset_r_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ctrl_start,
      D => baseAddr(35),
      Q => addr_offset_r(43),
      R => '0'
    );
\addr_offset_r_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ctrl_start,
      D => baseAddr(36),
      Q => addr_offset_r(44),
      R => '0'
    );
\addr_offset_r_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ctrl_start,
      D => baseAddr(37),
      Q => addr_offset_r(45),
      R => '0'
    );
\addr_offset_r_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ctrl_start,
      D => baseAddr(38),
      Q => addr_offset_r(46),
      R => '0'
    );
\addr_offset_r_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ctrl_start,
      D => baseAddr(39),
      Q => addr_offset_r(47),
      R => '0'
    );
\addr_offset_r_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ctrl_start,
      D => baseAddr(40),
      Q => addr_offset_r(48),
      R => '0'
    );
\addr_offset_r_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ctrl_start,
      D => baseAddr(41),
      Q => addr_offset_r(49),
      R => '0'
    );
\addr_offset_r_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ctrl_start,
      D => baseAddr(42),
      Q => addr_offset_r(50),
      R => '0'
    );
\addr_offset_r_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ctrl_start,
      D => baseAddr(43),
      Q => addr_offset_r(51),
      R => '0'
    );
\addr_offset_r_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ctrl_start,
      D => baseAddr(44),
      Q => addr_offset_r(52),
      R => '0'
    );
\addr_offset_r_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ctrl_start,
      D => baseAddr(45),
      Q => addr_offset_r(53),
      R => '0'
    );
\addr_offset_r_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ctrl_start,
      D => baseAddr(46),
      Q => addr_offset_r(54),
      R => '0'
    );
\addr_offset_r_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ctrl_start,
      D => baseAddr(47),
      Q => addr_offset_r(55),
      R => '0'
    );
\addr_offset_r_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ctrl_start,
      D => baseAddr(48),
      Q => addr_offset_r(56),
      R => '0'
    );
\addr_offset_r_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ctrl_start,
      D => baseAddr(49),
      Q => addr_offset_r(57),
      R => '0'
    );
\addr_offset_r_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ctrl_start,
      D => baseAddr(50),
      Q => addr_offset_r(58),
      R => '0'
    );
\addr_offset_r_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ctrl_start,
      D => baseAddr(51),
      Q => addr_offset_r(59),
      R => '0'
    );
\addr_offset_r_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ctrl_start,
      D => baseAddr(52),
      Q => addr_offset_r(60),
      R => '0'
    );
\addr_offset_r_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ctrl_start,
      D => baseAddr(53),
      Q => addr_offset_r(61),
      R => '0'
    );
\addr_offset_r_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ctrl_start,
      D => baseAddr(54),
      Q => addr_offset_r(62),
      R => '0'
    );
\addr_offset_r_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ctrl_start,
      D => baseAddr(55),
      Q => addr_offset_r(63),
      R => '0'
    );
\addr_offset_r_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ctrl_start,
      D => baseAddr(0),
      Q => addr_offset_r(8),
      R => '0'
    );
\addr_offset_r_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ctrl_start,
      D => baseAddr(1),
      Q => addr_offset_r(9),
      R => '0'
    );
\addr_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => inst_aw_transaction_cntr_n_1,
      D => \addr_reg[14]_i_1_n_12\,
      Q => \^m_axi_awaddr\(3),
      R => '0'
    );
\addr_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => inst_aw_transaction_cntr_n_1,
      D => \addr_reg[14]_i_1_n_11\,
      Q => \^m_axi_awaddr\(4),
      R => '0'
    );
\addr_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => inst_aw_transaction_cntr_n_1,
      D => \addr_reg[14]_i_1_n_10\,
      Q => \^m_axi_awaddr\(5),
      R => '0'
    );
\addr_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => inst_aw_transaction_cntr_n_1,
      D => \addr_reg[14]_i_1_n_9\,
      Q => \^m_axi_awaddr\(6),
      R => '0'
    );
\addr_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => inst_aw_transaction_cntr_n_1,
      D => \addr_reg[14]_i_1_n_8\,
      Q => \^m_axi_awaddr\(7),
      R => '0'
    );
\addr_reg[14]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => \addr_reg[14]_i_1_n_0\,
      CO(6) => \addr_reg[14]_i_1_n_1\,
      CO(5) => \addr_reg[14]_i_1_n_2\,
      CO(4) => \addr_reg[14]_i_1_n_3\,
      CO(3) => \addr_reg[14]_i_1_n_4\,
      CO(2) => \addr_reg[14]_i_1_n_5\,
      CO(1) => \addr_reg[14]_i_1_n_6\,
      CO(0) => \addr_reg[14]_i_1_n_7\,
      DI(7 downto 2) => B"000000",
      DI(1) => \addr[14]_i_2_n_0\,
      DI(0) => '0',
      O(7) => \addr_reg[14]_i_1_n_8\,
      O(6) => \addr_reg[14]_i_1_n_9\,
      O(5) => \addr_reg[14]_i_1_n_10\,
      O(4) => \addr_reg[14]_i_1_n_11\,
      O(3) => \addr_reg[14]_i_1_n_12\,
      O(2) => \addr_reg[14]_i_1_n_13\,
      O(1) => \addr_reg[14]_i_1_n_14\,
      O(0) => \addr_reg[14]_i_1_n_15\,
      S(7) => \addr[14]_i_3_n_0\,
      S(6) => \addr[14]_i_4_n_0\,
      S(5) => \addr[14]_i_5_n_0\,
      S(4) => \addr[14]_i_6_n_0\,
      S(3) => \addr[14]_i_7_n_0\,
      S(2) => \addr[14]_i_8_n_0\,
      S(1) => \addr[14]_i_9_n_0\,
      S(0) => \addr[14]_i_10_n_0\
    );
\addr_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => inst_aw_transaction_cntr_n_1,
      D => \addr_reg[22]_i_1_n_15\,
      Q => \^m_axi_awaddr\(8),
      R => '0'
    );
\addr_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => inst_aw_transaction_cntr_n_1,
      D => \addr_reg[22]_i_1_n_14\,
      Q => \^m_axi_awaddr\(9),
      R => '0'
    );
\addr_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => inst_aw_transaction_cntr_n_1,
      D => \addr_reg[22]_i_1_n_13\,
      Q => \^m_axi_awaddr\(10),
      R => '0'
    );
\addr_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => inst_aw_transaction_cntr_n_1,
      D => \addr_reg[22]_i_1_n_12\,
      Q => \^m_axi_awaddr\(11),
      R => '0'
    );
\addr_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => inst_aw_transaction_cntr_n_1,
      D => \addr_reg[22]_i_1_n_11\,
      Q => \^m_axi_awaddr\(12),
      R => '0'
    );
\addr_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => inst_aw_transaction_cntr_n_1,
      D => \addr_reg[22]_i_1_n_10\,
      Q => \^m_axi_awaddr\(13),
      R => '0'
    );
\addr_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => inst_aw_transaction_cntr_n_1,
      D => \addr_reg[22]_i_1_n_9\,
      Q => \^m_axi_awaddr\(14),
      R => '0'
    );
\addr_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => inst_aw_transaction_cntr_n_1,
      D => \addr_reg[22]_i_1_n_8\,
      Q => \^m_axi_awaddr\(15),
      R => '0'
    );
\addr_reg[22]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \addr_reg[14]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \addr_reg[22]_i_1_n_0\,
      CO(6) => \addr_reg[22]_i_1_n_1\,
      CO(5) => \addr_reg[22]_i_1_n_2\,
      CO(4) => \addr_reg[22]_i_1_n_3\,
      CO(3) => \addr_reg[22]_i_1_n_4\,
      CO(2) => \addr_reg[22]_i_1_n_5\,
      CO(1) => \addr_reg[22]_i_1_n_6\,
      CO(0) => \addr_reg[22]_i_1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \addr_reg[22]_i_1_n_8\,
      O(6) => \addr_reg[22]_i_1_n_9\,
      O(5) => \addr_reg[22]_i_1_n_10\,
      O(4) => \addr_reg[22]_i_1_n_11\,
      O(3) => \addr_reg[22]_i_1_n_12\,
      O(2) => \addr_reg[22]_i_1_n_13\,
      O(1) => \addr_reg[22]_i_1_n_14\,
      O(0) => \addr_reg[22]_i_1_n_15\,
      S(7) => \addr[22]_i_2_n_0\,
      S(6) => \addr[22]_i_3_n_0\,
      S(5) => \addr[22]_i_4_n_0\,
      S(4) => \addr[22]_i_5_n_0\,
      S(3) => \addr[22]_i_6_n_0\,
      S(2) => \addr[22]_i_7_n_0\,
      S(1) => \addr[22]_i_8_n_0\,
      S(0) => \addr[22]_i_9_n_0\
    );
\addr_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => inst_aw_transaction_cntr_n_1,
      D => \addr_reg[30]_i_1_n_15\,
      Q => \^m_axi_awaddr\(16),
      R => '0'
    );
\addr_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => inst_aw_transaction_cntr_n_1,
      D => \addr_reg[30]_i_1_n_14\,
      Q => \^m_axi_awaddr\(17),
      R => '0'
    );
\addr_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => inst_aw_transaction_cntr_n_1,
      D => \addr_reg[30]_i_1_n_13\,
      Q => \^m_axi_awaddr\(18),
      R => '0'
    );
\addr_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => inst_aw_transaction_cntr_n_1,
      D => \addr_reg[30]_i_1_n_12\,
      Q => \^m_axi_awaddr\(19),
      R => '0'
    );
\addr_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => inst_aw_transaction_cntr_n_1,
      D => \addr_reg[30]_i_1_n_11\,
      Q => \^m_axi_awaddr\(20),
      R => '0'
    );
\addr_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => inst_aw_transaction_cntr_n_1,
      D => \addr_reg[30]_i_1_n_10\,
      Q => \^m_axi_awaddr\(21),
      R => '0'
    );
\addr_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => inst_aw_transaction_cntr_n_1,
      D => \addr_reg[30]_i_1_n_9\,
      Q => \^m_axi_awaddr\(22),
      R => '0'
    );
\addr_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => inst_aw_transaction_cntr_n_1,
      D => \addr_reg[30]_i_1_n_8\,
      Q => \^m_axi_awaddr\(23),
      R => '0'
    );
\addr_reg[30]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \addr_reg[22]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \addr_reg[30]_i_1_n_0\,
      CO(6) => \addr_reg[30]_i_1_n_1\,
      CO(5) => \addr_reg[30]_i_1_n_2\,
      CO(4) => \addr_reg[30]_i_1_n_3\,
      CO(3) => \addr_reg[30]_i_1_n_4\,
      CO(2) => \addr_reg[30]_i_1_n_5\,
      CO(1) => \addr_reg[30]_i_1_n_6\,
      CO(0) => \addr_reg[30]_i_1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \addr_reg[30]_i_1_n_8\,
      O(6) => \addr_reg[30]_i_1_n_9\,
      O(5) => \addr_reg[30]_i_1_n_10\,
      O(4) => \addr_reg[30]_i_1_n_11\,
      O(3) => \addr_reg[30]_i_1_n_12\,
      O(2) => \addr_reg[30]_i_1_n_13\,
      O(1) => \addr_reg[30]_i_1_n_14\,
      O(0) => \addr_reg[30]_i_1_n_15\,
      S(7) => \addr[30]_i_2_n_0\,
      S(6) => \addr[30]_i_3_n_0\,
      S(5) => \addr[30]_i_4_n_0\,
      S(4) => \addr[30]_i_5_n_0\,
      S(3) => \addr[30]_i_6_n_0\,
      S(2) => \addr[30]_i_7_n_0\,
      S(1) => \addr[30]_i_8_n_0\,
      S(0) => \addr[30]_i_9_n_0\
    );
\addr_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => inst_aw_transaction_cntr_n_1,
      D => \addr_reg[38]_i_1_n_15\,
      Q => \^m_axi_awaddr\(24),
      R => '0'
    );
\addr_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => inst_aw_transaction_cntr_n_1,
      D => \addr_reg[38]_i_1_n_14\,
      Q => \^m_axi_awaddr\(25),
      R => '0'
    );
\addr_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => inst_aw_transaction_cntr_n_1,
      D => \addr_reg[38]_i_1_n_13\,
      Q => \^m_axi_awaddr\(26),
      R => '0'
    );
\addr_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => inst_aw_transaction_cntr_n_1,
      D => \addr_reg[38]_i_1_n_12\,
      Q => \^m_axi_awaddr\(27),
      R => '0'
    );
\addr_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => inst_aw_transaction_cntr_n_1,
      D => \addr_reg[38]_i_1_n_11\,
      Q => \^m_axi_awaddr\(28),
      R => '0'
    );
\addr_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => inst_aw_transaction_cntr_n_1,
      D => \addr_reg[38]_i_1_n_10\,
      Q => \^m_axi_awaddr\(29),
      R => '0'
    );
\addr_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => inst_aw_transaction_cntr_n_1,
      D => \addr_reg[38]_i_1_n_9\,
      Q => \^m_axi_awaddr\(30),
      R => '0'
    );
\addr_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => inst_aw_transaction_cntr_n_1,
      D => \addr_reg[38]_i_1_n_8\,
      Q => \^m_axi_awaddr\(31),
      R => '0'
    );
\addr_reg[38]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \addr_reg[30]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \addr_reg[38]_i_1_n_0\,
      CO(6) => \addr_reg[38]_i_1_n_1\,
      CO(5) => \addr_reg[38]_i_1_n_2\,
      CO(4) => \addr_reg[38]_i_1_n_3\,
      CO(3) => \addr_reg[38]_i_1_n_4\,
      CO(2) => \addr_reg[38]_i_1_n_5\,
      CO(1) => \addr_reg[38]_i_1_n_6\,
      CO(0) => \addr_reg[38]_i_1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \addr_reg[38]_i_1_n_8\,
      O(6) => \addr_reg[38]_i_1_n_9\,
      O(5) => \addr_reg[38]_i_1_n_10\,
      O(4) => \addr_reg[38]_i_1_n_11\,
      O(3) => \addr_reg[38]_i_1_n_12\,
      O(2) => \addr_reg[38]_i_1_n_13\,
      O(1) => \addr_reg[38]_i_1_n_14\,
      O(0) => \addr_reg[38]_i_1_n_15\,
      S(7) => \addr[38]_i_2_n_0\,
      S(6) => \addr[38]_i_3_n_0\,
      S(5) => \addr[38]_i_4_n_0\,
      S(4) => \addr[38]_i_5_n_0\,
      S(3) => \addr[38]_i_6_n_0\,
      S(2) => \addr[38]_i_7_n_0\,
      S(1) => \addr[38]_i_8_n_0\,
      S(0) => \addr[38]_i_9_n_0\
    );
\addr_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => inst_aw_transaction_cntr_n_1,
      D => \addr_reg[46]_i_1_n_15\,
      Q => \^m_axi_awaddr\(32),
      R => '0'
    );
\addr_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => inst_aw_transaction_cntr_n_1,
      D => \addr_reg[46]_i_1_n_14\,
      Q => \^m_axi_awaddr\(33),
      R => '0'
    );
\addr_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => inst_aw_transaction_cntr_n_1,
      D => \addr_reg[46]_i_1_n_13\,
      Q => \^m_axi_awaddr\(34),
      R => '0'
    );
\addr_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => inst_aw_transaction_cntr_n_1,
      D => \addr_reg[46]_i_1_n_12\,
      Q => \^m_axi_awaddr\(35),
      R => '0'
    );
\addr_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => inst_aw_transaction_cntr_n_1,
      D => \addr_reg[46]_i_1_n_11\,
      Q => \^m_axi_awaddr\(36),
      R => '0'
    );
\addr_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => inst_aw_transaction_cntr_n_1,
      D => \addr_reg[46]_i_1_n_10\,
      Q => \^m_axi_awaddr\(37),
      R => '0'
    );
\addr_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => inst_aw_transaction_cntr_n_1,
      D => \addr_reg[46]_i_1_n_9\,
      Q => \^m_axi_awaddr\(38),
      R => '0'
    );
\addr_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => inst_aw_transaction_cntr_n_1,
      D => \addr_reg[46]_i_1_n_8\,
      Q => \^m_axi_awaddr\(39),
      R => '0'
    );
\addr_reg[46]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \addr_reg[38]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \addr_reg[46]_i_1_n_0\,
      CO(6) => \addr_reg[46]_i_1_n_1\,
      CO(5) => \addr_reg[46]_i_1_n_2\,
      CO(4) => \addr_reg[46]_i_1_n_3\,
      CO(3) => \addr_reg[46]_i_1_n_4\,
      CO(2) => \addr_reg[46]_i_1_n_5\,
      CO(1) => \addr_reg[46]_i_1_n_6\,
      CO(0) => \addr_reg[46]_i_1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \addr_reg[46]_i_1_n_8\,
      O(6) => \addr_reg[46]_i_1_n_9\,
      O(5) => \addr_reg[46]_i_1_n_10\,
      O(4) => \addr_reg[46]_i_1_n_11\,
      O(3) => \addr_reg[46]_i_1_n_12\,
      O(2) => \addr_reg[46]_i_1_n_13\,
      O(1) => \addr_reg[46]_i_1_n_14\,
      O(0) => \addr_reg[46]_i_1_n_15\,
      S(7) => \addr[46]_i_2_n_0\,
      S(6) => \addr[46]_i_3_n_0\,
      S(5) => \addr[46]_i_4_n_0\,
      S(4) => \addr[46]_i_5_n_0\,
      S(3) => \addr[46]_i_6_n_0\,
      S(2) => \addr[46]_i_7_n_0\,
      S(1) => \addr[46]_i_8_n_0\,
      S(0) => \addr[46]_i_9_n_0\
    );
\addr_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => inst_aw_transaction_cntr_n_1,
      D => \addr_reg[54]_i_1_n_15\,
      Q => \^m_axi_awaddr\(40),
      R => '0'
    );
\addr_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => inst_aw_transaction_cntr_n_1,
      D => \addr_reg[54]_i_1_n_14\,
      Q => \^m_axi_awaddr\(41),
      R => '0'
    );
\addr_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => inst_aw_transaction_cntr_n_1,
      D => \addr_reg[54]_i_1_n_13\,
      Q => \^m_axi_awaddr\(42),
      R => '0'
    );
\addr_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => inst_aw_transaction_cntr_n_1,
      D => \addr_reg[54]_i_1_n_12\,
      Q => \^m_axi_awaddr\(43),
      R => '0'
    );
\addr_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => inst_aw_transaction_cntr_n_1,
      D => \addr_reg[54]_i_1_n_11\,
      Q => \^m_axi_awaddr\(44),
      R => '0'
    );
\addr_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => inst_aw_transaction_cntr_n_1,
      D => \addr_reg[54]_i_1_n_10\,
      Q => \^m_axi_awaddr\(45),
      R => '0'
    );
\addr_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => inst_aw_transaction_cntr_n_1,
      D => \addr_reg[54]_i_1_n_9\,
      Q => \^m_axi_awaddr\(46),
      R => '0'
    );
\addr_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => inst_aw_transaction_cntr_n_1,
      D => \addr_reg[54]_i_1_n_8\,
      Q => \^m_axi_awaddr\(47),
      R => '0'
    );
\addr_reg[54]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \addr_reg[46]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \addr_reg[54]_i_1_n_0\,
      CO(6) => \addr_reg[54]_i_1_n_1\,
      CO(5) => \addr_reg[54]_i_1_n_2\,
      CO(4) => \addr_reg[54]_i_1_n_3\,
      CO(3) => \addr_reg[54]_i_1_n_4\,
      CO(2) => \addr_reg[54]_i_1_n_5\,
      CO(1) => \addr_reg[54]_i_1_n_6\,
      CO(0) => \addr_reg[54]_i_1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \addr_reg[54]_i_1_n_8\,
      O(6) => \addr_reg[54]_i_1_n_9\,
      O(5) => \addr_reg[54]_i_1_n_10\,
      O(4) => \addr_reg[54]_i_1_n_11\,
      O(3) => \addr_reg[54]_i_1_n_12\,
      O(2) => \addr_reg[54]_i_1_n_13\,
      O(1) => \addr_reg[54]_i_1_n_14\,
      O(0) => \addr_reg[54]_i_1_n_15\,
      S(7) => \addr[54]_i_2_n_0\,
      S(6) => \addr[54]_i_3_n_0\,
      S(5) => \addr[54]_i_4_n_0\,
      S(4) => \addr[54]_i_5_n_0\,
      S(3) => \addr[54]_i_6_n_0\,
      S(2) => \addr[54]_i_7_n_0\,
      S(1) => \addr[54]_i_8_n_0\,
      S(0) => \addr[54]_i_9_n_0\
    );
\addr_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => inst_aw_transaction_cntr_n_1,
      D => \addr_reg[62]_i_1_n_15\,
      Q => \^m_axi_awaddr\(48),
      R => '0'
    );
\addr_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => inst_aw_transaction_cntr_n_1,
      D => \addr_reg[62]_i_1_n_14\,
      Q => \^m_axi_awaddr\(49),
      R => '0'
    );
\addr_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => inst_aw_transaction_cntr_n_1,
      D => \addr_reg[62]_i_1_n_13\,
      Q => \^m_axi_awaddr\(50),
      R => '0'
    );
\addr_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => inst_aw_transaction_cntr_n_1,
      D => \addr_reg[62]_i_1_n_12\,
      Q => \^m_axi_awaddr\(51),
      R => '0'
    );
\addr_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => inst_aw_transaction_cntr_n_1,
      D => \addr_reg[62]_i_1_n_11\,
      Q => \^m_axi_awaddr\(52),
      R => '0'
    );
\addr_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => inst_aw_transaction_cntr_n_1,
      D => \addr_reg[62]_i_1_n_10\,
      Q => \^m_axi_awaddr\(53),
      R => '0'
    );
\addr_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => inst_aw_transaction_cntr_n_1,
      D => \addr_reg[62]_i_1_n_9\,
      Q => \^m_axi_awaddr\(54),
      R => '0'
    );
\addr_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => inst_aw_transaction_cntr_n_1,
      D => \addr_reg[62]_i_1_n_8\,
      Q => \^m_axi_awaddr\(55),
      R => '0'
    );
\addr_reg[62]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \addr_reg[54]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \addr_reg[62]_i_1_n_0\,
      CO(6) => \addr_reg[62]_i_1_n_1\,
      CO(5) => \addr_reg[62]_i_1_n_2\,
      CO(4) => \addr_reg[62]_i_1_n_3\,
      CO(3) => \addr_reg[62]_i_1_n_4\,
      CO(2) => \addr_reg[62]_i_1_n_5\,
      CO(1) => \addr_reg[62]_i_1_n_6\,
      CO(0) => \addr_reg[62]_i_1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \addr_reg[62]_i_1_n_8\,
      O(6) => \addr_reg[62]_i_1_n_9\,
      O(5) => \addr_reg[62]_i_1_n_10\,
      O(4) => \addr_reg[62]_i_1_n_11\,
      O(3) => \addr_reg[62]_i_1_n_12\,
      O(2) => \addr_reg[62]_i_1_n_13\,
      O(1) => \addr_reg[62]_i_1_n_14\,
      O(0) => \addr_reg[62]_i_1_n_15\,
      S(7) => \addr[62]_i_2_n_0\,
      S(6) => \addr[62]_i_3_n_0\,
      S(5) => \addr[62]_i_4_n_0\,
      S(4) => \addr[62]_i_5_n_0\,
      S(3) => \addr[62]_i_6_n_0\,
      S(2) => \addr[62]_i_7_n_0\,
      S(1) => \addr[62]_i_8_n_0\,
      S(0) => \addr[62]_i_9_n_0\
    );
\addr_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => inst_aw_transaction_cntr_n_1,
      D => \addr_reg[63]_i_2_n_15\,
      Q => \^m_axi_awaddr\(56),
      R => '0'
    );
\addr_reg[63]_i_2\: unisim.vcomponents.CARRY8
     port map (
      CI => \addr_reg[62]_i_1_n_0\,
      CI_TOP => '0',
      CO(7 downto 0) => \NLW_addr_reg[63]_i_2_CO_UNCONNECTED\(7 downto 0),
      DI(7 downto 0) => B"00000000",
      O(7 downto 1) => \NLW_addr_reg[63]_i_2_O_UNCONNECTED\(7 downto 1),
      O(0) => \addr_reg[63]_i_2_n_15\,
      S(7 downto 1) => B"0000000",
      S(0) => \addr[63]_i_3_n_0\
    );
\addr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => inst_aw_transaction_cntr_n_1,
      D => \addr_reg[14]_i_1_n_15\,
      Q => \^m_axi_awaddr\(0),
      R => '0'
    );
\addr_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => inst_aw_transaction_cntr_n_1,
      D => \addr_reg[14]_i_1_n_14\,
      Q => \^m_axi_awaddr\(1),
      R => '0'
    );
\addr_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => inst_aw_transaction_cntr_n_1,
      D => \addr_reg[14]_i_1_n_13\,
      Q => \^m_axi_awaddr\(2),
      R => '0'
    );
awvalid_r_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => inst_w_to_aw_cntr_n_1,
      Q => \^awvalid_r_reg_0\,
      R => inst_aw_transaction_cntr_n_0
    );
ctrl_start_d1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => ctrl_start,
      Q => ctrl_start_d1,
      R => '0'
    );
done_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => done0,
      Q => ctrl_done,
      R => '0'
    );
\final_burst_len_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \total_len_r_reg_n_0_[0]\,
      Q => final_burst_len(0),
      R => '0'
    );
\final_burst_len_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \total_len_r_reg_n_0_[1]\,
      Q => final_burst_len(1),
      R => '0'
    );
\final_burst_len_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \total_len_r_reg_n_0_[2]\,
      Q => final_burst_len(2),
      R => '0'
    );
\final_burst_len_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \total_len_r_reg_n_0_[3]\,
      Q => final_burst_len(3),
      R => '0'
    );
inst_aw_to_b_transaction_cntr: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_counter__parameterized2\
     port map (
      clk => clk,
      \count_r_reg[0]_0\ => inst_aw_transaction_cntr_n_0,
      \count_r_reg[3]_0\ => inst_w_to_aw_cntr_n_0,
      is_zero_r_reg_0 => \^awvalid_r_reg_0\,
      m_axi_AWREADY => m_axi_AWREADY,
      m_axi_BVALID => m_axi_BVALID,
      stall_aw => stall_aw
    );
inst_aw_transaction_cntr: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_counter__parameterized0\
     port map (
      Q(3 downto 0) => final_burst_len(3 downto 0),
      clk => clk,
      \count_r_reg[0]_0\ => start_reg_rep_n_0,
      \count_r_reg[0]_1\ => \^awvalid_r_reg_0\,
      data(13) => data(55),
      data(12) => data(16),
      data(11 downto 0) => data(11 downto 0),
      \is_zero_r_i_4__1_0\ => inst_w_to_aw_cntr_n_0,
      is_zero_r_reg_0 => inst_b_transaction_cntr_n_0,
      m_axi_AWLEN(3 downto 0) => m_axi_AWLEN(3 downto 0),
      m_axi_AWREADY => m_axi_AWREADY,
      rst_n => rst_n,
      rst_n_0 => inst_aw_transaction_cntr_n_0,
      start => start,
      start_reg_rep => inst_aw_transaction_cntr_n_1
    );
inst_b_transaction_cntr: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_counter__parameterized0_0\
     port map (
      clk => clk,
      \count_r_reg[55]_0\ => inst_aw_transaction_cntr_n_0,
      data(13) => data(55),
      data(12) => data(16),
      data(11 downto 0) => data(11 downto 0),
      done0 => done0,
      is_zero_r_reg_0 => \start_reg_rep__0_n_0\,
      m_axi_BVALID => m_axi_BVALID,
      start => start,
      \total_len_r_reg[8]\ => inst_b_transaction_cntr_n_0
    );
inst_burst_cntr: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_counter
     port map (
      D(0) => inst_w_transaction_cntr_n_1,
      E(0) => is_zero_r,
      Q(2 downto 0) => final_burst_len(3 downto 1),
      clk => clk,
      \count_r_reg[0]_0\(0) => inst_burst_cntr_n_2,
      \count_r_reg[0]_1\ => inst_aw_transaction_cntr_n_0,
      \count_r_reg[1]_0\ => inst_w_transaction_cntr_n_2,
      \count_r_reg[3]_0\ => inst_burst_cntr_n_4,
      data_valid => m_axi_wvalid_i,
      is_zero_r_reg_0 => is_zero_r_reg,
      is_zero_r_reg_1 => inst_burst_cntr_n_3,
      is_zero_r_reg_2 => inst_burst_cntr_n_5,
      is_zero_r_reg_3 => inst_burst_cntr_n_6,
      is_zero_r_reg_4 => inst_w_transaction_cntr_n_3,
      m_axi_WREADY => m_axi_WREADY,
      start => start,
      start_reg => inst_burst_cntr_n_1,
      w_running => w_running,
      w_running_reg => inst_w_transaction_cntr_n_0,
      wfirst => wfirst
    );
inst_w_to_aw_cntr: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_counter__parameterized1\
     port map (
      clk => clk,
      \count_r_reg[3]_0\ => inst_aw_transaction_cntr_n_0,
      is_zero_r_reg_0 => \^awvalid_r_reg_0\,
      m_axi_AWREADY => m_axi_AWREADY,
      m_axi_AWREADY_0 => inst_w_to_aw_cntr_n_0,
      m_axi_AWREADY_1 => inst_w_to_aw_cntr_n_1,
      stall_aw => stall_aw,
      wfirst_pulse => wfirst_pulse
    );
inst_w_transaction_cntr: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_counter__parameterized0_1\
     port map (
      D(0) => inst_w_transaction_cntr_n_1,
      E(0) => is_zero_r,
      Q(3 downto 0) => final_burst_len(3 downto 0),
      clk => clk,
      \count_r_reg[0]_0\ => inst_burst_cntr_n_1,
      \count_r_reg[0]_1\(0) => inst_burst_cntr_n_2,
      \count_r_reg[55]_0\ => inst_aw_transaction_cntr_n_0,
      data(13) => data(55),
      data(12) => data(16),
      data(11 downto 0) => data(11 downto 0),
      data_valid => m_axi_wvalid_i,
      \final_burst_len_reg[2]\ => inst_w_transaction_cntr_n_3,
      is_zero_r_i_3_0 => inst_burst_cntr_n_3,
      is_zero_r_reg_0 => inst_w_transaction_cntr_n_0,
      is_zero_r_reg_1 => inst_burst_cntr_n_4,
      is_zero_r_reg_2 => inst_b_transaction_cntr_n_0,
      m_axi_WREADY => m_axi_WREADY,
      start => start,
      \total_len_r_reg[8]\ => inst_w_transaction_cntr_n_2,
      w_running => w_running
    );
inst_xpm_fifo_sync: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_fifo_sync
     port map (
      almost_empty => NLW_inst_xpm_fifo_sync_almost_empty_UNCONNECTED,
      almost_full => NLW_inst_xpm_fifo_sync_almost_full_UNCONNECTED,
      data_valid => m_axi_wvalid_i,
      dbiterr => NLW_inst_xpm_fifo_sync_dbiterr_UNCONNECTED,
      din(127 downto 0) => s_axis_tdata(127 downto 0),
      dout(127 downto 0) => m_axi_WDATA(127 downto 0),
      empty => NLW_inst_xpm_fifo_sync_empty_UNCONNECTED,
      full => s_axis_tready_n,
      injectdbiterr => '0',
      injectsbiterr => '0',
      overflow => NLW_inst_xpm_fifo_sync_overflow_UNCONNECTED,
      prog_empty => NLW_inst_xpm_fifo_sync_prog_empty_UNCONNECTED,
      prog_full => NLW_inst_xpm_fifo_sync_prog_full_UNCONNECTED,
      rd_data_count(4 downto 0) => NLW_inst_xpm_fifo_sync_rd_data_count_UNCONNECTED(4 downto 0),
      rd_en => rd_en0,
      rd_rst_busy => NLW_inst_xpm_fifo_sync_rd_rst_busy_UNCONNECTED,
      rst => inst_aw_transaction_cntr_n_0,
      sbiterr => NLW_inst_xpm_fifo_sync_sbiterr_UNCONNECTED,
      sleep => '0',
      underflow => NLW_inst_xpm_fifo_sync_underflow_UNCONNECTED,
      wr_ack => NLW_inst_xpm_fifo_sync_wr_ack_UNCONNECTED,
      wr_clk => clk,
      wr_data_count(4 downto 0) => NLW_inst_xpm_fifo_sync_wr_data_count_UNCONNECTED(4 downto 0),
      wr_en => s_axis_tvalid,
      wr_rst_busy => NLW_inst_xpm_fifo_sync_wr_rst_busy_UNCONNECTED
    );
inst_xpm_fifo_sync_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => w_running,
      I1 => m_axi_WREADY,
      O => rd_en0
    );
m_axi_WVALID_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => m_axi_wvalid_i,
      I1 => w_running,
      O => m_axi_WVALID
    );
s_axis_tready_INST_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_axis_tready_n,
      O => s_axis_tready
    );
start_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => ctrl_start_d1,
      Q => start,
      R => '0'
    );
start_reg_rep: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => ctrl_start_d1,
      Q => start_reg_rep_n_0,
      R => '0'
    );
\start_reg_rep__0\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => ctrl_start_d1,
      Q => \start_reg_rep__0_n_0\,
      R => '0'
    );
\total_len_r[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => req_len(0),
      O => total_len_r1(0)
    );
\total_len_r[20]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => req_len(15),
      O => \total_len_r[20]_i_2_n_0\
    );
\total_len_r[20]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => req_len(14),
      O => \total_len_r[20]_i_3_n_0\
    );
\total_len_r[20]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => req_len(13),
      O => \total_len_r[20]_i_4_n_0\
    );
\total_len_r[20]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => req_len(12),
      O => \total_len_r[20]_i_5_n_0\
    );
\total_len_r[20]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => req_len(11),
      O => \total_len_r[20]_i_6_n_0\
    );
\total_len_r[20]_i_7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => req_len(10),
      O => \total_len_r[20]_i_7_n_0\
    );
\total_len_r[20]_i_8\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => req_len(9),
      O => \total_len_r[20]_i_8_n_0\
    );
\total_len_r[8]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => req_len(8),
      O => \total_len_r[8]_i_2_n_0\
    );
\total_len_r[8]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => req_len(7),
      O => \total_len_r[8]_i_3_n_0\
    );
\total_len_r[8]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => req_len(6),
      O => \total_len_r[8]_i_4_n_0\
    );
\total_len_r[8]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => req_len(5),
      O => \total_len_r[8]_i_5_n_0\
    );
\total_len_r[8]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => req_len(4),
      O => \total_len_r[8]_i_6_n_0\
    );
\total_len_r[8]_i_7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => req_len(3),
      O => \total_len_r[8]_i_7_n_0\
    );
\total_len_r[8]_i_8\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => req_len(2),
      O => \total_len_r[8]_i_8_n_0\
    );
\total_len_r[8]_i_9\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => req_len(1),
      O => \total_len_r[8]_i_9_n_0\
    );
\total_len_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ctrl_start,
      D => total_len_r1(0),
      Q => \total_len_r_reg_n_0_[0]\,
      R => '0'
    );
\total_len_r_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ctrl_start,
      D => total_len_r1(10),
      Q => data(6),
      R => '0'
    );
\total_len_r_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ctrl_start,
      D => total_len_r1(11),
      Q => data(7),
      R => '0'
    );
\total_len_r_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ctrl_start,
      D => total_len_r1(12),
      Q => data(8),
      R => '0'
    );
\total_len_r_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ctrl_start,
      D => total_len_r1(13),
      Q => data(9),
      R => '0'
    );
\total_len_r_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ctrl_start,
      D => total_len_r1(14),
      Q => data(10),
      R => '0'
    );
\total_len_r_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ctrl_start,
      D => total_len_r1(15),
      Q => data(11),
      R => '0'
    );
\total_len_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ctrl_start,
      D => total_len_r1(1),
      Q => \total_len_r_reg_n_0_[1]\,
      R => '0'
    );
\total_len_r_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ctrl_start,
      D => total_len_r1(59),
      Q => data(16),
      R => '0'
    );
\total_len_r_reg[20]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \total_len_r_reg[8]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \NLW_total_len_r_reg[20]_i_1_CO_UNCONNECTED\(7),
      CO(6) => \total_len_r_reg[20]_i_1_n_1\,
      CO(5) => \total_len_r_reg[20]_i_1_n_2\,
      CO(4) => \total_len_r_reg[20]_i_1_n_3\,
      CO(3) => \total_len_r_reg[20]_i_1_n_4\,
      CO(2) => \total_len_r_reg[20]_i_1_n_5\,
      CO(1) => \total_len_r_reg[20]_i_1_n_6\,
      CO(0) => \total_len_r_reg[20]_i_1_n_7\,
      DI(7) => '0',
      DI(6 downto 0) => req_len(15 downto 9),
      O(7) => total_len_r1(59),
      O(6 downto 0) => total_len_r1(15 downto 9),
      S(7) => '1',
      S(6) => \total_len_r[20]_i_2_n_0\,
      S(5) => \total_len_r[20]_i_3_n_0\,
      S(4) => \total_len_r[20]_i_4_n_0\,
      S(3) => \total_len_r[20]_i_5_n_0\,
      S(2) => \total_len_r[20]_i_6_n_0\,
      S(1) => \total_len_r[20]_i_7_n_0\,
      S(0) => \total_len_r[20]_i_8_n_0\
    );
\total_len_r_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ctrl_start,
      D => total_len_r1(2),
      Q => \total_len_r_reg_n_0_[2]\,
      R => '0'
    );
\total_len_r_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ctrl_start,
      D => total_len_r1(3),
      Q => \total_len_r_reg_n_0_[3]\,
      R => '0'
    );
\total_len_r_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ctrl_start,
      D => total_len_r1(4),
      Q => data(0),
      R => '0'
    );
\total_len_r_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ctrl_start,
      D => total_len_r1(59),
      Q => data(55),
      R => '0'
    );
\total_len_r_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ctrl_start,
      D => total_len_r1(5),
      Q => data(1),
      R => '0'
    );
\total_len_r_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ctrl_start,
      D => total_len_r1(6),
      Q => data(2),
      R => '0'
    );
\total_len_r_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ctrl_start,
      D => total_len_r1(7),
      Q => data(3),
      R => '0'
    );
\total_len_r_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ctrl_start,
      D => total_len_r1(8),
      Q => data(4),
      R => '0'
    );
\total_len_r_reg[8]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => req_len(0),
      CI_TOP => '0',
      CO(7) => \total_len_r_reg[8]_i_1_n_0\,
      CO(6) => \total_len_r_reg[8]_i_1_n_1\,
      CO(5) => \total_len_r_reg[8]_i_1_n_2\,
      CO(4) => \total_len_r_reg[8]_i_1_n_3\,
      CO(3) => \total_len_r_reg[8]_i_1_n_4\,
      CO(2) => \total_len_r_reg[8]_i_1_n_5\,
      CO(1) => \total_len_r_reg[8]_i_1_n_6\,
      CO(0) => \total_len_r_reg[8]_i_1_n_7\,
      DI(7 downto 0) => req_len(8 downto 1),
      O(7 downto 0) => total_len_r1(8 downto 1),
      S(7) => \total_len_r[8]_i_2_n_0\,
      S(6) => \total_len_r[8]_i_3_n_0\,
      S(5) => \total_len_r[8]_i_4_n_0\,
      S(4) => \total_len_r[8]_i_5_n_0\,
      S(3) => \total_len_r[8]_i_6_n_0\,
      S(2) => \total_len_r[8]_i_7_n_0\,
      S(1) => \total_len_r[8]_i_8_n_0\,
      S(0) => \total_len_r[8]_i_9_n_0\
    );
\total_len_r_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ctrl_start,
      D => total_len_r1(9),
      Q => data(5),
      R => '0'
    );
w_running_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => inst_burst_cntr_n_5,
      Q => w_running,
      R => inst_aw_transaction_cntr_n_0
    );
wfirst_d1_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => wfirst,
      I1 => m_axi_wvalid_i,
      I2 => w_running,
      O => wfirst_d10
    );
wfirst_d1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => wfirst_d10,
      Q => wfirst_d1,
      R => '0'
    );
wfirst_pulse_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => w_running,
      I1 => m_axi_wvalid_i,
      I2 => wfirst,
      I3 => wfirst_d1,
      O => wfirst_pulse0
    );
wfirst_pulse_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => wfirst_pulse0,
      Q => wfirst_pulse,
      R => '0'
    );
wfirst_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => inst_burst_cntr_n_6,
      Q => wfirst,
      S => inst_aw_transaction_cntr_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    clk : in STD_LOGIC;
    rst_n : in STD_LOGIC;
    ctrl_start : in STD_LOGIC;
    ctrl_done : out STD_LOGIC;
    baseAddr : in STD_LOGIC_VECTOR ( 63 downto 0 );
    req_len : in STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axi_AWVALID : out STD_LOGIC;
    m_axi_AWREADY : in STD_LOGIC;
    m_axi_AWADDR : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_AWLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_AWSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_AWID : out STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_WVALID : out STD_LOGIC;
    m_axi_WREADY : in STD_LOGIC;
    m_axi_WDATA : out STD_LOGIC_VECTOR ( 127 downto 0 );
    m_axi_WSTRB : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axi_WLAST : out STD_LOGIC;
    m_axi_BVALID : in STD_LOGIC;
    m_axi_BREADY : out STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 127 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "cus_m_axi_s_128_ultra_swr_engine_0_0,swr_engine,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "package_project";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "swr_engine,Vivado 2020.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal \^m_axi_awaddr\ : STD_LOGIC_VECTOR ( 63 downto 7 );
  signal \^m_axi_awlen\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF s_axis:m_axi, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN cus_m_axi_s_128_ultra_clk_0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m_axi_AWREADY : signal is "xilinx.com:interface:aximm:1.0 m_axi AWREADY";
  attribute X_INTERFACE_INFO of m_axi_AWVALID : signal is "xilinx.com:interface:aximm:1.0 m_axi AWVALID";
  attribute X_INTERFACE_INFO of m_axi_BREADY : signal is "xilinx.com:interface:aximm:1.0 m_axi BREADY";
  attribute X_INTERFACE_PARAMETER of m_axi_BREADY : signal is "XIL_INTERFACENAME m_axi, DATA_WIDTH 128, PROTOCOL AXI4, FREQ_HZ 100000000, ID_WIDTH 6, ADDR_WIDTH 64, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE WRITE_ONLY, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 0, HAS_RRESP 0, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.000, CLK_DOMAIN cus_m_axi_s_128_ultra_clk_0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m_axi_BVALID : signal is "xilinx.com:interface:aximm:1.0 m_axi BVALID";
  attribute X_INTERFACE_INFO of m_axi_WLAST : signal is "xilinx.com:interface:aximm:1.0 m_axi WLAST";
  attribute X_INTERFACE_INFO of m_axi_WREADY : signal is "xilinx.com:interface:aximm:1.0 m_axi WREADY";
  attribute X_INTERFACE_INFO of m_axi_WVALID : signal is "xilinx.com:interface:aximm:1.0 m_axi WVALID";
  attribute X_INTERFACE_INFO of rst_n : signal is "xilinx.com:signal:reset:1.0 rst_n RST";
  attribute X_INTERFACE_PARAMETER of rst_n : signal is "XIL_INTERFACENAME rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axis_tready : signal is "xilinx.com:interface:axis:1.0 s_axis TREADY";
  attribute X_INTERFACE_INFO of s_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 s_axis TVALID";
  attribute X_INTERFACE_INFO of m_axi_AWADDR : signal is "xilinx.com:interface:aximm:1.0 m_axi AWADDR";
  attribute X_INTERFACE_INFO of m_axi_AWID : signal is "xilinx.com:interface:aximm:1.0 m_axi AWID";
  attribute X_INTERFACE_INFO of m_axi_AWLEN : signal is "xilinx.com:interface:aximm:1.0 m_axi AWLEN";
  attribute X_INTERFACE_INFO of m_axi_AWSIZE : signal is "xilinx.com:interface:aximm:1.0 m_axi AWSIZE";
  attribute X_INTERFACE_INFO of m_axi_WDATA : signal is "xilinx.com:interface:aximm:1.0 m_axi WDATA";
  attribute X_INTERFACE_INFO of m_axi_WSTRB : signal is "xilinx.com:interface:aximm:1.0 m_axi WSTRB";
  attribute X_INTERFACE_INFO of s_axis_tdata : signal is "xilinx.com:interface:axis:1.0 s_axis TDATA";
  attribute X_INTERFACE_PARAMETER of s_axis_tdata : signal is "XIL_INTERFACENAME s_axis, TDATA_NUM_BYTES 16, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN cus_m_axi_s_128_ultra_clk_0, LAYERED_METADATA undef, INSERT_VIP 0";
begin
  m_axi_AWADDR(63 downto 7) <= \^m_axi_awaddr\(63 downto 7);
  m_axi_AWADDR(6) <= \<const0>\;
  m_axi_AWADDR(5) <= \<const0>\;
  m_axi_AWADDR(4) <= \<const0>\;
  m_axi_AWADDR(3) <= \<const0>\;
  m_axi_AWADDR(2) <= \<const0>\;
  m_axi_AWADDR(1) <= \<const0>\;
  m_axi_AWADDR(0) <= \<const0>\;
  m_axi_AWID(5) <= \<const0>\;
  m_axi_AWID(4) <= \<const0>\;
  m_axi_AWID(3) <= \<const0>\;
  m_axi_AWID(2) <= \<const0>\;
  m_axi_AWID(1) <= \<const0>\;
  m_axi_AWID(0) <= \<const0>\;
  m_axi_AWLEN(7) <= \<const0>\;
  m_axi_AWLEN(6) <= \<const0>\;
  m_axi_AWLEN(5) <= \<const0>\;
  m_axi_AWLEN(4) <= \<const0>\;
  m_axi_AWLEN(3 downto 0) <= \^m_axi_awlen\(3 downto 0);
  m_axi_AWSIZE(2) <= \<const1>\;
  m_axi_AWSIZE(1) <= \<const0>\;
  m_axi_AWSIZE(0) <= \<const0>\;
  m_axi_BREADY <= \<const1>\;
  m_axi_WSTRB(15) <= \<const1>\;
  m_axi_WSTRB(14) <= \<const1>\;
  m_axi_WSTRB(13) <= \<const1>\;
  m_axi_WSTRB(12) <= \<const1>\;
  m_axi_WSTRB(11) <= \<const1>\;
  m_axi_WSTRB(10) <= \<const1>\;
  m_axi_WSTRB(9) <= \<const1>\;
  m_axi_WSTRB(8) <= \<const1>\;
  m_axi_WSTRB(7) <= \<const1>\;
  m_axi_WSTRB(6) <= \<const1>\;
  m_axi_WSTRB(5) <= \<const1>\;
  m_axi_WSTRB(4) <= \<const1>\;
  m_axi_WSTRB(3) <= \<const1>\;
  m_axi_WSTRB(2) <= \<const1>\;
  m_axi_WSTRB(1) <= \<const1>\;
  m_axi_WSTRB(0) <= \<const1>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_swr_engine
     port map (
      awvalid_r_reg_0 => m_axi_AWVALID,
      baseAddr(55 downto 0) => baseAddr(63 downto 8),
      clk => clk,
      ctrl_done => ctrl_done,
      ctrl_start => ctrl_start,
      is_zero_r_reg => m_axi_WLAST,
      m_axi_AWADDR(56 downto 0) => \^m_axi_awaddr\(63 downto 7),
      m_axi_AWLEN(3 downto 0) => \^m_axi_awlen\(3 downto 0),
      m_axi_AWREADY => m_axi_AWREADY,
      m_axi_BVALID => m_axi_BVALID,
      m_axi_WDATA(127 downto 0) => m_axi_WDATA(127 downto 0),
      m_axi_WREADY => m_axi_WREADY,
      m_axi_WVALID => m_axi_WVALID,
      req_len(15 downto 0) => req_len(15 downto 0),
      rst_n => rst_n,
      s_axis_tdata(127 downto 0) => s_axis_tdata(127 downto 0),
      s_axis_tready => s_axis_tready,
      s_axis_tvalid => s_axis_tvalid
    );
end STRUCTURE;
