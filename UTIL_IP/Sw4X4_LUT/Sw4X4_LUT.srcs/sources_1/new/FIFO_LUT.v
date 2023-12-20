`timescale 1ns / 1ps

module FIFO_LUT #(
  parameter integer EMPTY_TH = 3,
  parameter integer FULL_TH  = 61,
  parameter integer C_WIDTH  = 32,
  parameter integer C_DEPTH  = 64
) (
  input  			clk,
  input  			rst,
  input  			rd_en,
  input  			wr_en,
  input  			[C_WIDTH-1:0] din,
  output wire [C_WIDTH-1:0] dout,
  output wire empty,
  output wire full,
  output wire prog_full
  );

/////////////////////////////////////////////////////////////////////////////
// XPM Modules (refer to UG974 for Documentation)
/////////////////////////////////////////////////////////////////////////////
// xpm_fifo_sync: Synchronous FIFO
// Xilinx Parameterized Macro, version 2020.2
xpm_fifo_sync #(
	.DOUT_RESET_VALUE		( "0"						), // String
	.ECC_MODE						( "no_ecc"			), // String
	.FIFO_MEMORY_TYPE		( "distributed" ), // String
	.FIFO_READ_LATENCY	( 1							), // 0-100, 1
	.FIFO_WRITE_DEPTH		( C_DEPTH				), // at least 16, power of 2
	.FULL_RESET_VALUE		( 0							), // full, almost full, prog_full
	.PROG_EMPTY_THRESH	( EMPTY_TH		  ), // DECIMAL
	.PROG_FULL_THRESH		( FULL_TH				), // DECIMAL
	.RD_DATA_COUNT_WIDTH( ), // DECIMAL
	.READ_DATA_WIDTH		( C_WIDTH				), // DECIMAL
	.READ_MODE					( "std"					), // String
	.SIM_ASSERT_CHK			( 0							), // DECIMAL; 0=disable simulation messages, 1=enable simulation messages
	.USE_ADV_FEATURES		( "0202"				), // String
	.WAKEUP_TIME				( 0							), // 0 to disable sleep
	.WRITE_DATA_WIDTH		( C_WIDTH				), // DECIMAL
	.WR_DATA_COUNT_WIDTH( )  // DECIMAL
) recv_fifo_inst (
	.almost_empty		(), // unused, dangling
	.almost_full		(), // unused, dangling
	.data_valid			(), // unused, dangling
	.dbiterr				(), // unused, dangling
	.dout						( dout 			 ),
	.empty					( empty      ),
	.full						( full       ),
	.overflow				(), // unused, dangling
	.prog_empty			(), // unused, dangling
	.prog_full			( prog_full  ),
	.rd_data_count	(), // unused, dangling
	.rd_rst_busy		(), // unused, dangling
	.sbiterr				(), // unused, dangling
	.underflow			(), // unused, dangling
	.wr_ack					(), // unused, dangling
	.wr_data_count	(), // unused, dangling
	.wr_rst_busy		(), // unused, dangling
	.din						( din				 ),
	.injectdbiterr	( 1'b0			 ),
	.injectsbiterr	( 1'b0			 ),
	.rd_en					( rd_en	     ),
	.rst						( rst				 ),
	.sleep					( 1'b0			 ),
	.wr_clk					( clk				 ),
	.wr_en					( wr_en			 )
 );
  
endmodule