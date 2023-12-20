`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.07.2021 20:40:46
// Design Name: 
// Module Name: dff
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module dff #(
  parameter integer DATA_WIDTH = 32
)
(
  input  clk,
  input  [DATA_WIDTH-1:0] q,
  output [DATA_WIDTH-1:0] d
    );
  reg [DATA_WIDTH-1:0] d_r;
    
  always @(posedge clk) begin
    d_r <= q;
  end    
  assign d = d_r;
    
endmodule
