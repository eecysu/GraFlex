`timescale 1ns / 1ps

module OrLatch (
  input  clk,
  input  pe_start,
  input  din,
  output dout
  );

  reg  pe_start_n_r;
  reg  dout_r;
  
  wire pe_start_pulse; // 1-cycle wide pulse

  always @(posedge clk) begin
    pe_start_n_r <= !pe_start;
  end
  assign pe_start_pulse = pe_start & pe_start_n_r;

	always @(posedge clk) begin
    if (pe_start_pulse)
      dout_r <= 1'b0;
    else if (din == 1'b1)
      dout_r <= 1'b1;
  end
  assign dout = dout_r;

endmodule
