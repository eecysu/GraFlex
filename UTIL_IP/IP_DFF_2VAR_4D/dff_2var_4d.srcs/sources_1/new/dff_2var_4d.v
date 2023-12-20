`timescale 1ns / 1ps

module dff_2var_4d #(
  parameter integer DW_1 = 1,
  parameter integer DW_2 = 1
)
(
  input  clk,
  input  [DW_1-1:0] q1,
  input  [DW_2-1:0] q2,
  output [DW_1-1:0] d1,
  output [DW_2-1:0] d2
    );
  reg [DW_1-1:0] d1_r0, d1_r1, d1_r2, d1_r3;
  reg [DW_2-1:0] d2_r0, d2_r1, d2_r2, d2_r3;
    
  always @(posedge clk) begin
    d1_r3 <= d1_r2;
    d1_r2 <= d1_r1;
    d1_r1 <= d1_r0;
    d1_r0 <= q1;
  end
  assign d1 = d1_r3;
  
  always @(posedge clk) begin
    d2_r3 <= d2_r2;
    d2_r2 <= d2_r1;
    d2_r1 <= d2_r0;
    d2_r0 <= q2;
  end
  assign d2 = d2_r3;
    
endmodule