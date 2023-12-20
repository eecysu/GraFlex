`timescale 1ns / 1ps

module dff_2var #(
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
  reg [DW_1-1:0] d_r1;
  reg [DW_2-1:0] d_r2;
    
  always @(posedge clk) begin
    d_r1 <= q1;
    d_r2 <= q2;
  end
  
  assign d1 = d_r1;
  assign d2 = d_r2;
    
endmodule