`default_nettype none
`timescale 1 ps / 1 ps

module uram_2w_2r_x4_tb ();

logic [3:0]   ce0, ce1, we0, we1;
logic [47:0]  addr0, addr1;
logic [255:0] rdata0, rdata1;
logic [255:0] wdata0, wdata1;

parameter integer LP_CLK_PERIOD_PS = 4000; // 250 MHz

//System Signals
logic ap_clk = 0;

initial begin: AP_CLK
  forever begin
    ap_clk = #(LP_CLK_PERIOD_PS/2) ~ap_clk;
  end
end
 
//System Signals
logic ap_rst_n = 0;
logic initial_reset  =0;

task automatic ap_rst_n_sequence(input integer unsigned width = 20);
  @(posedge ap_clk);
  #1ps;
  ap_rst_n = 0;
  repeat (width) @(posedge ap_clk);
  #1ps;
  ap_rst_n = 1;
endtask

initial begin: AP_RST
  ap_rst_n_sequence(4);
  initial_reset =1;
end

uram_2w_2r_x4 DUT (
 .clk   ( ap_clk ),
 .rst_n ( ap_rst_n ),
 .ce0   ( ce0 ),
 .ce1   ( ce1 ),
 .we0   ( we0 ),
 .we1   ( we1 ),
 .addr0 ( addr0 ),
 .addr1 ( addr1 ),
 .wdata0( wdata0),
 .wdata1( wdata1),
 .rdata0( rdata0),
 .rdata1( rdata1)
);

initial begin
  ce0 = 'h0;
  ce1 = 'h0;
  we0 = 'h0;
  we1 = 'h0;
  #(10*LP_CLK_PERIOD_PS);
  ce1 = 'hf;  
  we1 = 'hf;
  addr1 = 'h000000000000;
  wdata1 = 'hffffffffffffffffeeeeeeeeeeeeeeeeddddddddddddddddcccccccccccccccc;
  #(LP_CLK_PERIOD_PS);
  ce0 = 'h0;
  ce1 = 'h0;  
  we0 = 'h0;
  we1 = 'h0;
  addr0 = 'hx;
  addr1 = 'hx;
  #(2*LP_CLK_PERIOD_PS);
  ce0 = 'b0100;
  we0 = 'h0;
  addr0 = 'hxxx000xxxxxx;
end


endmodule
`default_nettype wire
