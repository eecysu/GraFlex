`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.09.2021 15:17:18
// Design Name: 
// Module Name: StartHdr
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

module StartHdr (
  input  clk,
  input  rst_n,
  input  sys_start,
  input  pe_done,
  output stb_done,
  output pe_start
  );

  reg pe_done_r = 1'b0;
  reg sys_start_n_r;
  wire sys_start_pulse; // 1-cycle wide pulse

  always @(posedge clk) begin
    sys_start_n_r <= !sys_start;
  end
  assign sys_start_pulse = sys_start & sys_start_n_r;

  always @(posedge clk) begin
    if (rst_n==1'b0 || sys_start_pulse==1'b1)
      pe_done_r <= 1'b0;
    else if (pe_done == 1'b1)
      pe_done_r <= 1'b1;
  end
  
  assign stb_done = pe_done_r;
  assign pe_start = (sys_start & (!pe_done_r));

endmodule
