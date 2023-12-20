`timescale 1ns / 1ps

module dff_4var #(
  parameter integer DW_1 = 1,
  parameter integer DW_2 = 1,
  parameter integer DW_3 = 1,
  parameter integer DW_4 = 1
)
(
  input  clk,
  input  [DW_1-1:0] q1,
  input  [DW_2-1:0] q2,
  input  [DW_3-1:0] q3,
  input  [DW_4-1:0] q4,
  output [DW_1-1:0] d1,
  output [DW_2-1:0] d2,
  output [DW_3-1:0] d3,
  output [DW_4-1:0] d4
    );
  reg [DW_1-1:0] d_r1;
  reg [DW_2-1:0] d_r2;
  reg [DW_3-1:0] d_r3;
  reg [DW_4-1:0] d_r4;
    
  always @(posedge clk) begin
    d_r1 <= q1;
    d_r2 <= q2;
    d_r3 <= q3;
    d_r4 <= q4;
  end
  
  assign d1 = d_r1;
  assign d2 = d_r2;
  assign d3 = d_r3;
  assign d4 = d_r4;
    
endmodule
