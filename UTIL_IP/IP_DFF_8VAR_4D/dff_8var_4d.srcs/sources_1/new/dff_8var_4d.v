`timescale 1ns / 1ps

module dff_8var_4d #(
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
  reg [DW_1-1:0] d1_r0, d1_r1, d1_r2, d1_r3;
  reg [DW_2-1:0] d2_r0, d2_r1, d2_r2, d2_r3;
  reg [DW_3-1:0] d3_r0, d3_r1, d3_r2, d3_r3;
  reg [DW_4-1:0] d4_r0, d4_r1, d4_r2, d4_r3;
  reg [DW_5-1:0] d5_r0, d5_r1, d5_r2, d5_r3;
  reg [DW_6-1:0] d6_r0, d6_r1, d6_r2, d6_r3;
  reg [DW_7-1:0] d7_r0, d7_r1, d7_r2, d7_r3;
  reg [DW_8-1:0] d8_r0, d8_r1, d8_r2, d8_r3;
    
  always @(posedge clk) begin
    d1_r0 <= q1;
    d2_r0 <= q2;
    d3_r0 <= q3;
    d4_r0 <= q4;
    d5_r0 <= q5;
    d6_r0 <= q6;
    d7_r0 <= q7;
    d8_r0 <= q8;    
  end
  
  always @(posedge clk) begin
    d1_r1 <= d1_r0;
    d2_r1 <= d2_r0;
    d3_r1 <= d3_r0;
    d4_r1 <= d4_r0;
    d5_r1 <= d5_r0;
    d6_r1 <= d6_r0;
    d7_r1 <= d7_r0;
    d8_r1 <= d8_r0;
  end

  always @(posedge clk) begin
    d1_r2 <= d1_r1;
    d2_r2 <= d2_r1;
    d3_r2 <= d3_r1;
    d4_r2 <= d4_r1;
    d5_r2 <= d5_r1;
    d6_r2 <= d6_r1;
    d7_r2 <= d7_r1;
    d8_r2 <= d8_r1;
  end

  always @(posedge clk) begin
    d1_r3 <= d1_r2;
    d2_r3 <= d2_r2;
    d3_r3 <= d3_r2;
    d4_r3 <= d4_r2;
    d5_r3 <= d5_r2;
    d6_r3 <= d6_r2;
    d7_r3 <= d7_r2;
    d8_r3 <= d8_r2;
  end
  
  assign d1 = d1_r3;
  assign d2 = d2_r3;
  assign d3 = d3_r3;
  assign d4 = d4_r3;
  assign d5 = d5_r3;
  assign d6 = d6_r3;
  assign d7 = d7_r3;
  assign d8 = d8_r3;
    
endmodule
