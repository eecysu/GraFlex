`timescale 1ns / 1ps

module EndHdr1X4 (
  input  clk,
  input  stb_done_0,
  input  stb_done_1,
  input  stb_done_2,
  input  stb_done_3,
  output pe_ap_done
  );
  wire and_done;
  reg  and_done_inv_1d = 1'b0;
  
  assign and_done = (stb_done_0 & stb_done_1 & stb_done_2 & stb_done_3);
  
  always @(posedge clk) begin
    and_done_inv_1d <= !and_done;
  end
  assign pe_ap_done = and_done & and_done_inv_1d;

endmodule