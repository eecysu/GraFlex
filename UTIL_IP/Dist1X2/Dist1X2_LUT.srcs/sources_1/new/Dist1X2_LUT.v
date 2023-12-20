`timescale 1ns / 1ps

module DEMUX1X2 #(
  parameter integer DATA_WIDTH = 67
)
(
  input  sel,
  input  ivld,
  input  [DATA_WIDTH-1:0] din,
  output ovld_0,
  output ovld_1,
  output [DATA_WIDTH-1:0] dout_0,
  output [DATA_WIDTH-1:0] dout_1
);

  assign ovld_0 = (sel==1'b0) ? ivld : 1'b0;
  assign ovld_1 = (sel==1'b1) ? ivld : 1'b0;

  assign dout_0 = (sel==1'b0) ? din : {DATA_WIDTH{1'b1}};
  assign dout_1 = (sel==1'b1) ? din : {DATA_WIDTH{1'b1}};

endmodule


module Dist1X2 #(
  parameter integer ROUTING_HBIT = 4,
  parameter integer C_DATA_WIDTH = 67
) (
  input                     clk,
  input                     rst_n,
  input                     ivld,
  input  [C_DATA_WIDTH-1:0] din,
  output reg                ovld_a,
  output reg                ovld_b,
  output reg [C_DATA_WIDTH-1:0] dout_a,
  output reg [C_DATA_WIDTH-1:0] dout_b
);

  wire ofw_w;
  wire ovld_a_w;
  wire ovld_b_w;
  
  wire [C_DATA_WIDTH-1:0] dout_a_w;
  wire [C_DATA_WIDTH-1:0] dout_b_w;

  DEMUX1X2 #(
    .DATA_WIDTH (C_DATA_WIDTH)
  ) inst_mux (
    .sel    ( din[ROUTING_HBIT] ),
    .ivld   ( ivld      ),
    .din    ( din       ),
    .ovld_0 ( ovld_a_w  ),
    .ovld_1 ( ovld_b_w  ),
    .dout_0 ( dout_a_w  ),
    .dout_1 ( dout_b_w  )           
  );

  always @(posedge clk) begin
    ovld_a <= ovld_a_w;
    ovld_b <= ovld_b_w;
  end

  always @(posedge clk) begin
    dout_a <= dout_a_w;
    dout_b <= dout_b_w;
  end

endmodule
