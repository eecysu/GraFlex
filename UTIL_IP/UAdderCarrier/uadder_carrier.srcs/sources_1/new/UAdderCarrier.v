`timescale 1ns / 1ps

// Data uses MSBs, Carrier uses LSBs

module UAdderCarrier #(
  parameter integer C_DATA_W  = 32,
  parameter integer C_CARRY_W = 34
) (
  input                               clk,
  input                               ivld_0,
  input                               ivld_1,
  input  [C_DATA_W+C_CARRY_W-1:0]     din_0,
  input  [C_DATA_W+C_CARRY_W-1:0]     din_1,
  output                              ovld,
  output [C_DATA_W+C_CARRY_W-1:0]     dout
);

  wire                 overflow;
  wire [C_DATA_W-1:0]  res;

  reg                  ovld_r;
  reg  [C_DATA_W:0]    i_sum_r;
  reg  [C_CARRY_W-1:0] carry_r;

  always@(posedge clk) begin
    if (ivld_0==1'b1 && ivld_1==1'b1)
      ovld_r <= 1'b1;
    else
      ovld_r <= 1'b0;
  end
  assign ovld = ovld_r;

  always@(posedge clk) begin
    if (ivld_0==1'b1 && ivld_1==1'b1) begin
      i_sum_r <= din_0[C_DATA_W+C_CARRY_W-1:C_CARRY_W] + din_1[C_DATA_W+C_CARRY_W-1:C_CARRY_W];
      carry_r <= din_0[C_CARRY_W-1:0];
    end
  end
  assign overflow = i_sum_r[C_DATA_W];
  assign res = (overflow==1'b1) ? {C_DATA_W{1'b1}} : i_sum_r[C_DATA_W-1:0];

  assign dout = {res, carry_r};

endmodule
