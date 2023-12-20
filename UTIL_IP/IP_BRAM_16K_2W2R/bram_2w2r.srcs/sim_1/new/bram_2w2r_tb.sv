`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.11.2021 15:25:59
// Design Name: 
// Module Name: bram_2w2r_tb
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

module bram_2w2r_tb();

parameter integer LP_CLK_PERIOD_PS = 4000; // 250 MHz
parameter integer DATA_WIDTH = 8;
parameter integer ADDR_RANGE = 4096;
parameter integer ADDR_WIDTH = 12;

// System Signals
logic ap_clk = 0;
logic ap_rst_n = 0;
logic ce0, ce1;
logic we0, we1;
logic [ADDR_WIDTH-1:0]	addr0 = 0;
logic [ADDR_WIDTH-1:0]	addr1 = 0;
logic [DATA_WIDTH-1:0]	rdata0;
logic [DATA_WIDTH-1:0]	rdata1;
logic [DATA_WIDTH-1:0]	wdata0;
logic [DATA_WIDTH-1:0]	wdata1;

initial begin: AP_CLK
  forever begin
    ap_clk = #(LP_CLK_PERIOD_PS/2) ~ap_clk;
  end
end

initial begin: AP_RST_N
	#(2*LP_CLK_PERIOD_PS);
	ap_rst_n = 0;
	#LP_CLK_PERIOD_PS;
	ap_rst_n = 1;
end

// port #0
initial begin: CE0
	ce0 = 1'b0;
	#(4*LP_CLK_PERIOD_PS);
	ce0 = 1'b1;
	#(2*LP_CLK_PERIOD_PS);
	ce0 = 1'b0;
	////
	#(2*LP_CLK_PERIOD_PS);
	ce0 = 1'b1;
	#(2*LP_CLK_PERIOD_PS);
	ce0 = 1'b0;
	#(LP_CLK_PERIOD_PS);
	ce0 = 1'b0;//
	#LP_CLK_PERIOD_PS;
	ce0 = 1'b1;
	#LP_CLK_PERIOD_PS;
	ce0 = 1'b0;
end

initial begin: WE0
	we0 = 1'b0;
	#(5*LP_CLK_PERIOD_PS);
	we0 = 1'b1;
	#(LP_CLK_PERIOD_PS);
	we0 = 1'b0;
	//
	#(3*LP_CLK_PERIOD_PS);
	we0 = 1'b1;//
	#(LP_CLK_PERIOD_PS);
	we0 = 1'b0;
end

// port #1
initial begin: CE1
	ce1 = 1'b0;
	#(5*LP_CLK_PERIOD_PS);
	//
	#(2*LP_CLK_PERIOD_PS);
	ce1 = 1'b1;
	#(2*LP_CLK_PERIOD_PS);
	ce1 = 1'b0;
	#(LP_CLK_PERIOD_PS);
	ce1 = 1'b0;
end

initial begin: WE1
	we1 = 1'b0;
	#(5*LP_CLK_PERIOD_PS);
	////
	#(3*LP_CLK_PERIOD_PS);
	we1 = 1'b1; ////
	#(LP_CLK_PERIOD_PS);
	we1 = 1'b0;
end

// address
initial begin: ADDR0
	addr0 = 12'dx;
	#(4*LP_CLK_PERIOD_PS);
	addr0 = 12'd5;
	#(2*LP_CLK_PERIOD_PS);
	addr0 = 12'dx;
	////
	#(2*LP_CLK_PERIOD_PS);
	addr0 = 12'd7;
	#(2*LP_CLK_PERIOD_PS);
	addr0 = 12'dx;
	#(2*LP_CLK_PERIOD_PS);
	addr0 = 12'd7;
end

initial begin: ADDR1
	addr1 = 12'dx;
	#(5*LP_CLK_PERIOD_PS);
	////
	#(2*LP_CLK_PERIOD_PS);
	addr1 = 12'd5;
	#(2*LP_CLK_PERIOD_PS);
	addr1 = 'x;
end

// wr data
initial begin: WDATA0
	wdata0 = 8'h20;
	#(5*LP_CLK_PERIOD_PS);
	wdata0 = 8'h40;
	////
	#(4*LP_CLK_PERIOD_PS);
	wdata0 = 8'h01;
end

initial begin: WDATA1
	wdata1 = 8'h00;
	#(5*LP_CLK_PERIOD_PS);
	////
	#(3*LP_CLK_PERIOD_PS);
	wdata1 = 8'h44;
end

bram_2w_2r# (
	.DATA_WIDTH ( 8			),
	.ADDR_RANGE	( 4096	),
	.ADDR_WIDTH	( 12  	)
) DUT (
	.clk		( ap_clk	),
	.rst_n	(	ap_rst_n),
	.ce0		(	ce0			),
	.ce1		(	ce1			),
	.we0		(	we0			),
	.we1		(	we1			),
	.addr0	(	addr0		),
	.addr1	(	addr1		),
	.rdata0	(	rdata0	),
	.rdata1	(	rdata1	),
	.wdata0	(	wdata0	),
	.wdata1	(	wdata1	)
);

endmodule
