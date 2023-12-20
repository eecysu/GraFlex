`timescale 1ns / 1ps

module cycle_counter #(
  parameter integer CNT_WIDTH = 32
) (
	input  clk,
	input  st_pulse,
	input  tm_pulse,
	input  sys_start,
	output [CNT_WIDTH-1:0] cycle_cnt
);

  reg sys_start_n_r;
  wire sys_start_pulse; // 1-cycle wide pulse

	reg stable_st;
	reg [CNT_WIDTH-1:0] cycle_cnt_r;

  always @(posedge clk) begin
    sys_start_n_r <= !sys_start;
  end
  assign sys_start_pulse = sys_start & sys_start_n_r;

	always @(posedge clk) begin
		if (sys_start_pulse==1'b1)
			stable_st <= 1'b0;
		else if (st_pulse & !tm_pulse)
			stable_st <= 1'b1;
		else if (tm_pulse)
			stable_st <= 1'b0;
	end

	always @(posedge clk) begin
		if (sys_start_pulse==1'b1)
			cycle_cnt_r <= 32'd0;
		else if (stable_st==1'b1)
			cycle_cnt_r <= cycle_cnt_r + 32'd1;
	end
	assign cycle_cnt = cycle_cnt_r;

endmodule
