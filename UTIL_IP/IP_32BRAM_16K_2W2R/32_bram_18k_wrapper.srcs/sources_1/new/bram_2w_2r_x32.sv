`timescale 1ns / 1ps


// By default, all Block RAM 18K is configured to 8-bit wide X 2048 deep
module bram_2w_2r_16k_x32 #(
  parameter integer DATA_WIDTH = 8,
  parameter integer ADDR_WIDTH = 11
)
(
  input  wire                     clk,
  input  wire                     rst_n,
  input  wire [32-1:0]            ce0,
  input  wire [32-1:0]            ce1,
  input  wire [32-1:0]            we0,
  input  wire [32-1:0]            we1,
  input  wire [32*ADDR_WIDTH-1:0] addr0,
  input  wire [32*ADDR_WIDTH-1:0] addr1,
  input  wire [32*DATA_WIDTH-1:0] wdata0,
  input  wire [32*DATA_WIDTH-1:0] wdata1,
  output wire [32*DATA_WIDTH-1:0] rdata0,
  output wire [32*DATA_WIDTH-1:0] rdata1
);

  logic [DATA_WIDTH-1:0] rdata0_w[0:32-1];
  logic [DATA_WIDTH-1:0] rdata1_w[0:32-1];

  genvar bram_idx;
  generate
    for (bram_idx=0; bram_idx<32; bram_idx=bram_idx+1)
    begin : gen_bram_ram
      bram_16k_2w_2r #(
        .DATA_WIDTH ( DATA_WIDTH ),
        .ADDR_WIDTH ( ADDR_WIDTH )      
      ) inst_bram_U (
        .clk        ( clk           ),
        .rst_n      ( rst_n         ),
        .ce0        ( ce0[bram_idx] ),
        .ce1        ( ce1[bram_idx] ),
        .we0        ( we0[bram_idx] ),
        .we1        ( we1[bram_idx] ),
        .addr0      ( addr0[bram_idx*ADDR_WIDTH+:ADDR_WIDTH] ),
        .addr1      ( addr1[bram_idx*ADDR_WIDTH+:ADDR_WIDTH] ),
        .rdata0     ( rdata0_w[bram_idx]                     ),
        .rdata1     ( rdata1_w[bram_idx]                     ),
        .wdata0     ( wdata0[bram_idx*DATA_WIDTH+:DATA_WIDTH]),
        .wdata1     ( wdata1[bram_idx*DATA_WIDTH+:DATA_WIDTH])
      );
    end
  endgenerate

  assign rdata0 ={rdata0_w[31],rdata0_w[30],rdata0_w[29],rdata0_w[28],rdata0_w[27],rdata0_w[26],rdata0_w[25],rdata0_w[24],
                  rdata0_w[23],rdata0_w[22],rdata0_w[21],rdata0_w[20],rdata0_w[19],rdata0_w[18],rdata0_w[17],rdata0_w[16],
                  rdata0_w[15],rdata0_w[14],rdata0_w[13],rdata0_w[12],rdata0_w[11],rdata0_w[10],rdata0_w[9], rdata0_w[8],
                  rdata0_w[7], rdata0_w[6], rdata0_w[5], rdata0_w[4], rdata0_w[3], rdata0_w[2], rdata0_w[1], rdata0_w[0]};
  
  assign rdata1 ={rdata1_w[31],rdata1_w[30],rdata1_w[29],rdata1_w[28],rdata1_w[27],rdata1_w[26],rdata1_w[25],rdata1_w[24],
                  rdata1_w[23],rdata1_w[22],rdata1_w[21],rdata1_w[20],rdata1_w[19],rdata1_w[18],rdata1_w[17],rdata1_w[16],
                  rdata1_w[15],rdata1_w[14],rdata1_w[13],rdata1_w[12],rdata1_w[11],rdata1_w[10],rdata1_w[9], rdata1_w[8],
                  rdata1_w[7], rdata1_w[6], rdata1_w[5], rdata1_w[4], rdata1_w[3], rdata1_w[2], rdata1_w[1], rdata1_w[0]};

endmodule
