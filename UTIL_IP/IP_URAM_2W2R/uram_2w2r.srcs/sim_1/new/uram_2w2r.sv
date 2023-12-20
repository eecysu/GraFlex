`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.11.2021 21:14:44
// Design Name: 
// Module Name: uram_2w2r
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

module uram_2w2r_tb ();

parameter integer LP_CLK_PERIOD_PS = 4000; // 250 MHz
parameter integer DATA_WIDTH = 64;
parameter integer ADDR_RANGE = 4096;
parameter integer ADDR_WIDTH = 12;
    
// System Signals
logic ap_clk = 0;
logic ap_rst_n = 0;
logic ce0;
logic ce1;
logic [8-1:0] we0;
logic [8-1:0] we1;
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
	#LP_CLK_PERIOD_PS;
	ce0 = 1'b0;
	////
	#(3*LP_CLK_PERIOD_PS);
	ce0 = 1'b1;
	#(LP_CLK_PERIOD_PS);
	ce0 = 1'b0;
	#(LP_CLK_PERIOD_PS);
	ce0 = 1'b1;//
	#LP_CLK_PERIOD_PS;
	ce0 = 1'b0;
	#(2*LP_CLK_PERIOD_PS);
	ce0 = 1'b1;
	#LP_CLK_PERIOD_PS;
	ce0 = 1'b0;
end

initial begin: WE0
	we0 = 8'h00;
	#(4*LP_CLK_PERIOD_PS);
	we0 = 8'hff;
	#LP_CLK_PERIOD_PS;
	we0 = 8'h00;
	////
	#(3*LP_CLK_PERIOD_PS);
	we0 = 8'hff;
	#(LP_CLK_PERIOD_PS);
	we0 = 8'h00;
	#(LP_CLK_PERIOD_PS);
	we0 = 8'hff;//
	#LP_CLK_PERIOD_PS;
	we0 = 8'h00;
	#(2*LP_CLK_PERIOD_PS);
	we0 = 8'hff;
	#LP_CLK_PERIOD_PS;
	we0 = 8'h00;
end

// port #1
initial begin: CE1
	ce1 = 1'b0;
	#(5*LP_CLK_PERIOD_PS);
	ce1 = 1'b1;
	#LP_CLK_PERIOD_PS;
	ce1 = 1'b0;
	////
	#(3*LP_CLK_PERIOD_PS);
	ce1 = 1'b1;
	#(LP_CLK_PERIOD_PS);
	ce1 = 1'b0;
	#(LP_CLK_PERIOD_PS);
	ce1 = 1'b1;//
	#LP_CLK_PERIOD_PS;
	ce1 = 1'b0;
	#(2*LP_CLK_PERIOD_PS);
	ce1 = 1'b1;
	#LP_CLK_PERIOD_PS;
	ce1 = 1'b0;
	
	#(10*LP_CLK_PERIOD_PS);
	ce1 = 1'b1;
	#LP_CLK_PERIOD_PS;
	ce1 = 1'b0;
	////
	#(3*LP_CLK_PERIOD_PS);
	ce1 = 1'b1;
	#(LP_CLK_PERIOD_PS);
	ce1 = 1'b0;
	#(LP_CLK_PERIOD_PS);
	ce1 = 1'b1;//
	#LP_CLK_PERIOD_PS;
	ce1 = 1'b0;
	#(2*LP_CLK_PERIOD_PS);
	ce1 = 1'b1;
	#LP_CLK_PERIOD_PS;
	ce1 = 1'b0;

	#(10*LP_CLK_PERIOD_PS);
	ce1 = 1'b1;
	#LP_CLK_PERIOD_PS;
	ce1 = 1'b0;
	////
	#(3*LP_CLK_PERIOD_PS);
	ce1 = 1'b1;
	#(LP_CLK_PERIOD_PS);
	ce1 = 1'b0;
	#(LP_CLK_PERIOD_PS);
	ce1 = 1'b1;//
	#LP_CLK_PERIOD_PS;
	ce1 = 1'b0;
	#(2*LP_CLK_PERIOD_PS);
	ce1 = 1'b1;
	#LP_CLK_PERIOD_PS;
	ce1 = 1'b0; 

end

initial begin: WE1
	we1 = 8'h00;
end

// address
initial begin: ADDR0
	addr0 = 12'd0;
	#(4*LP_CLK_PERIOD_PS);
	addr0 = 12'd1;
	#LP_CLK_PERIOD_PS;
	addr0 = 12'd0;
	////
	#(3*LP_CLK_PERIOD_PS);
	addr0 = 12'd2;
	#(LP_CLK_PERIOD_PS);
	addr0 = 12'd0;
	#(LP_CLK_PERIOD_PS);
	addr0 = 12'd3;//
	#LP_CLK_PERIOD_PS;
	addr0 = 12'd0;
	#(2*LP_CLK_PERIOD_PS);
	addr0 = 12'd4;
	#LP_CLK_PERIOD_PS;
	addr0 = 12'd0;
end

initial begin: ADDR1
	addr1 = 12'd0;
	#(5*LP_CLK_PERIOD_PS);
	addr1 = 12'd1;
	#LP_CLK_PERIOD_PS;
	addr1 = 12'd0;
	////
	#(3*LP_CLK_PERIOD_PS);
	addr1 = 12'd2;
	#(LP_CLK_PERIOD_PS);
	addr1 = 12'd0;
	#(LP_CLK_PERIOD_PS);
	addr1 = 12'd3;//
	#LP_CLK_PERIOD_PS;
	addr1 = 12'd0;
	#(2*LP_CLK_PERIOD_PS);
	addr1 = 12'd4;
	#LP_CLK_PERIOD_PS;
	addr1 = 12'd0;

	#(10*LP_CLK_PERIOD_PS);
	addr1 = 12'd1;
	#LP_CLK_PERIOD_PS;
	addr1 = 12'd0;
	////
	#(3*LP_CLK_PERIOD_PS);
	addr1 = 12'd2;
	#(LP_CLK_PERIOD_PS);
	addr1 = 12'd0;
	#(LP_CLK_PERIOD_PS);
	addr1 = 12'd3;//
	#LP_CLK_PERIOD_PS;
	addr1 = 12'd0;
	#(2*LP_CLK_PERIOD_PS);
	addr1 = 12'd4;
	#LP_CLK_PERIOD_PS;
	addr1 = 12'd0;

	#(10*LP_CLK_PERIOD_PS);
	addr1 = 12'd1;
	#LP_CLK_PERIOD_PS;
	addr1 = 12'd0;
	////
	#(3*LP_CLK_PERIOD_PS);
	addr1 = 12'd2;
	#(LP_CLK_PERIOD_PS);
	addr1 = 12'd0;
	#(LP_CLK_PERIOD_PS);
	addr1 = 12'd3;//
	#LP_CLK_PERIOD_PS;
	addr1 = 12'd0;
	#(2*LP_CLK_PERIOD_PS);
	addr1 = 12'd4;
	#LP_CLK_PERIOD_PS;
	addr1 = 12'd0;

end

// wr data
initial begin: WDATA0
	wdata0 = 64'd1;
	#(5*LP_CLK_PERIOD_PS);
	wdata0 = 64'd2;
	////
	#(4*LP_CLK_PERIOD_PS);
	wdata0 = 64'd3;
	#(3*LP_CLK_PERIOD_PS);
	wdata0 = 64'd4;
end

initial begin: WDATA1
	wdata1 = 64'd0;
end
    
uram_2w_2r# (
	.DATA_WIDTH ( 64		),
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
