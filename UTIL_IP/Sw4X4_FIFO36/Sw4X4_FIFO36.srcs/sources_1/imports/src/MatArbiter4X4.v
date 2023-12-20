`timescale 1ns / 1ps

module NOR4 (
  input  in0,
  input  in1,
  input  in2,
  input  in3,
  output out
  );    
  assign out = !((!in0) | (!in1) | (!in2) | (!in3));

endmodule
////////////////////////////////////////////////////////////////////////////

module MatArbiter4X4 (
  input  clk,
  input  rst,        //reset signal     
  input  arbreq_0,
  input  arbreq_1,
  input  arbreq_2,
  input  arbreq_3,   //arbitration request
  output vld,
  output [1:0] sel,  //to a 4X1 MUX
  output we          //enable lock mem write
  );
  
  reg  [2:0] sel_t;
  // six registers to store the upper triangle of the arbitration matrix  
  reg  a_01;
  reg  a_02;
  reg  a_03;
  reg  a_12;
  reg  a_13;
  reg  a_23;   

  // grant signal, only one will be high at a time
  wire [3:0] grant;
  wire grant_0;
  wire grant_1;
  wire grant_2;
  wire grant_3;
  wire flip;    //enable state transition

  NOR4 g0 (.in0(arbreq_0), .in1((!arbreq_1) | (a_01)),  .in2((!arbreq_2) | (a_02)),  .in3((!arbreq_3) | (a_03)),  .out(grant_0));
  NOR4 g1 (.in0(arbreq_1), .in1((!arbreq_0) | (!a_01)), .in2((!arbreq_2) | (a_12)),  .in3((!arbreq_3) | (a_13)),  .out(grant_1));
  NOR4 g2 (.in0(arbreq_2), .in1((!arbreq_0) | (!a_02)), .in2((!arbreq_1) | (!a_12)), .in3((!arbreq_3) | (a_23)),  .out(grant_2));
  NOR4 g3 (.in0(arbreq_3), .in1((!arbreq_0) | (!a_03)), .in2((!arbreq_1) | (!a_13)), .in3((!arbreq_2) | (!a_23)), .out(grant_3));

  assign grant = {grant_3, grant_2, grant_1, grant_0};
  assign we    = (sel_t!=3'b111);
  assign flip  = (sel_t!=3'b111);
  
  // 4 to 2(LSB) encoder, the MSB indicate otherwise(no grant)
  always @(*)
    case(grant)
      4'b0001:
        sel_t = 3'b000;
      4'b0010:
        sel_t = 3'b001;
      4'b0100:
        sel_t = 3'b010;
      4'b1000:
        sel_t = 3'b011;
      default:
        sel_t = 3'b111;  //otherwise
    endcase
  assign sel = sel_t[1:0];
  assign vld = ~sel_t[2];

  // arbitration matrix
  always @(posedge clk) begin
    if (rst) begin
      a_01 <= 1'b1;
      a_02 <= 1'b1;
      a_03 <= 1'b1;
      a_12 <= 1'b1;
      a_13 <= 1'b1;
      a_23 <= 1'b1;
    end else if (flip && grant_0) begin
      a_01 <= 1'b0;
      a_02 <= 1'b0;
      a_03 <= 1'b0;
    end else if (flip && grant_1) begin
      a_01 <= 1'b1;
      a_12 <= 1'b0;
      a_13 <= 1'b0;    
    end else if (flip && grant_2) begin
      a_02 <= 1'b1;
      a_12 <= 1'b1;
      a_23 <= 1'b0;
    end else if (flip && grant_3) begin
      a_03 <= 1'b1;
      a_13 <= 1'b1;
      a_23 <= 1'b1;
    end
  end

endmodule