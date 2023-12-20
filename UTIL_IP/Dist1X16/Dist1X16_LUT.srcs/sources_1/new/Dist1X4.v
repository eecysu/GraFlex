`timescale 1ns / 1ps

module DEMUX1X4 #(
  parameter integer DATA_WIDTH = 64
)
(
  input  [1:0] sel,
  input  ivld,
  input  [DATA_WIDTH-1:0] din,
  output ovld_0,
  output ovld_1,
  output ovld_2,
  output ovld_3,
  output [DATA_WIDTH-1:0] dout_0,
  output [DATA_WIDTH-1:0] dout_1,
  output [DATA_WIDTH-1:0] dout_2,
  output [DATA_WIDTH-1:0] dout_3
);

  assign ovld_0 = (sel==2'b00) ? ivld : 1'b0;
  assign ovld_1 = (sel==2'b01) ? ivld : 1'b0;
  assign ovld_2 = (sel==2'b10) ? ivld : 1'b0;
  assign ovld_3 = (sel==2'b11) ? ivld : 1'b0;

  assign dout_0 = (sel==2'b00) ? din : {DATA_WIDTH{1'b1}};
  assign dout_1 = (sel==2'b01) ? din : {DATA_WIDTH{1'b1}};
  assign dout_2 = (sel==2'b10) ? din : {DATA_WIDTH{1'b1}};
  assign dout_3 = (sel==2'b11) ? din : {DATA_WIDTH{1'b1}};

endmodule


module Dist1X4 #(
  parameter integer ROUTING_HBIT = 4,
  parameter integer C_DATA_WIDTH = 64
) (
  input                     clk,
  input                     rst_n,
  input                     ivld,
  input  [C_DATA_WIDTH-1:0] din,
//  input                     bp_a,
//  input                     bp_b,
//  input                     bp_c,
//  input                     bp_d,
  output reg                ovld_a,
  output reg                ovld_b,
  output reg                ovld_c,
  output reg                ovld_d,
  output reg [C_DATA_WIDTH-1:0] dout_a,
  output reg [C_DATA_WIDTH-1:0] dout_b,
  output reg [C_DATA_WIDTH-1:0] dout_c,
  output reg [C_DATA_WIDTH-1:0] dout_d
//  output reg                ofw
);

  wire ofw_w;
  wire ovld_a_w;
  wire ovld_b_w;
  wire ovld_c_w;
  wire ovld_d_w;

  wire [2-1:0] sel;

  wire [C_DATA_WIDTH-1:0] dout_a_w;
  wire [C_DATA_WIDTH-1:0] dout_b_w;
  wire [C_DATA_WIDTH-1:0] dout_c_w;
  wire [C_DATA_WIDTH-1:0] dout_d_w;

//  assign ofw_w = (bp_a | bp_b | bp_c | bp_d);
//  always @(posedge clk) begin
//    ofw <= ofw_w;
//  end

  assign sel = din[ROUTING_HBIT:ROUTING_HBIT-1];

  DEMUX1X4 #(
    .DATA_WIDTH (C_DATA_WIDTH)
  ) inst_mux (
    .sel    ( sel       ),
    .ivld   ( ivld      ),
    .din    ( din       ),
    .ovld_0 ( ovld_a_w  ),
    .ovld_1 ( ovld_b_w  ),
    .ovld_2 ( ovld_c_w  ),
    .ovld_3 ( ovld_d_w  ),
    .dout_0 ( dout_a_w  ),
    .dout_1 ( dout_b_w  ),
    .dout_2 ( dout_c_w  ),
    .dout_3 ( dout_d_w  )            
  );

  always @(posedge clk) begin
    ovld_a <= ovld_a_w;
    ovld_b <= ovld_b_w;
    ovld_c <= ovld_c_w;
    ovld_d <= ovld_d_w;
  end

  always @(posedge clk) begin
    dout_a <= dout_a_w;
    dout_b <= dout_b_w;
    dout_c <= dout_c_w;
    dout_d <= dout_d_w;
  end

endmodule
