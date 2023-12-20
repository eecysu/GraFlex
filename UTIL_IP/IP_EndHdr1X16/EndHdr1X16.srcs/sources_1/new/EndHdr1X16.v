`timescale 1ns / 1ps

module EndHdr1X16 (
  input  clk,
  input  stb_done_0,
  input  stb_done_1,
  input  stb_done_2,
  input  stb_done_3,
  input  stb_done_4,
  input  stb_done_5,
  input  stb_done_6,
  input  stb_done_7,
  input  stb_done_8,
  input  stb_done_9,
  input  stb_done_10,
  input  stb_done_11,
  input  stb_done_12,
  input  stb_done_13,
  input  stb_done_14,
  input  stb_done_15,
  output pe_ap_done
  );
  wire and_done_pt0;
  wire and_done_pt1;
  wire and_done;
  reg  and_done_inv_1d = 1'b0;
  
  assign and_done_pt0 = (stb_done_0 & stb_done_1 & stb_done_2 & stb_done_3 & stb_done_4 & stb_done_5 & stb_done_6 & stb_done_7);
  assign and_done_pt1 = (stb_done_8 & stb_done_9 & stb_done_10 & stb_done_11 & stb_done_12 & stb_done_13 & stb_done_14 & stb_done_15);
  assign and_done = and_done_pt0 & and_done_pt1;
  
  always @(posedge clk) begin
    and_done_inv_1d <= !and_done;
  end
  assign pe_ap_done = and_done & and_done_inv_1d;

endmodule