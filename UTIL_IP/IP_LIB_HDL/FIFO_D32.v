`timescale 1ns / 1ps

module FIFO_D32 #(
  parameter integer DATA_WIDTH = 32,
  parameter integer EMPTY_TH   = 3,
  parameter integer FULL_TH    = 13 
) (
  input  clk,
  input  rst,
  input  rd_en,
  input  wr_en,
  input  [DATA_WIDTH-1:0] din,
  output wire [DATA_WIDTH-1:0] dout,
  output wire empty,
  output wire prog_full
  );
  
// wire [9:0] rd_cnt;
// wire [9:0] wr_cnt;

/////////////////////////////////////////////////////////////////////////////
// XPM Modules (refer to UG974 for Documentation)
/////////////////////////////////////////////////////////////////////////////
// xpm_fifo_sync: Synchronous FIFO
// Xilinx Parameterized Macro, version 2020.2
xpm_fifo_sync #(
	.DOUT_RESET_VALUE		( "0"			    ), // String
	.ECC_MODE				( "no_ecc"			), // String
	.FIFO_MEMORY_TYPE		( "distributed"     ), // String
	.FIFO_READ_LATENCY      ( 1					), // 0-100, 1
	.FIFO_WRITE_DEPTH		( 32				), // at least 16
	.FULL_RESET_VALUE		( 0					), // full, almost full, prog_full
	.PROG_EMPTY_THRESH	    ( EMPTY_TH		    ), // DECIMAL
	.PROG_FULL_THRESH		( FULL_TH			), // DECIMAL
	.RD_DATA_COUNT_WIDTH    ( 4					), // DECIMAL
	.READ_DATA_WIDTH		( DATA_WIDTH		), // DECIMAL
	.READ_MODE				( "std"				), // String
	.SIM_ASSERT_CHK			( 0					), // DECIMAL; 0=disable simulation messages, 1=enable simulation messages
	.USE_ADV_FEATURES		( "0202"			), // String
	.WAKEUP_TIME			( 0					), // 0 to disable sleep
	.WRITE_DATA_WIDTH		( DATA_WIDTH		), // DECIMAL
	.WR_DATA_COUNT_WIDTH    ( 4 				)  // DECIMAL
) recv_fifo_inst (
	.almost_empty		(), // unused, dangling
	.almost_full		(), // unused, dangling
	.data_valid			(), // unused, dangling
	.dbiterr			(), // unused, dangling
	.dout				( dout 		),
	.empty				( empty     ),
	.full				(), // unused, dangling
	.overflow			(), // unused, dangling
	.prog_empty			(), // unused, dangling
	.prog_full			( prog_full ),
	.rd_data_count		(), // unused, dangling
	.rd_rst_busy		(), // unused, dangling
	.sbiterr			(), // unused, dangling
	.underflow			(), // unused, dangling
	.wr_ack				(), // unused, dangling
	.wr_data_count		(), // unused, dangling
	.wr_rst_busy		(), // unused, dangling
	.din				( din		),
	.injectdbiterr		( 1'b0		),
	.injectsbiterr		( 1'b0		),
	.rd_en				( rd_en	    ),
	.rst				( rst		),
	.sleep				( 1'b0		),
	.wr_clk				( clk		),
	.wr_en				( wr_en		)
 );
  
endmodule
