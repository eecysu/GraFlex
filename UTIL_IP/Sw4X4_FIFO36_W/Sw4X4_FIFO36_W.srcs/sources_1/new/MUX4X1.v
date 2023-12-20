`timescale 1ns / 1ps

module MUX4X1 #(
  parameter integer DATA_WIDTH = 64
)
(
  input  [DATA_WIDTH-1:0] din0,
  input  [DATA_WIDTH-1:0] din1,
  input  [DATA_WIDTH-1:0] din2,
  input  [DATA_WIDTH-1:0] din3,
  input  [1:0] sel,
  output [DATA_WIDTH-1:0] dout
);

  reg [DATA_WIDTH-1:0] dout_t;

  always @(*) begin
    case(sel)
      2'b00:
        dout_t = din0;
      2'b01:
        dout_t = din1;  
      2'b10:
        dout_t = din2;
      2'b11:
        dout_t = din3;
    endcase
  end
  assign dout = dout_t;

endmodule