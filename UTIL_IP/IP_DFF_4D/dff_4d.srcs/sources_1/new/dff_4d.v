`timescale 1ns / 1ps

module dff_4d #(
  parameter integer DATA_WIDTH = 32
)
(
  input  clk,
  input  [DATA_WIDTH-1:0] q,
  output [DATA_WIDTH-1:0] d
    );
  reg [DATA_WIDTH-1:0] d0;
  reg [DATA_WIDTH-1:0] d1;
  reg [DATA_WIDTH-1:0] d2;
  reg [DATA_WIDTH-1:0] d3;  
    
  always @(posedge clk) begin
    d0 <= q;
    d1 <= d0;
    d2 <= d1;
    d3 <= d2;
  end    
  assign d = d3;
    
endmodule
