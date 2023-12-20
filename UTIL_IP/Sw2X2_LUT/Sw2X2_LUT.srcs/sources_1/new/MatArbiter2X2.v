`timescale 1ns / 1ps

module NOR_2 (
  input  in0,
  input  in1,
  output out
  );
  assign out = !((!in0) | (!in1));
  
endmodule
//////////////////////////////////////////////////////////////////////////////////

module MatArbiter2X2 (
  input  clk,
  input  rst,      //reset signal     
  input  arbreq_0,
  input  arbreq_1, //arbitration request
  output vld,      //sel[1]
  output sel,      //sel[0], to a 2X1 MUX
  output we  
  );

  reg  [1:0] sel_t;
  //one register for upper triangle
  reg  a_01;
  //grant signal, only one port will be granted at a time
  wire [1:0] grant;
  wire grant_0;
  wire grant_1;
  wire flip;

  NOR_2 g0 (.in0(arbreq_0), .in1((!arbreq_1) | a_01), .out(grant_0));
  NOR_2 g1 (.in0(arbreq_1), .in1((!arbreq_0) | (!a_01)), .out(grant_1));

  assign grant = {grant_1, grant_0};
  assign we    = (sel_t!=2'b11);
  assign flip  = (sel_t!=2'b11);

  // 2 to 1(LSB) encoder, the MSB indicate otherwise(no grant)
  always @(*)
    case(grant)
      2'b01:
        sel_t = 2'b00;
      2'b10:
        sel_t = 2'b01;
      default:
        sel_t = 2'b11;  //otherwise
    endcase
  assign sel = sel_t[0];  
  assign vld = ~sel_t[1];
  
  // arbitration matrix
  always @(posedge clk) begin
    if (rst)
      a_01 <= 1'b1;
    else if (flip && grant_0)
      a_01 <= 1'b0;
    else if (flip && grant_1)
      a_01 <= 1'b1;
  end
  
endmodule
