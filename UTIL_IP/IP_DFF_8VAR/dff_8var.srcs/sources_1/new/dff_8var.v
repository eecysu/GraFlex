`timescale 1ns / 1ps

module dff_8var #(
  parameter integer DW_1 = 1,
  parameter integer DW_2 = 1,
  parameter integer DW_3 = 1,
  parameter integer DW_4 = 1,
  parameter integer DW_5 = 1,
  parameter integer DW_6 = 1,
  parameter integer DW_7 = 1,
  parameter integer DW_8 = 1
)
(
  input  clk,
  input  [DW_1-1:0] q1,
  input  [DW_2-1:0] q2,
  input  [DW_3-1:0] q3,
  input  [DW_4-1:0] q4,
  input  [DW_5-1:0] q5,
  input  [DW_6-1:0] q6,
  input  [DW_7-1:0] q7,
  input  [DW_8-1:0] q8,
  output [DW_1-1:0] d1,
  output [DW_2-1:0] d2,
  output [DW_3-1:0] d3,
  output [DW_4-1:0] d4,  
  output [DW_5-1:0] d5,
  output [DW_6-1:0] d6,
  output [DW_7-1:0] d7,
  output [DW_8-1:0] d8
    );
  reg [DW_1-1:0] d_r1;
  reg [DW_2-1:0] d_r2;
  reg [DW_3-1:0] d_r3;
  reg [DW_4-1:0] d_r4;
  reg [DW_5-1:0] d_r5;
  reg [DW_6-1:0] d_r6;
  reg [DW_7-1:0] d_r7;
  reg [DW_8-1:0] d_r8;
    
  always @(posedge clk) begin
    d_r1 <= q1;
    d_r2 <= q2;
    d_r3 <= q3;
    d_r4 <= q4;
    d_r5 <= q5;
    d_r6 <= q6;
    d_r7 <= q7;
    d_r8 <= q8;    
  end
  
  assign d1 = d_r1;
  assign d2 = d_r2;
  assign d3 = d_r3;
  assign d4 = d_r4;
  assign d5 = d_r5;
  assign d6 = d_r6;
  assign d7 = d_r7;
  assign d8 = d_r8;
    
endmodule
