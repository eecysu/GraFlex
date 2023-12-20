`timescale 1ns / 1ps

module FIFO36W36 #(
  parameter integer EMPTY_TH = 2,
  parameter integer FULL_TH  = 1022 
) (
  input  clk,
  input  rst,
  input  rd_en,
  input  wr_en,
  input  [31:0] din,
  output wire [31:0] dout,
  output wire [13:0] rd_cnt,
  output wire [13:0] wr_cnt,
  output wire empty,
  output wire prog_empty,
  output wire full,
  output wire prog_full
  );

  // wire empty;
  // wire full;

   // FIFO36E2: 36Kb FIFO (First-In-First-Out) Block RAM Memory
   //           Virtex UltraScale+
   // Xilinx HDL Language Template, version 2020.1    
    
   FIFO36E2 #(
      .CASCADE_ORDER("NONE"),            // FIRST, LAST, MIDDLE, NONE, PARALLEL
      .CLOCK_DOMAINS("COMMON"),          // COMMON, INDEPENDENT
      .FIRST_WORD_FALL_THROUGH("FALSE"),  // FALSE, TRUE
      .INIT(36'h000000000),              // Initial values on output port
      .PROG_EMPTY_THRESH(EMPTY_TH),      // Programmable Empty Threshold
      .PROG_FULL_THRESH(FULL_TH),        // Programmable Full Threshold
      // Programmable Inversion Attributes: Specifies the use of the built-in programmable inversion
      .IS_RDCLK_INVERTED(1'b0),          // Optional inversion for RDCLK
      .IS_RDEN_INVERTED(1'b0),           // Optional inversion for RDEN
      .IS_RSTREG_INVERTED(1'b0),         // Optional inversion for RSTREG
      .IS_RST_INVERTED(1'b0),            // Optional inversion for RST
      .IS_WRCLK_INVERTED(1'b0),          // Optional inversion for WRCLK
      .IS_WREN_INVERTED(1'b0),           // Optional inversion for WREN
      .RDCOUNT_TYPE("SIMPLE_DATACOUNT"), // EXTENDED_DATACOUNT, RAW_PNTR, SIMPLE_DATACOUNT, SYNC_PNTR
      .READ_WIDTH(36),                   // 18-9
      .REGISTER_MODE("UNREGISTERED"),    // DO_PIPELINED, REGISTERED, UNREGISTERED
      .RSTREG_PRIORITY("RSTREG"),        // REGCE, RSTREG
      .SLEEP_ASYNC("FALSE"),             // FALSE, TRUE
      .SRVAL(36'h000000000),             // SET/reset value of the FIFO outputs
      .WRCOUNT_TYPE("SIMPLE_DATACOUNT"), // EXTENDED_DATACOUNT, RAW_PNTR, SIMPLE_DATACOUNT, SYNC_PNTR
      .WRITE_WIDTH(36)                   // 18-9
   )
   FIFO36E2_inst (
      // Cascade Signals outputs: Multi-FIFO cascade signals
      .CASDOUT      ( ),             // 32-bit output: Data cascade output bus
      .CASDOUTP     ( ),             // 4-bit output: Parity data cascade output bus
      .CASNXTEMPTY  ( ),             // 1-bit output: Cascade next empty
      .CASPRVRDEN   ( ),             // 1-bit output: Cascade previous read enable
      // Read Data outputs: Read output data
      .DOUT         ( dout        ), // 32-bit output: FIFO data output bus
      .DOUTP        ( ),             // 4-bit output: FIFO parity output bus.
      // Status outputs: Flags and other FIFO status outputs
      .EMPTY        ( empty       ), // 1-bit output: Empty
      .FULL         ( full        ), // 1-bit output: Full
      .PROGEMPTY    ( prog_empty  ), // 1-bit output: Programmable empty
      .PROGFULL     ( prog_full   ), // 1-bit output: Programmable full
      .RDCOUNT      ( rd_cnt      ), // 13-bit output: Read count
      .RDERR        ( ),             // 1-bit output: Read error
      .RDRSTBUSY    ( ),             // 1-bit output: Reset busy (sync to RDCLK)
      .WRCOUNT      ( wr_cnt      ), // 13-bit output: Write count
      .WRERR        ( ),             // 1-bit output: Write Error
      .WRRSTBUSY    ( ),             // 1-bit output: Reset busy (sync to WRCLK)
      // Cascade Signals inputs: Multi-FIFO cascade signals (unused)
      .CASDIN       ( 32'h00000000), // 32-bit input: Data cascade input bus
      .CASDINP      ( 4'h0        ), // 4-bit input: Parity data cascade input bus
      .CASDOMUX     ( 1'b0        ), // 1-bit input: Cascade MUX select
      .CASDOMUXEN   ( 1'b1        ), // 1-bit input: Enable for cascade MUX select
      .CASNXTRDEN   ( 1'b0        ), // 1-bit input: Cascade next read enable
      .CASOREGIMUX  ( 1'b0        ), // 1-bit input: Cascade output MUX select
      .CASOREGIMUXEN( 1'b1        ), // 1-bit input: Cascade output MUX select enable
      .CASPRVEMPTY  ( 1'b1        ), // 1-bit input: Cascade previous empty
      // Read Control Signals inputs: Read clock, enable and reset input signals
      .RDCLK        ( clk         ), // 1-bit input: Read clock
      .RDEN         ( rd_en       ), // 1-bit input: Read enable
      .REGCE        ( 1'b0        ), // 1-bit input: Output register clock enable
      .RSTREG       ( 1'b0        ), // 1-bit input: Output register reset
      .SLEEP        ( 1'b0        ), // 1-bit input: Sleep Mode
      // Write Control Signals inputs: Write clock and enable input signals
      .RST          ( rst         ), // 1-bit input: Reset
      .WRCLK        ( clk         ), // 1-bit input: Write clock
      .WREN         ( wr_en       ), // 1-bit input: Write enable
      // Write Data inputs: Write input data
      .DIN          ( din         ), // 32-bit input: FIFO data input bus
      .DINP         ( 4'h0        )  // 4-bit input: FIFO parity input bus
   );    
    
    
endmodule