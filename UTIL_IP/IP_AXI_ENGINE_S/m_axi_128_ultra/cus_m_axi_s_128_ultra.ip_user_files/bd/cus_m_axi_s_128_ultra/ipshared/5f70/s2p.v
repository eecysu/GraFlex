`timescale 1ns / 1ps

module step_to_pulse (
	input  clk,
	input  step_in,
	output pul_out
);

	reg  step_in_1d;

	always @(posedge clk) begin
		step_in_1d <= step_in;
	end
	assign pul_out = step_in & (~step_in_1d);

endmodule
