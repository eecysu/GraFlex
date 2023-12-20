`timescale 1ns / 1ps

module DEMUX1X8 #(
  parameter integer DATA_WIDTH = 67
)
(
  input  [2:0] sel,
  input  ivld,
  input  [DATA_WIDTH-1:0] din,
  output ovld_0,
  output ovld_1,
  output ovld_2,
  output ovld_3,
  output ovld_4,
  output ovld_5,
  output ovld_6,
  output ovld_7,  
  output [DATA_WIDTH-1:0] dout_0,
  output [DATA_WIDTH-1:0] dout_1,
  output [DATA_WIDTH-1:0] dout_2,
  output [DATA_WIDTH-1:0] dout_3,
  output [DATA_WIDTH-1:0] dout_4,
  output [DATA_WIDTH-1:0] dout_5,
  output [DATA_WIDTH-1:0] dout_6,
  output [DATA_WIDTH-1:0] dout_7  
);

  assign ovld_0 = (sel==3'b000) ? ivld : 1'b0;
  assign ovld_1 = (sel==3'b001) ? ivld : 1'b0;
  assign ovld_2 = (sel==3'b010) ? ivld : 1'b0;
  assign ovld_3 = (sel==3'b011) ? ivld : 1'b0;
  assign ovld_4 = (sel==3'b100) ? ivld : 1'b0;
  assign ovld_5 = (sel==3'b101) ? ivld : 1'b0;
  assign ovld_6 = (sel==3'b110) ? ivld : 1'b0;
  assign ovld_7 = (sel==3'b111) ? ivld : 1'b0;

  assign dout_0 = (sel==3'b000) ? din : {DATA_WIDTH{1'b1}};
  assign dout_1 = (sel==3'b001) ? din : {DATA_WIDTH{1'b1}};
  assign dout_2 = (sel==3'b010) ? din : {DATA_WIDTH{1'b1}};
  assign dout_3 = (sel==3'b011) ? din : {DATA_WIDTH{1'b1}};
  assign dout_4 = (sel==3'b100) ? din : {DATA_WIDTH{1'b1}};
  assign dout_5 = (sel==3'b101) ? din : {DATA_WIDTH{1'b1}};
  assign dout_6 = (sel==3'b110) ? din : {DATA_WIDTH{1'b1}};
  assign dout_7 = (sel==3'b111) ? din : {DATA_WIDTH{1'b1}};

endmodule


module Dist1X8 #(
  parameter integer ROUTING_HBIT = 4,
  parameter integer C_DATA_WIDTH = 67
) (
  input                     clk,
  input                     rst_n,
  input                     ivld,
  input  [C_DATA_WIDTH-1:0] din,
//  input                     bp_a,
//  input                     bp_b,
//  input                     bp_c,
//  input                     bp_d,
//  input                     bp_e,
//  input                     bp_f,
//  input                     bp_g,
//  input                     bp_h,
  output reg                ovld_a,
  output reg                ovld_b,
  output reg                ovld_c,
  output reg                ovld_d,
  output reg                ovld_e,
  output reg                ovld_f,
  output reg                ovld_g,
  output reg                ovld_h,
  output reg [C_DATA_WIDTH-1:0] dout_a,
  output reg [C_DATA_WIDTH-1:0] dout_b,
  output reg [C_DATA_WIDTH-1:0] dout_c,
  output reg [C_DATA_WIDTH-1:0] dout_d,    
  output reg [C_DATA_WIDTH-1:0] dout_e,
  output reg [C_DATA_WIDTH-1:0] dout_f,
  output reg [C_DATA_WIDTH-1:0] dout_g,
  output reg [C_DATA_WIDTH-1:0] dout_h
//  output reg                ofw
);

  wire ofw_w;
  wire ovld_a_w;
  wire ovld_b_w;
  wire ovld_c_w;
  wire ovld_d_w;
  wire ovld_e_w;
  wire ovld_f_w;
  wire ovld_g_w;
  wire ovld_h_w;

  wire [C_DATA_WIDTH-1:0] dout_a_w;
  wire [C_DATA_WIDTH-1:0] dout_b_w;
  wire [C_DATA_WIDTH-1:0] dout_c_w;
  wire [C_DATA_WIDTH-1:0] dout_d_w;
  wire [C_DATA_WIDTH-1:0] dout_e_w;
  wire [C_DATA_WIDTH-1:0] dout_f_w;
  wire [C_DATA_WIDTH-1:0] dout_g_w;
  wire [C_DATA_WIDTH-1:0] dout_h_w;

//  assign ofw_w = (bp_a | bp_b | bp_c | bp_d);
//  always @(posedge clk) begin
//    ofw <= ofw_w;
//  end

  DEMUX1X8 #(
    .DATA_WIDTH (C_DATA_WIDTH)
  ) inst_mux (
    .sel    ( din[ROUTING_HBIT:ROUTING_HBIT-2] ),
    .ivld   ( ivld      ),
    .din    ( din       ),
    .ovld_0 ( ovld_a_w  ),
    .ovld_1 ( ovld_b_w  ),
    .ovld_2 ( ovld_c_w  ),
    .ovld_3 ( ovld_d_w  ),
    .ovld_4 ( ovld_e_w  ),
    .ovld_5 ( ovld_f_w  ),
    .ovld_6 ( ovld_g_w  ),
    .ovld_7 ( ovld_h_w  ),
    .dout_0 ( dout_a_w  ),
    .dout_1 ( dout_b_w  ),
    .dout_2 ( dout_c_w  ),
    .dout_3 ( dout_d_w  ),
    .dout_4 ( dout_e_w  ),
    .dout_5 ( dout_f_w  ),
    .dout_6 ( dout_g_w  ),
    .dout_7 ( dout_h_w  )            
  );

  always @(posedge clk) begin
    ovld_a <= ovld_a_w;
    ovld_b <= ovld_b_w;
    ovld_c <= ovld_c_w;
    ovld_d <= ovld_d_w;
    ovld_e <= ovld_e_w;
    ovld_f <= ovld_f_w;
    ovld_g <= ovld_g_w;
    ovld_h <= ovld_h_w;    
  end

  always @(posedge clk) begin
    dout_a <= dout_a_w;
    dout_b <= dout_b_w;
    dout_c <= dout_c_w;
    dout_d <= dout_d_w;
    dout_e <= dout_e_w;
    dout_f <= dout_f_w;
    dout_g <= dout_g_w;
    dout_h <= dout_h_w;    
  end

endmodule
