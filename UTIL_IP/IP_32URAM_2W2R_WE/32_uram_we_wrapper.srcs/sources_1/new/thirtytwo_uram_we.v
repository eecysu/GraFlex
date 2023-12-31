`timescale 1ns / 1ps

// By default, all Ultra RAM is configured to 64-bit wide X 4096 deep
module uram_2w_2r_we_x32 (
  input  wire             clk,
  input  wire             rst_n,
  input  wire [32-1:0]    ce0,
  input  wire [32-1:0]    ce1,
  input  wire [32*8-1:0]  we0,
  input  wire [32*8-1:0]  we1,
  input  wire [32*12-1:0] addr0,
  input  wire [32*12-1:0] addr1,
  input  wire [32*64-1:0] wdata0,
  input  wire [32*64-1:0] wdata1,
  output wire [32*64-1:0] rdata0,
  output wire [32*64-1:0] rdata1
  );

  wire [64-1:0] rdata0_w[0:32-1];
  wire [64-1:0] rdata1_w[0:32-1];

  uram_wex32_wrapper inst_32uram_we (
    .addr0_0 ( addr0[0+:12]  ),
    .addr0_1 ( addr0[12+:12]  ),
    .addr0_2 ( addr0[24+:12]  ),
    .addr0_3 ( addr0[36+:12]  ),
    .addr0_4 ( addr0[48+:12]  ),
    .addr0_5 ( addr0[60+:12]  ),
    .addr0_6 ( addr0[72+:12]  ),
    .addr0_7 ( addr0[84+:12]  ),
    .addr0_8 ( addr0[96+:12]  ),
    .addr0_9 ( addr0[108+:12]  ),
    .addr0_10 ( addr0[120+:12]  ),
    .addr0_11 ( addr0[132+:12]  ),
    .addr0_12 ( addr0[144+:12]  ),
    .addr0_13 ( addr0[156+:12]  ),
    .addr0_14 ( addr0[168+:12]  ),
    .addr0_15 ( addr0[180+:12]  ),
    .addr0_16 ( addr0[192+:12]  ),
    .addr0_17 ( addr0[204+:12]  ),
    .addr0_18 ( addr0[216+:12]  ),
    .addr0_19 ( addr0[228+:12]  ),
    .addr0_20 ( addr0[240+:12]  ),
    .addr0_21 ( addr0[252+:12]  ),
    .addr0_22 ( addr0[264+:12]  ),
    .addr0_23 ( addr0[276+:12]  ),
    .addr0_24 ( addr0[288+:12]  ),
    .addr0_25 ( addr0[300+:12]  ),
    .addr0_26 ( addr0[312+:12]  ),
    .addr0_27 ( addr0[324+:12]  ),
    .addr0_28 ( addr0[336+:12]  ),
    .addr0_29 ( addr0[348+:12]  ),
    .addr0_30 ( addr0[360+:12]  ),
    .addr0_31 ( addr0[372+:12]  ),
    .addr1_0 ( addr1[0+:12]  ),
    .addr1_1 ( addr1[12+:12]  ),
    .addr1_2 ( addr1[24+:12]  ),
    .addr1_3 ( addr1[36+:12]  ),
    .addr1_4 ( addr1[48+:12]  ),
    .addr1_5 ( addr1[60+:12]  ),
    .addr1_6 ( addr1[72+:12]  ),
    .addr1_7 ( addr1[84+:12]  ),
    .addr1_8 ( addr1[96+:12]  ),
    .addr1_9 ( addr1[108+:12]  ),
    .addr1_10 ( addr1[120+:12]  ),
    .addr1_11 ( addr1[132+:12]  ),
    .addr1_12 ( addr1[144+:12]  ),
    .addr1_13 ( addr1[156+:12]  ),
    .addr1_14 ( addr1[168+:12]  ),
    .addr1_15 ( addr1[180+:12]  ),
    .addr1_16 ( addr1[192+:12]  ),
    .addr1_17 ( addr1[204+:12]  ),
    .addr1_18 ( addr1[216+:12]  ),
    .addr1_19 ( addr1[228+:12]  ),
    .addr1_20 ( addr1[240+:12]  ),
    .addr1_21 ( addr1[252+:12]  ),
    .addr1_22 ( addr1[264+:12]  ),
    .addr1_23 ( addr1[276+:12]  ),
    .addr1_24 ( addr1[288+:12]  ),
    .addr1_25 ( addr1[300+:12]  ),
    .addr1_26 ( addr1[312+:12]  ),
    .addr1_27 ( addr1[324+:12]  ),
    .addr1_28 ( addr1[336+:12]  ),
    .addr1_29 ( addr1[348+:12]  ),
    .addr1_30 ( addr1[360+:12]  ),
    .addr1_31 ( addr1[372+:12]  ),
    .ce0_0 ( ce0[0] ),
    .ce0_1 ( ce0[1] ),
    .ce0_2 ( ce0[2] ),
    .ce0_3 ( ce0[3] ),
    .ce0_4 ( ce0[4] ),
    .ce0_5 ( ce0[5] ),
    .ce0_6 ( ce0[6] ),
    .ce0_7 ( ce0[7] ),
    .ce0_8 ( ce0[8] ),
    .ce0_9 ( ce0[9] ),
    .ce0_10 ( ce0[10] ),
    .ce0_11 ( ce0[11] ),
    .ce0_12 ( ce0[12] ),
    .ce0_13 ( ce0[13] ),
    .ce0_14 ( ce0[14] ),
    .ce0_15 ( ce0[15] ),
    .ce0_16 ( ce0[16] ),
    .ce0_17 ( ce0[17] ),
    .ce0_18 ( ce0[18] ),
    .ce0_19 ( ce0[19] ),
    .ce0_20 ( ce0[20] ),
    .ce0_21 ( ce0[21] ),
    .ce0_22 ( ce0[22] ),
    .ce0_23 ( ce0[23] ),
    .ce0_24 ( ce0[24] ),
    .ce0_25 ( ce0[25] ),
    .ce0_26 ( ce0[26] ),
    .ce0_27 ( ce0[27] ),
    .ce0_28 ( ce0[28] ),
    .ce0_29 ( ce0[29] ),
    .ce0_30 ( ce0[30] ),
    .ce0_31 ( ce0[31] ),
    .ce1_0 ( ce1[0] ),
    .ce1_1 ( ce1[1] ),
    .ce1_2 ( ce1[2] ),
    .ce1_3 ( ce1[3] ),
    .ce1_4 ( ce1[4] ),
    .ce1_5 ( ce1[5] ),
    .ce1_6 ( ce1[6] ),
    .ce1_7 ( ce1[7] ),
    .ce1_8 ( ce1[8] ),
    .ce1_9 ( ce1[9] ),
    .ce1_10 ( ce1[10] ),
    .ce1_11 ( ce1[11] ),
    .ce1_12 ( ce1[12] ),
    .ce1_13 ( ce1[13] ),
    .ce1_14 ( ce1[14] ),
    .ce1_15 ( ce1[15] ),
    .ce1_16 ( ce1[16] ),
    .ce1_17 ( ce1[17] ),
    .ce1_18 ( ce1[18] ),
    .ce1_19 ( ce1[19] ),
    .ce1_20 ( ce1[20] ),
    .ce1_21 ( ce1[21] ),
    .ce1_22 ( ce1[22] ),
    .ce1_23 ( ce1[23] ),
    .ce1_24 ( ce1[24] ),
    .ce1_25 ( ce1[25] ),
    .ce1_26 ( ce1[26] ),
    .ce1_27 ( ce1[27] ),
    .ce1_28 ( ce1[28] ),
    .ce1_29 ( ce1[29] ),
    .ce1_30 ( ce1[30] ),
    .ce1_31 ( ce1[31] ),
    .clk_0  ( clk ),
    .rdata0_0 ( rdata0_w[0] ),
    .rdata0_1 ( rdata0_w[1] ),
    .rdata0_2 ( rdata0_w[2] ),
    .rdata0_3 ( rdata0_w[3] ),
    .rdata0_4 ( rdata0_w[4] ),
    .rdata0_5 ( rdata0_w[5] ),
    .rdata0_6 ( rdata0_w[6] ),
    .rdata0_7 ( rdata0_w[7] ),
    .rdata0_8 ( rdata0_w[8] ),
    .rdata0_9 ( rdata0_w[9] ),
    .rdata0_10 ( rdata0_w[10] ),
    .rdata0_11 ( rdata0_w[11] ),
    .rdata0_12 ( rdata0_w[12] ),
    .rdata0_13 ( rdata0_w[13] ),
    .rdata0_14 ( rdata0_w[14] ),
    .rdata0_15 ( rdata0_w[15] ),
    .rdata0_16 ( rdata0_w[16] ),
    .rdata0_17 ( rdata0_w[17] ),
    .rdata0_18 ( rdata0_w[18] ),
    .rdata0_19 ( rdata0_w[19] ),
    .rdata0_20 ( rdata0_w[20] ),
    .rdata0_21 ( rdata0_w[21] ),
    .rdata0_22 ( rdata0_w[22] ),
    .rdata0_23 ( rdata0_w[23] ),
    .rdata0_24 ( rdata0_w[24] ),
    .rdata0_25 ( rdata0_w[25] ),
    .rdata0_26 ( rdata0_w[26] ),
    .rdata0_27 ( rdata0_w[27] ),
    .rdata0_28 ( rdata0_w[28] ),
    .rdata0_29 ( rdata0_w[29] ),
    .rdata0_30 ( rdata0_w[30] ),
    .rdata0_31 ( rdata0_w[31] ),
    .rdata1_0 ( rdata1_w[0] ),
    .rdata1_1 ( rdata1_w[1] ),
    .rdata1_2 ( rdata1_w[2] ),
    .rdata1_3 ( rdata1_w[3] ),
    .rdata1_4 ( rdata1_w[4] ),
    .rdata1_5 ( rdata1_w[5] ),
    .rdata1_6 ( rdata1_w[6] ),
    .rdata1_7 ( rdata1_w[7] ),
    .rdata1_8 ( rdata1_w[8] ),
    .rdata1_9 ( rdata1_w[9] ),
    .rdata1_10 ( rdata1_w[10] ),
    .rdata1_11 ( rdata1_w[11] ),
    .rdata1_12 ( rdata1_w[12] ),
    .rdata1_13 ( rdata1_w[13] ),
    .rdata1_14 ( rdata1_w[14] ),
    .rdata1_15 ( rdata1_w[15] ),
    .rdata1_16 ( rdata1_w[16] ),
    .rdata1_17 ( rdata1_w[17] ),
    .rdata1_18 ( rdata1_w[18] ),
    .rdata1_19 ( rdata1_w[19] ),
    .rdata1_20 ( rdata1_w[20] ),
    .rdata1_21 ( rdata1_w[21] ),
    .rdata1_22 ( rdata1_w[22] ),
    .rdata1_23 ( rdata1_w[23] ),
    .rdata1_24 ( rdata1_w[24] ),
    .rdata1_25 ( rdata1_w[25] ),
    .rdata1_26 ( rdata1_w[26] ),
    .rdata1_27 ( rdata1_w[27] ),
    .rdata1_28 ( rdata1_w[28] ),
    .rdata1_29 ( rdata1_w[29] ),
    .rdata1_30 ( rdata1_w[30] ),
    .rdata1_31 ( rdata1_w[31] ),
    .rst_n_0  ( rst_n ),
    .wdata0_0 ( wdata0[0+:64] ),
    .wdata0_1 ( wdata0[64+:64] ),
    .wdata0_2 ( wdata0[128+:64] ),
    .wdata0_3 ( wdata0[192+:64] ),
    .wdata0_4 ( wdata0[256+:64] ),
    .wdata0_5 ( wdata0[320+:64] ),
    .wdata0_6 ( wdata0[384+:64] ),
    .wdata0_7 ( wdata0[448+:64] ),
    .wdata0_8 ( wdata0[512+:64] ),
    .wdata0_9 ( wdata0[576+:64] ),
    .wdata0_10 ( wdata0[640+:64] ),
    .wdata0_11 ( wdata0[704+:64] ),
    .wdata0_12 ( wdata0[768+:64] ),
    .wdata0_13 ( wdata0[832+:64] ),
    .wdata0_14 ( wdata0[896+:64] ),
    .wdata0_15 ( wdata0[960+:64] ),
    .wdata0_16 ( wdata0[1024+:64] ),
    .wdata0_17 ( wdata0[1088+:64] ),
    .wdata0_18 ( wdata0[1152+:64] ),
    .wdata0_19 ( wdata0[1216+:64] ),
    .wdata0_20 ( wdata0[1280+:64] ),
    .wdata0_21 ( wdata0[1344+:64] ),
    .wdata0_22 ( wdata0[1408+:64] ),
    .wdata0_23 ( wdata0[1472+:64] ),
    .wdata0_24 ( wdata0[1536+:64] ),
    .wdata0_25 ( wdata0[1600+:64] ),
    .wdata0_26 ( wdata0[1664+:64] ),
    .wdata0_27 ( wdata0[1728+:64] ),
    .wdata0_28 ( wdata0[1792+:64] ),
    .wdata0_29 ( wdata0[1856+:64] ),
    .wdata0_30 ( wdata0[1920+:64] ),
    .wdata0_31 ( wdata0[1984+:64] ),
    .wdata1_0 ( wdata1[0+:64] ),
    .wdata1_1 ( wdata1[64+:64] ),
    .wdata1_2 ( wdata1[128+:64] ),
    .wdata1_3 ( wdata1[192+:64] ),
    .wdata1_4 ( wdata1[256+:64] ),
    .wdata1_5 ( wdata1[320+:64] ),
    .wdata1_6 ( wdata1[384+:64] ),
    .wdata1_7 ( wdata1[448+:64] ),
    .wdata1_8 ( wdata1[512+:64] ),
    .wdata1_9 ( wdata1[576+:64] ),
    .wdata1_10 ( wdata1[640+:64] ),
    .wdata1_11 ( wdata1[704+:64] ),
    .wdata1_12 ( wdata1[768+:64] ),
    .wdata1_13 ( wdata1[832+:64] ),
    .wdata1_14 ( wdata1[896+:64] ),
    .wdata1_15 ( wdata1[960+:64] ),
    .wdata1_16 ( wdata1[1024+:64] ),
    .wdata1_17 ( wdata1[1088+:64] ),
    .wdata1_18 ( wdata1[1152+:64] ),
    .wdata1_19 ( wdata1[1216+:64] ),
    .wdata1_20 ( wdata1[1280+:64] ),
    .wdata1_21 ( wdata1[1344+:64] ),
    .wdata1_22 ( wdata1[1408+:64] ),
    .wdata1_23 ( wdata1[1472+:64] ),
    .wdata1_24 ( wdata1[1536+:64] ),
    .wdata1_25 ( wdata1[1600+:64] ),
    .wdata1_26 ( wdata1[1664+:64] ),
    .wdata1_27 ( wdata1[1728+:64] ),
    .wdata1_28 ( wdata1[1792+:64] ),
    .wdata1_29 ( wdata1[1856+:64] ),
    .wdata1_30 ( wdata1[1920+:64] ),
    .wdata1_31 ( wdata1[1984+:64] ),  
    .we0_0 ( we0[0+:8] ),
    .we0_1 ( we0[8+:8] ),
    .we0_2 ( we0[16+:8] ),
    .we0_3 ( we0[24+:8] ),
    .we0_4 ( we0[32+:8] ),
    .we0_5 ( we0[40+:8] ),
    .we0_6 ( we0[48+:8] ),
    .we0_7 ( we0[56+:8] ),
    .we0_8 ( we0[64+:8] ),
    .we0_9 ( we0[72+:8] ),
    .we0_10 ( we0[80+:8] ),
    .we0_11 ( we0[88+:8] ),
    .we0_12 ( we0[96+:8] ),
    .we0_13 ( we0[104+:8] ),
    .we0_14 ( we0[112+:8] ),
    .we0_15 ( we0[120+:8] ),
    .we0_16 ( we0[128+:8] ),
    .we0_17 ( we0[136+:8] ),
    .we0_18 ( we0[144+:8] ),
    .we0_19 ( we0[152+:8] ),
    .we0_20 ( we0[160+:8] ),
    .we0_21 ( we0[168+:8] ),
    .we0_22 ( we0[176+:8] ),
    .we0_23 ( we0[184+:8] ),
    .we0_24 ( we0[192+:8] ),
    .we0_25 ( we0[200+:8] ),
    .we0_26 ( we0[208+:8] ),
    .we0_27 ( we0[216+:8] ),
    .we0_28 ( we0[224+:8] ),
    .we0_29 ( we0[232+:8] ),
    .we0_30 ( we0[240+:8] ),
    .we0_31 ( we0[248+:8] ),
    .we1_0 ( we1[0+:8] ),
    .we1_1 ( we1[8+:8] ),
    .we1_2 ( we1[16+:8] ),
    .we1_3 ( we1[24+:8] ),
    .we1_4 ( we1[32+:8] ),
    .we1_5 ( we1[40+:8] ),
    .we1_6 ( we1[48+:8] ),
    .we1_7 ( we1[56+:8] ),
    .we1_8 ( we1[64+:8] ),
    .we1_9 ( we1[72+:8] ),
    .we1_10 ( we1[80+:8] ),
    .we1_11 ( we1[88+:8] ),
    .we1_12 ( we1[96+:8] ),
    .we1_13 ( we1[104+:8] ),
    .we1_14 ( we1[112+:8] ),
    .we1_15 ( we1[120+:8] ),
    .we1_16 ( we1[128+:8] ),
    .we1_17 ( we1[136+:8] ),
    .we1_18 ( we1[144+:8] ),
    .we1_19 ( we1[152+:8] ),
    .we1_20 ( we1[160+:8] ),
    .we1_21 ( we1[168+:8] ),
    .we1_22 ( we1[176+:8] ),
    .we1_23 ( we1[184+:8] ),
    .we1_24 ( we1[192+:8] ),
    .we1_25 ( we1[200+:8] ),
    .we1_26 ( we1[208+:8] ),
    .we1_27 ( we1[216+:8] ),
    .we1_28 ( we1[224+:8] ),
    .we1_29 ( we1[232+:8] ),
    .we1_30 ( we1[240+:8] ),
    .we1_31 ( we1[248+:8] )  
  );

  assign rdata0 ={rdata0_w[31], rdata0_w[30], rdata0_w[29], rdata0_w[28], rdata0_w[27], rdata0_w[26], rdata0_w[25], rdata0_w[24],
                  rdata0_w[23], rdata0_w[22], rdata0_w[21], rdata0_w[20], rdata0_w[19], rdata0_w[18], rdata0_w[17], rdata0_w[16],
                  rdata0_w[15], rdata0_w[14], rdata0_w[13], rdata0_w[12], rdata0_w[11], rdata0_w[10], rdata0_w[9], rdata0_w[8],
                  rdata0_w[7], rdata0_w[6], rdata0_w[5], rdata0_w[4], rdata0_w[3], rdata0_w[2], rdata0_w[1], rdata0_w[0]};
  assign rdata1 ={rdata1_w[31], rdata1_w[30], rdata1_w[29], rdata1_w[28], rdata1_w[27], rdata1_w[26], rdata1_w[25], rdata1_w[24],
                  rdata1_w[23], rdata1_w[22], rdata1_w[21], rdata1_w[20], rdata1_w[19], rdata1_w[18], rdata1_w[17], rdata1_w[16],
                  rdata1_w[15], rdata1_w[14], rdata1_w[13], rdata1_w[12], rdata1_w[11], rdata1_w[10], rdata1_w[9], rdata1_w[8],
                  rdata1_w[7], rdata1_w[6], rdata1_w[5], rdata1_w[4], rdata1_w[3], rdata1_w[2], rdata1_w[1], rdata1_w[0]};

endmodule
