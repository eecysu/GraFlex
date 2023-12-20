`timescale 1ns / 1ps

module Start_Hdr #(
  parameter integer CNT_W = 32
) (
  input  clk,
  input  rst_n,
  input  sys_start,
  input  ap_start,
  input  pe_done,
  output pe_start,
  output [CNT_W-1:0] pe_cnt
  );

	reg  [CNT_W-1:0] pe_cnt_r = 'd0;
  reg  pe_done_r = 1'b0;
  reg  sys_start_n_r;
  reg  ap_start_r;
  
  wire sys_start_pulse; // 1-cycle wide pulse

  always @(posedge clk) begin
    sys_start_n_r <= !sys_start;
    ap_start_r <= ap_start;
    pe_done_r <= pe_done;
  end
  assign sys_start_pulse = sys_start & sys_start_n_r;

	always @(posedge clk) begin
		if (sys_start_pulse)
			pe_cnt_r <= 'd0;
		else if (ap_start)
			pe_cnt_r <= pe_cnt_r + 'd1;
	end
	assign pe_cnt = pe_cnt_r;
  
  assign pe_start = (ap_start_r & (!pe_done_r));

endmodule

