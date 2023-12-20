`timescale 1ns / 1ps

module Sw4X4_FIFO_LUT #(
  parameter integer ROUTING_HBIT = 2,
  parameter integer FIFO_FULL_TH = 61,
  parameter integer C_DATA_WIDTH = 32,
  parameter integer C_FIFO_DEPTH = 64
) (
  input  										clk,
  input  										rst_n,
  input  										ivld_a,
  input  										ivld_b,
  input  										ivld_c,
  input  										ivld_d,
  input  [C_DATA_WIDTH-1:0] din_a,
  input  [C_DATA_WIDTH-1:0] din_b,
  input  [C_DATA_WIDTH-1:0] din_c,
  input  [C_DATA_WIDTH-1:0] din_d,     		// input data
  input  										ofw_output_a,
  input  										ofw_output_b,
  input  										ofw_output_c,
  input  										ofw_output_d, // overflow flag of output PC
  output reg										ovld_a,
  output reg										ovld_b,
  output reg										ovld_c,
  output reg										ovld_d,
  output reg [C_DATA_WIDTH-1:0] dout_a,
  output reg [C_DATA_WIDTH-1:0] dout_b,
  output reg [C_DATA_WIDTH-1:0] dout_c,
  output reg [C_DATA_WIDTH-1:0] dout_d,   	  // output data
  output reg										ofw_input_a,
  output reg										ofw_input_b,
  output reg										ofw_input_c,
  output reg										ofw_input_d   // overflow flag of input PC
);

  // state of VC: {idle(1'b0), waiting(1'b1)}
  wire s_input_a0;
  wire s_input_a1;
  wire s_input_a2;
  wire s_input_a3; //
  wire s_input_b0;
  wire s_input_b1;
  wire s_input_b2;
  wire s_input_b3; //
  wire s_input_c0;
  wire s_input_c1;
  wire s_input_c2;
  wire s_input_c3; //
  wire s_input_d0;
  wire s_input_d1;
  wire s_input_d2;
  wire s_input_d3; //
  
  reg  s_input_a0_CS;
  reg  s_input_a1_CS;
  reg  s_input_a2_CS;
  reg  s_input_a3_CS; //
  reg  s_input_a0_NS;
  reg  s_input_a1_NS;
  reg  s_input_a2_NS;
  reg  s_input_a3_NS; //
  reg  s_input_b0_CS;
  reg  s_input_b1_CS;
  reg  s_input_b2_CS;
  reg  s_input_b3_CS; //
  reg  s_input_b0_NS;
  reg  s_input_b1_NS;
  reg  s_input_b2_NS;
  reg  s_input_b3_NS; //

  reg  s_input_c0_CS;
  reg  s_input_c1_CS;
  reg  s_input_c2_CS;
  reg  s_input_c3_CS; //
  reg  s_input_c0_NS;
  reg  s_input_c1_NS;
  reg  s_input_c2_NS;
  reg  s_input_c3_NS; //
  reg  s_input_d0_CS;
  reg  s_input_d1_CS;
  reg  s_input_d2_CS;
  reg  s_input_d3_CS; //
  reg  s_input_d0_NS;
  reg  s_input_d1_NS;
  reg  s_input_d2_NS;
  reg  s_input_d3_NS; //

  // 4X4 Matrix Arbiter
  wire [1:0] MA_a_sel;
  wire [1:0] MA_b_sel;
  wire [1:0] MA_c_sel;
  wire [1:0] MA_d_sel;
  wire MA_a_vld;
  wire MA_b_vld;
  wire MA_c_vld;
  wire MA_d_vld;
  wire MA_a_arbreq_0;
  wire MA_a_arbreq_1;
  wire MA_a_arbreq_2;
  wire MA_a_arbreq_3; //
  wire MA_b_arbreq_0;
  wire MA_b_arbreq_1;
  wire MA_b_arbreq_2;
  wire MA_b_arbreq_3; //
  wire MA_c_arbreq_0;
  wire MA_c_arbreq_1;
  wire MA_c_arbreq_2;
  wire MA_c_arbreq_3; //
  wire MA_d_arbreq_0;
  wire MA_d_arbreq_1;
  wire MA_d_arbreq_2;
  wire MA_d_arbreq_3;

  /////////////////////////////////////////////////////////////////
  // FIFO as Flit Buffer
  wire fifo_a0_rd_en;
  reg  fifo_a0_rd_en_1d;
  wire fifo_a0_wr_en;
  wire fifo_a0_empty;
  wire fifo_a0_full;
  wire fifo_a0_prog_full;
  wire [C_DATA_WIDTH-1:0] fifo_a0_din;
  wire [C_DATA_WIDTH-1:0] fifo_a0_dout; // a0
  
  wire fifo_a1_rd_en;
  reg  fifo_a1_rd_en_1d;
  wire fifo_a1_wr_en;
  wire fifo_a1_empty;
  wire fifo_a1_full;
  wire fifo_a1_prog_full;
  wire [C_DATA_WIDTH-1:0] fifo_a1_din;
  wire [C_DATA_WIDTH-1:0] fifo_a1_dout; // a1

  wire fifo_a2_rd_en;
  reg  fifo_a2_rd_en_1d;
  wire fifo_a2_wr_en;
  wire fifo_a2_empty;
  wire fifo_a2_full;
  wire fifo_a2_prog_full;
  wire [C_DATA_WIDTH-1:0] fifo_a2_din;
  wire [C_DATA_WIDTH-1:0] fifo_a2_dout; // a2
  
  wire fifo_a3_rd_en;
  reg  fifo_a3_rd_en_1d;
  wire fifo_a3_wr_en;
  wire fifo_a3_empty;
  wire fifo_a3_full;
  wire fifo_a3_prog_full;
  wire [C_DATA_WIDTH-1:0] fifo_a3_din;
  wire [C_DATA_WIDTH-1:0] fifo_a3_dout; // a3
  
  wire fifo_b0_rd_en;
  reg  fifo_b0_rd_en_1d;
  wire fifo_b0_wr_en;
  wire fifo_b0_empty;
  wire fifo_b0_full;
  wire fifo_b0_prog_full;
  wire [C_DATA_WIDTH-1:0] fifo_b0_din;
  wire [C_DATA_WIDTH-1:0] fifo_b0_dout; // b0
  
  wire fifo_b1_rd_en;
  reg  fifo_b1_rd_en_1d;
  wire fifo_b1_wr_en;
  wire fifo_b1_empty;
  wire fifo_b1_full;
  wire fifo_b1_prog_full;
  wire [C_DATA_WIDTH-1:0] fifo_b1_din;
  wire [C_DATA_WIDTH-1:0] fifo_b1_dout; // b1

  wire fifo_b2_rd_en;
  reg  fifo_b2_rd_en_1d;
  wire fifo_b2_wr_en;
  wire fifo_b2_empty;
  wire fifo_b2_full;
  wire fifo_b2_prog_full;
  wire [C_DATA_WIDTH-1:0] fifo_b2_din;
  wire [C_DATA_WIDTH-1:0] fifo_b2_dout; // b2
  
  wire fifo_b3_rd_en;
  reg  fifo_b3_rd_en_1d;
  wire fifo_b3_wr_en;
  wire fifo_b3_empty;
  wire fifo_b3_full;
  wire fifo_b3_prog_full;
  wire [C_DATA_WIDTH-1:0] fifo_b3_din;
  wire [C_DATA_WIDTH-1:0] fifo_b3_dout; // b3

  wire fifo_c0_rd_en;
  reg  fifo_c0_rd_en_1d;
  wire fifo_c0_wr_en;
  wire fifo_c0_empty;
  wire fifo_c0_full;
  wire fifo_c0_prog_full;
  wire [C_DATA_WIDTH-1:0] fifo_c0_din;
  wire [C_DATA_WIDTH-1:0] fifo_c0_dout; // c0
  
  wire fifo_c1_rd_en;
  reg  fifo_c1_rd_en_1d;
  wire fifo_c1_wr_en;
  wire fifo_c1_empty;
  wire fifo_c1_full;
  wire fifo_c1_prog_full;
  wire [C_DATA_WIDTH-1:0] fifo_c1_din;
  wire [C_DATA_WIDTH-1:0] fifo_c1_dout; // c1

  wire fifo_c2_rd_en;
  reg  fifo_c2_rd_en_1d;
  wire fifo_c2_wr_en;
  wire fifo_c2_empty;
  wire fifo_c2_full;
  wire fifo_c2_prog_full;
  wire [C_DATA_WIDTH-1:0] fifo_c2_din;
  wire [C_DATA_WIDTH-1:0] fifo_c2_dout; // c2
  
  wire fifo_c3_rd_en;
  reg  fifo_c3_rd_en_1d;
  wire fifo_c3_wr_en;
  wire fifo_c3_empty;
  wire fifo_c3_full;
  wire fifo_c3_prog_full;
  wire [C_DATA_WIDTH-1:0] fifo_c3_din;
  wire [C_DATA_WIDTH-1:0] fifo_c3_dout; // c3

  wire fifo_d0_rd_en;
  reg  fifo_d0_rd_en_1d;
  wire fifo_d0_wr_en;
  wire fifo_d0_empty;
  wire fifo_d0_full;
  wire fifo_d0_prog_full;
  wire [C_DATA_WIDTH-1:0] fifo_d0_din;
  wire [C_DATA_WIDTH-1:0] fifo_d0_dout; // d0
  
  wire fifo_d1_rd_en;
  reg  fifo_d1_rd_en_1d;
  wire fifo_d1_wr_en;
  wire fifo_d1_empty;
  wire fifo_d1_full;
  wire fifo_d1_prog_full;
  wire [C_DATA_WIDTH-1:0] fifo_d1_din;
  wire [C_DATA_WIDTH-1:0] fifo_d1_dout; // d1

  wire fifo_d2_rd_en;
  reg  fifo_d2_rd_en_1d;
  wire fifo_d2_wr_en;
  wire fifo_d2_empty;
  wire fifo_d2_full;
  wire fifo_d2_prog_full;
  wire [C_DATA_WIDTH-1:0] fifo_d2_din;
  wire [C_DATA_WIDTH-1:0] fifo_d2_dout; // d2
  
  wire fifo_d3_rd_en;
  reg  fifo_d3_rd_en_1d;
  wire fifo_d3_wr_en;
  wire fifo_d3_empty;
  wire fifo_d3_full;
  wire fifo_d3_prog_full;
  wire [C_DATA_WIDTH-1:0] fifo_d3_din;
  wire [C_DATA_WIDTH-1:0] fifo_d3_dout; // d3

  // Intermediate Output Wires
  wire ovld_a_w;
  wire ovld_b_w;
  wire ovld_c_w;
  wire ovld_d_w;
  wire [C_DATA_WIDTH-1:0] dout_a_w;
  wire [C_DATA_WIDTH-1:0] dout_b_w;
  wire [C_DATA_WIDTH-1:0] dout_c_w;
  wire [C_DATA_WIDTH-1:0] dout_d_w;
  wire ofw_a_w;
  wire ofw_b_w;
  wire ofw_c_w;
  wire ofw_d_w;

  wire rst;
  assign rst = ~rst_n;
/////////////////////////////////////////////////////////////////////
// FIFO instantiation as Flit Buffer
/////////////////////////////////////////////////////////////////////
FIFO_LUT # (
  .EMPTY_TH ( 3             ),
  .FULL_TH  ( FIFO_FULL_TH  ),
  .C_WIDTH	( C_DATA_WIDTH	),
  .C_DEPTH	( C_FIFO_DEPTH	)
) fifo_a0 (
  .clk        ( clk               ),
  .rst        ( rst               ),
  .rd_en      ( fifo_a0_rd_en     ),
  .wr_en      ( fifo_a0_wr_en     ),
  .din        ( fifo_a0_din       ),
  .dout       ( fifo_a0_dout      ),
  .empty      ( fifo_a0_empty     ),
  .full       ( fifo_a0_full      ),
  .prog_full  ( fifo_a0_prog_full )
);

FIFO_LUT # (
  .EMPTY_TH ( 3             ),
  .FULL_TH  ( FIFO_FULL_TH  ),
  .C_WIDTH	( C_DATA_WIDTH	),
  .C_DEPTH	( C_FIFO_DEPTH	)
) fifo_a1 (
  .clk        ( clk               ),
  .rst        ( rst               ),
  .rd_en      ( fifo_a1_rd_en     ),
  .wr_en      ( fifo_a1_wr_en     ),
  .din        ( fifo_a1_din       ),
  .dout       ( fifo_a1_dout      ),  
  .empty      ( fifo_a1_empty     ),
  .full       ( fifo_a1_full      ),
  .prog_full  ( fifo_a1_prog_full )
);

FIFO_LUT # (
  .EMPTY_TH ( 3             ),
  .FULL_TH  ( FIFO_FULL_TH  ),
  .C_WIDTH	( C_DATA_WIDTH	),
  .C_DEPTH	( C_FIFO_DEPTH	)
) fifo_a2 (
  .clk        ( clk               ),
  .rst        ( rst               ),
  .rd_en      ( fifo_a2_rd_en     ),
  .wr_en      ( fifo_a2_wr_en     ),
  .din        ( fifo_a2_din       ),
  .dout       ( fifo_a2_dout      ),
  .empty      ( fifo_a2_empty     ),
  .full       ( fifo_a2_full      ),
  .prog_full  ( fifo_a2_prog_full )
);

FIFO_LUT # (
  .EMPTY_TH ( 3             ),
  .FULL_TH  ( FIFO_FULL_TH  ),
  .C_WIDTH	( C_DATA_WIDTH	),
  .C_DEPTH	( C_FIFO_DEPTH	)
) fifo_a3 (
  .clk        ( clk               ),
  .rst        ( rst               ),
  .rd_en      ( fifo_a3_rd_en     ),
  .wr_en      ( fifo_a3_wr_en     ),
  .din        ( fifo_a3_din       ),
  .dout       ( fifo_a3_dout      ),
  .empty      ( fifo_a3_empty     ),
  .full       ( fifo_a3_full      ),
  .prog_full  ( fifo_a3_prog_full )
);

FIFO_LUT # (
  .EMPTY_TH ( 3             ),
  .FULL_TH  ( FIFO_FULL_TH  ),
  .C_WIDTH	( C_DATA_WIDTH	),
  .C_DEPTH	( C_FIFO_DEPTH	)
) fifo_b0 (
  .clk        ( clk               ),
  .rst        ( rst               ),
  .rd_en      ( fifo_b0_rd_en     ),
  .wr_en      ( fifo_b0_wr_en     ),
  .din        ( fifo_b0_din       ),
  .dout       ( fifo_b0_dout      ),
  .empty      ( fifo_b0_empty     ),
  .full       ( fifo_b0_full      ),
  .prog_full  ( fifo_b0_prog_full )
);

FIFO_LUT # (
  .EMPTY_TH ( 3             ),
  .FULL_TH  ( FIFO_FULL_TH  ),
  .C_WIDTH	( C_DATA_WIDTH	),
  .C_DEPTH	( C_FIFO_DEPTH	)
) fifo_b1 (
  .clk        ( clk               ),
  .rst        ( rst               ),
  .rd_en      ( fifo_b1_rd_en     ),
  .wr_en      ( fifo_b1_wr_en     ),
  .din        ( fifo_b1_din       ),
  .dout       ( fifo_b1_dout      ),
  .empty      ( fifo_b1_empty     ),
  .full       ( fifo_b1_full      ),
  .prog_full  ( fifo_b1_prog_full )
);

FIFO_LUT # (
  .EMPTY_TH ( 3             ),
  .FULL_TH  ( FIFO_FULL_TH  ),
  .C_WIDTH	( C_DATA_WIDTH	),
  .C_DEPTH	( C_FIFO_DEPTH	)
) fifo_b2 (
  .clk        ( clk               ),
  .rst        ( rst               ),
  .rd_en      ( fifo_b2_rd_en     ),
  .wr_en      ( fifo_b2_wr_en     ),
  .din        ( fifo_b2_din       ),
  .dout       ( fifo_b2_dout      ),
  .empty      ( fifo_b2_empty     ),
  .full       ( fifo_b2_full      ),
  .prog_full  ( fifo_b2_prog_full )
);

FIFO_LUT # (
  .EMPTY_TH ( 3             ),
  .FULL_TH  ( FIFO_FULL_TH  ),
  .C_WIDTH	( C_DATA_WIDTH	),
  .C_DEPTH	( C_FIFO_DEPTH	)
) fifo_b3 (
  .clk        ( clk               ),
  .rst        ( rst               ),
  .rd_en      ( fifo_b3_rd_en     ),
  .wr_en      ( fifo_b3_wr_en     ),
  .din        ( fifo_b3_din       ),
  .dout       ( fifo_b3_dout      ),
  .empty      ( fifo_b3_empty     ),
  .full       ( fifo_b3_full      ),
  .prog_full  ( fifo_b3_prog_full )
);

FIFO_LUT # (
  .EMPTY_TH ( 3             ),
  .FULL_TH  ( FIFO_FULL_TH  ),
  .C_WIDTH	( C_DATA_WIDTH	),
  .C_DEPTH	( C_FIFO_DEPTH	)
) fifo_c0 (
  .clk        ( clk               ),
  .rst        ( rst               ),
  .rd_en      ( fifo_c0_rd_en     ),
  .wr_en      ( fifo_c0_wr_en     ),
  .din        ( fifo_c0_din       ),
  .dout       ( fifo_c0_dout      ),
  .empty      ( fifo_c0_empty     ),
  .full       ( fifo_c0_full      ),
  .prog_full  ( fifo_c0_prog_full )
);

FIFO_LUT # (
  .EMPTY_TH ( 3             ),
  .FULL_TH  ( FIFO_FULL_TH  ),
  .C_WIDTH	( C_DATA_WIDTH	),
  .C_DEPTH	( C_FIFO_DEPTH	)
) fifo_c1 (
  .clk        ( clk               ),
  .rst        ( rst               ),
  .rd_en      ( fifo_c1_rd_en     ),
  .wr_en      ( fifo_c1_wr_en     ),
  .din        ( fifo_c1_din       ),
  .dout       ( fifo_c1_dout      ),
  .empty      ( fifo_c1_empty     ),
  .full       ( fifo_c1_full      ),
  .prog_full  ( fifo_c1_prog_full )
);

FIFO_LUT # (
  .EMPTY_TH ( 3             ),
  .FULL_TH  ( FIFO_FULL_TH  ),
  .C_WIDTH	( C_DATA_WIDTH	),
  .C_DEPTH	( C_FIFO_DEPTH	)
) fifo_c2 (
  .clk        ( clk               ),
  .rst        ( rst               ),
  .rd_en      ( fifo_c2_rd_en     ),
  .wr_en      ( fifo_c2_wr_en     ),
  .din        ( fifo_c2_din       ),
  .dout       ( fifo_c2_dout      ),
  .empty      ( fifo_c2_empty     ),
  .full       ( fifo_c2_full      ),
  .prog_full  ( fifo_c2_prog_full )
);

FIFO_LUT # (
  .EMPTY_TH ( 3             ),
  .FULL_TH  ( FIFO_FULL_TH  ),
  .C_WIDTH	( C_DATA_WIDTH	),
  .C_DEPTH	( C_FIFO_DEPTH	)
) fifo_c3 (
  .clk        ( clk               ),
  .rst        ( rst               ),
  .rd_en      ( fifo_c3_rd_en     ),
  .wr_en      ( fifo_c3_wr_en     ),
  .din        ( fifo_c3_din       ),
  .dout       ( fifo_c3_dout      ),
  .empty      ( fifo_c3_empty     ),
  .full       ( fifo_c3_full      ),
  .prog_full  ( fifo_c3_prog_full )
);

FIFO_LUT # (
  .EMPTY_TH ( 3             ),
  .FULL_TH  ( FIFO_FULL_TH  ),
  .C_WIDTH	( C_DATA_WIDTH	),
  .C_DEPTH	( C_FIFO_DEPTH	)
) fifo_d0 (
  .clk        ( clk               ),
  .rst        ( rst               ),
  .rd_en      ( fifo_d0_rd_en     ),
  .wr_en      ( fifo_d0_wr_en     ),
  .din        ( fifo_d0_din       ),
  .dout       ( fifo_d0_dout      ),
  .empty      ( fifo_d0_empty     ),
  .full       ( fifo_d0_full      ),
  .prog_full  ( fifo_d0_prog_full )
);

FIFO_LUT # (
  .EMPTY_TH ( 3             ),
  .FULL_TH  ( FIFO_FULL_TH  ),
  .C_WIDTH	( C_DATA_WIDTH	),
  .C_DEPTH	( C_FIFO_DEPTH	)
) fifo_d1 (
  .clk        ( clk               ),
  .rst        ( rst               ),
  .rd_en      ( fifo_d1_rd_en     ),
  .wr_en      ( fifo_d1_wr_en     ),
  .din        ( fifo_d1_din       ),
  .dout       ( fifo_d1_dout      ),
  .empty      ( fifo_d1_empty     ),
  .full       ( fifo_d1_full      ),
  .prog_full  ( fifo_d1_prog_full )
);

FIFO_LUT # (
  .EMPTY_TH ( 3             ),
  .FULL_TH  ( FIFO_FULL_TH  ),
  .C_WIDTH	( C_DATA_WIDTH	),
  .C_DEPTH	( C_FIFO_DEPTH	)
) fifo_d2 (
  .clk        ( clk               ),
  .rst        ( rst               ),
  .rd_en      ( fifo_d2_rd_en     ),
  .wr_en      ( fifo_d2_wr_en     ),
  .din        ( fifo_d2_din       ),
  .dout       ( fifo_d2_dout      ),
  .empty      ( fifo_d2_empty     ),
  .full       ( fifo_d2_full      ),
  .prog_full  ( fifo_d2_prog_full )
);

FIFO_LUT # (
  .EMPTY_TH ( 3             ),
  .FULL_TH  ( FIFO_FULL_TH  ),
  .C_WIDTH	( C_DATA_WIDTH	),
  .C_DEPTH	( C_FIFO_DEPTH	)
) fifo_d3 (
  .clk        ( clk               ),
  .rst        ( rst               ),
  .rd_en      ( fifo_d3_rd_en     ),
  .wr_en      ( fifo_d3_wr_en     ),
  .din        ( fifo_d3_din       ),
  .dout       ( fifo_d3_dout      ),
  .empty      ( fifo_d3_empty     ),
  .full       ( fifo_d3_full      ),
  .prog_full  ( fifo_d3_prog_full )
);

// FIFO input data, controlled by wr_en
assign fifo_a0_din = din_a;
assign fifo_a1_din = din_a;
assign fifo_a2_din = din_a;
assign fifo_a3_din = din_a; //
assign fifo_b0_din = din_b;
assign fifo_b1_din = din_b;
assign fifo_b2_din = din_b;
assign fifo_b3_din = din_b; //
assign fifo_c0_din = din_c;
assign fifo_c1_din = din_c;
assign fifo_c2_din = din_c;
assign fifo_c3_din = din_c; //
assign fifo_d0_din = din_d;
assign fifo_d1_din = din_d;
assign fifo_d2_din = din_d;
assign fifo_d3_din = din_d; //

// FIFO write enable
assign fifo_a0_wr_en = (ivld_a && ~fifo_a0_full && (din_a[ROUTING_HBIT:ROUTING_HBIT-1]==2'b00));
assign fifo_a1_wr_en = (ivld_a && ~fifo_a1_full && (din_a[ROUTING_HBIT:ROUTING_HBIT-1]==2'b01));
assign fifo_a2_wr_en = (ivld_a && ~fifo_a2_full && (din_a[ROUTING_HBIT:ROUTING_HBIT-1]==2'b10));
assign fifo_a3_wr_en = (ivld_a && ~fifo_a3_full && (din_a[ROUTING_HBIT:ROUTING_HBIT-1]==2'b11));

assign fifo_b0_wr_en = (ivld_b && ~fifo_b0_full && (din_b[ROUTING_HBIT:ROUTING_HBIT-1]==2'b01));
assign fifo_b1_wr_en = (ivld_b && ~fifo_b1_full && (din_b[ROUTING_HBIT:ROUTING_HBIT-1]==2'b10));
assign fifo_b2_wr_en = (ivld_b && ~fifo_b2_full && (din_b[ROUTING_HBIT:ROUTING_HBIT-1]==2'b11));
assign fifo_b3_wr_en = (ivld_b && ~fifo_b3_full && (din_b[ROUTING_HBIT:ROUTING_HBIT-1]==2'b00));

assign fifo_c0_wr_en = (ivld_c && ~fifo_c0_full && (din_c[ROUTING_HBIT:ROUTING_HBIT-1]==2'b10));
assign fifo_c1_wr_en = (ivld_c && ~fifo_c1_full && (din_c[ROUTING_HBIT:ROUTING_HBIT-1]==2'b11));
assign fifo_c2_wr_en = (ivld_c && ~fifo_c2_full && (din_c[ROUTING_HBIT:ROUTING_HBIT-1]==2'b00));
assign fifo_c3_wr_en = (ivld_c && ~fifo_c3_full && (din_c[ROUTING_HBIT:ROUTING_HBIT-1]==2'b01));

assign fifo_d0_wr_en = (ivld_d && ~fifo_d0_full && (din_d[ROUTING_HBIT:ROUTING_HBIT-1]==2'b11));
assign fifo_d1_wr_en = (ivld_d && ~fifo_d1_full && (din_d[ROUTING_HBIT:ROUTING_HBIT-1]==2'b00));
assign fifo_d2_wr_en = (ivld_d && ~fifo_d2_full && (din_d[ROUTING_HBIT:ROUTING_HBIT-1]==2'b01));
assign fifo_d3_wr_en = (ivld_d && ~fifo_d3_full && (din_d[ROUTING_HBIT:ROUTING_HBIT-1]==2'b10));

// FIFO read enable
assign fifo_a0_rd_en = (~ofw_output_a && (s_input_a0!=1'b1) && (s_input_a0_NS!=1'b1) && ~fifo_a0_empty);
assign fifo_a1_rd_en = (~ofw_output_b && (s_input_a1!=1'b1) && (s_input_a1_NS!=1'b1) && ~fifo_a1_empty);
assign fifo_a2_rd_en = (~ofw_output_c && (s_input_a2!=1'b1) && (s_input_a2_NS!=1'b1) && ~fifo_a2_empty);
assign fifo_a3_rd_en = (~ofw_output_d && (s_input_a3!=1'b1) && (s_input_a3_NS!=1'b1) && ~fifo_a3_empty); //

assign fifo_b0_rd_en = (~ofw_output_b && (s_input_b0!=1'b1) && (s_input_b0_NS!=1'b1) && ~fifo_b0_empty);
assign fifo_b1_rd_en = (~ofw_output_c && (s_input_b1!=1'b1) && (s_input_b1_NS!=1'b1) && ~fifo_b1_empty);
assign fifo_b2_rd_en = (~ofw_output_d && (s_input_b2!=1'b1) && (s_input_b2_NS!=1'b1) && ~fifo_b2_empty);
assign fifo_b3_rd_en = (~ofw_output_a && (s_input_b3!=1'b1) && (s_input_b3_NS!=1'b1) && ~fifo_b3_empty); //

assign fifo_c0_rd_en = (~ofw_output_c && (s_input_c0!=1'b1) && (s_input_c0_NS!=1'b1) && ~fifo_c0_empty);
assign fifo_c1_rd_en = (~ofw_output_d && (s_input_c1!=1'b1) && (s_input_c1_NS!=1'b1) && ~fifo_c1_empty);
assign fifo_c2_rd_en = (~ofw_output_a && (s_input_c2!=1'b1) && (s_input_c2_NS!=1'b1) && ~fifo_c2_empty);
assign fifo_c3_rd_en = (~ofw_output_b && (s_input_c3!=1'b1) && (s_input_c3_NS!=1'b1) && ~fifo_c3_empty); //

assign fifo_d0_rd_en = (~ofw_output_d && (s_input_d0!=1'b1) && (s_input_d0_NS!=1'b1) && ~fifo_d0_empty);
assign fifo_d1_rd_en = (~ofw_output_a && (s_input_d1!=1'b1) && (s_input_d1_NS!=1'b1) && ~fifo_d1_empty);
assign fifo_d2_rd_en = (~ofw_output_b && (s_input_d2!=1'b1) && (s_input_d2_NS!=1'b1) && ~fifo_d2_empty);
assign fifo_d3_rd_en = (~ofw_output_c && (s_input_d3!=1'b1) && (s_input_d3_NS!=1'b1) && ~fifo_d3_empty); //

// Output Overflow Flag
assign ofw_a_w = (fifo_a0_prog_full | fifo_a1_prog_full | fifo_a2_prog_full | fifo_a3_prog_full);
assign ofw_b_w = (fifo_b0_prog_full | fifo_b1_prog_full | fifo_b2_prog_full | fifo_b3_prog_full);
assign ofw_c_w = (fifo_c0_prog_full | fifo_c1_prog_full | fifo_c2_prog_full | fifo_c3_prog_full);
assign ofw_d_w = (fifo_d0_prog_full | fifo_d1_prog_full | fifo_d2_prog_full | fifo_d3_prog_full);

always @(posedge clk) begin
  ofw_input_a <= ofw_a_w;
  ofw_input_b <= ofw_b_w;
  ofw_input_c <= ofw_c_w;
  ofw_input_d <= ofw_d_w;
end

// FIFO rd_en 1 cycle delayed
always @(posedge clk) begin
  fifo_a0_rd_en_1d <= fifo_a0_rd_en;
  fifo_a1_rd_en_1d <= fifo_a1_rd_en;
  fifo_a2_rd_en_1d <= fifo_a2_rd_en;
  fifo_a3_rd_en_1d <= fifo_a3_rd_en; //
  fifo_b0_rd_en_1d <= fifo_b0_rd_en;
  fifo_b1_rd_en_1d <= fifo_b1_rd_en;
  fifo_b2_rd_en_1d <= fifo_b2_rd_en;
  fifo_b3_rd_en_1d <= fifo_b3_rd_en; //
  fifo_c0_rd_en_1d <= fifo_c0_rd_en;
  fifo_c1_rd_en_1d <= fifo_c1_rd_en;
  fifo_c2_rd_en_1d <= fifo_c2_rd_en;
  fifo_c3_rd_en_1d <= fifo_c3_rd_en; //
  fifo_d0_rd_en_1d <= fifo_d0_rd_en;
  fifo_d1_rd_en_1d <= fifo_d1_rd_en;
  fifo_d2_rd_en_1d <= fifo_d2_rd_en;
  fifo_d3_rd_en_1d <= fifo_d3_rd_en; //
end

/////////////////////////////////////////////////////////////////////
// MatArbiter4X4 instantiation
/////////////////////////////////////////////////////////////////////
MatArbiter4X4 MA_a (
  .clk      ( clk           ),
  .rst      ( rst           ),
  .arbreq_0 ( MA_a_arbreq_0 ),
  .arbreq_1 ( MA_a_arbreq_1 ),
  .arbreq_2 ( MA_a_arbreq_2 ),
  .arbreq_3 ( MA_a_arbreq_3 ),
  .vld      ( MA_a_vld      ),
  .sel      ( MA_a_sel      ),
  .we       ()
);

MatArbiter4X4 MA_b (
  .clk      ( clk           ),
  .rst      ( rst           ),
  .arbreq_0 ( MA_b_arbreq_0 ),
  .arbreq_1 ( MA_b_arbreq_1 ),
  .arbreq_2 ( MA_b_arbreq_2 ),
  .arbreq_3 ( MA_b_arbreq_3 ),
  .vld      ( MA_b_vld      ),
  .sel      ( MA_b_sel      ),
  .we       ()
);

MatArbiter4X4 MA_c (
  .clk      ( clk           ),
  .rst      ( rst           ),
  .arbreq_0 ( MA_c_arbreq_0 ),
  .arbreq_1 ( MA_c_arbreq_1 ),
  .arbreq_2 ( MA_c_arbreq_2 ),
  .arbreq_3 ( MA_c_arbreq_3 ),
  .vld      ( MA_c_vld      ),
  .sel      ( MA_c_sel      ),
  .we       ()
);

MatArbiter4X4 MA_d (
  .clk      ( clk           ),
  .rst      ( rst           ),
  .arbreq_0 ( MA_d_arbreq_0 ),
  .arbreq_1 ( MA_d_arbreq_1 ),
  .arbreq_2 ( MA_d_arbreq_2 ),
  .arbreq_3 ( MA_d_arbreq_3 ),
  .vld      ( MA_d_vld      ),
  .sel      ( MA_d_sel      ),
  .we       ()
);

// arbreq is aligned with output VC (1 cycle delay after input VC)
assign MA_a_arbreq_0 = fifo_a0_rd_en_1d | (s_input_a0==1'b1);
assign MA_a_arbreq_1 = fifo_d1_rd_en_1d | (s_input_d1==1'b1);
assign MA_a_arbreq_2 = fifo_c2_rd_en_1d | (s_input_c2==1'b1);
assign MA_a_arbreq_3 = fifo_b3_rd_en_1d | (s_input_b3==1'b1); //

assign MA_b_arbreq_0 = fifo_b0_rd_en_1d | (s_input_b0==1'b1);
assign MA_b_arbreq_1 = fifo_a1_rd_en_1d | (s_input_a1==1'b1);
assign MA_b_arbreq_2 = fifo_d2_rd_en_1d | (s_input_d2==1'b1);
assign MA_b_arbreq_3 = fifo_c3_rd_en_1d | (s_input_c3==1'b1); //

assign MA_c_arbreq_0 = fifo_c0_rd_en_1d | (s_input_c0==1'b1);
assign MA_c_arbreq_1 = fifo_b1_rd_en_1d | (s_input_b1==1'b1);
assign MA_c_arbreq_2 = fifo_a2_rd_en_1d | (s_input_a2==1'b1);
assign MA_c_arbreq_3 = fifo_d3_rd_en_1d | (s_input_d3==1'b1); //

assign MA_d_arbreq_0 = fifo_d0_rd_en_1d | (s_input_d0==1'b1);
assign MA_d_arbreq_1 = fifo_c1_rd_en_1d | (s_input_c1==1'b1);
assign MA_d_arbreq_2 = fifo_b2_rd_en_1d | (s_input_b2==1'b1);
assign MA_d_arbreq_3 = fifo_a3_rd_en_1d | (s_input_a3==1'b1); //

assign ovld_a_w =(fifo_a0_rd_en_1d | fifo_d1_rd_en_1d | fifo_c2_rd_en_1d | fifo_b3_rd_en_1d | 
                s_input_a0 | s_input_d1 | s_input_c2 | s_input_b3) & MA_a_vld;                
assign ovld_b_w =(fifo_b0_rd_en_1d | fifo_a1_rd_en_1d | fifo_d2_rd_en_1d | fifo_c3_rd_en_1d | 
                s_input_b0 | s_input_a1 | s_input_d2 | s_input_c3) & MA_b_vld;                
assign ovld_c_w =(fifo_c0_rd_en_1d | fifo_b1_rd_en_1d | fifo_a2_rd_en_1d | fifo_d3_rd_en_1d | 
                s_input_c0 | s_input_b1 | s_input_a2 | s_input_d3) & MA_c_vld;                
assign ovld_d_w =(fifo_d0_rd_en_1d | fifo_c1_rd_en_1d | fifo_b2_rd_en_1d | fifo_a3_rd_en_1d | 
                s_input_d0 | s_input_c1 | s_input_b2 | s_input_a3) & MA_d_vld;

always @(posedge clk) begin
  ovld_a <= ovld_a_w;
  ovld_b <= ovld_b_w;
  ovld_c <= ovld_c_w;
  ovld_d <= ovld_d_w;
end

/////////////////////////////////////////////////////////////////////
// VC FSM logic
/////////////////////////////////////////////////////////////////////
// input VC a0
always @(*) begin
  if (rst == 1'b1)
    s_input_a0_NS = 1'b0; // IDLE
  else begin
    case (s_input_a0_CS)
      // IDLE
      1'b0:
        if (MA_a_arbreq_0 && (MA_a_sel!=2'b00))
          s_input_a0_NS = 1'b1; // WAITING
        else
          s_input_a0_NS = 1'b0; // IDLE
      // WAITING
      1'b1:
        if (MA_a_sel == 2'b00)
          s_input_a0_NS = 1'b0; // IDLE
        else
          s_input_a0_NS = 1'b1; // WAITING        
      // otherwise
      default:
        s_input_a0_NS = 1'b0; // IDLE
    endcase
  end
end

// input VC a1
always @(*) begin
  if (rst == 1'b1)
    s_input_a1_NS = 1'b0; // IDLE
  else begin
    case (s_input_a1_CS)
      // IDLE
      1'b0:
        if (MA_b_arbreq_1 && (MA_b_sel!=2'b01))
          s_input_a1_NS = 1'b1; // WAITING
        else
          s_input_a1_NS = 1'b0; // IDLE
      // WAITING
      1'b1:
        if (MA_b_sel == 2'b01)
          s_input_a1_NS = 1'b0; // IDLE
        else
          s_input_a1_NS = 1'b1; // WAITING        
      // otherwise
      default:
        s_input_a1_NS = 1'b0; // IDLE
    endcase
  end
end

// input VC a2
always @(*) begin
  if (rst == 1'b1)
    s_input_a2_NS = 1'b0; // IDLE
  else begin
    case (s_input_a2_CS)
      // IDLE
      1'b0:
        if (MA_c_arbreq_2 && (MA_c_sel!=2'b10))
          s_input_a2_NS = 1'b1; // WAITING
        else
          s_input_a2_NS = 1'b0; // IDLE
      // WAITING
      1'b1:
        if (MA_c_sel == 2'b10)
          s_input_a2_NS = 1'b0; // IDLE
        else
          s_input_a2_NS = 1'b1; // WAITING        
      // otherwise
      default:
        s_input_a2_NS = 1'b0; // IDLE
    endcase
  end
end

// input VC a3
always @(*) begin
  if (rst == 1'b1)
    s_input_a3_NS = 1'b0; // IDLE
  else begin
    case (s_input_a3_CS)
      // IDLE
      1'b0:
        if (MA_d_arbreq_3 && (MA_d_sel!=2'b11))
          s_input_a3_NS = 1'b1; // WAITING
        else
          s_input_a3_NS = 1'b0; // IDLE
      // WAITING
      1'b1:
        if (MA_d_sel == 2'b11)
          s_input_a3_NS = 1'b0; // IDLE
        else
          s_input_a3_NS = 1'b1; // WAITING        
      // otherwise
      default:
        s_input_a3_NS = 1'b0; // IDLE
    endcase
  end
end


// input VC b0
always @(*) begin
  if (rst == 1'b1)
    s_input_b0_NS = 1'b0; // IDLE
  else begin
    case (s_input_b0_CS)
      // IDLE
      1'b0:
        if (MA_b_arbreq_0 && (MA_b_sel!=2'b00))
          s_input_b0_NS = 1'b1; // WAITING
        else
          s_input_b0_NS = 1'b0; // IDLE
      // WAITING
      1'b1:
        if (MA_b_sel == 2'b00)
          s_input_b0_NS = 1'b0; // IDLE
        else
          s_input_b0_NS = 1'b1; // WAITING        
      // otherwise
      default:
        s_input_b0_NS = 1'b0; // IDLE
    endcase
  end
end

// input VC b1
always @(*) begin
  if (rst == 1'b1)
    s_input_b1_NS = 1'b0; // IDLE
  else begin
    case (s_input_b1_CS)
      // IDLE
      1'b0:
        if (MA_c_arbreq_1 && (MA_c_sel!=2'b01))
          s_input_b1_NS = 1'b1; // WAITING
        else
          s_input_b1_NS = 1'b0; // IDLE
      // WAITING
      1'b1:
        if (MA_c_sel == 2'b01)
          s_input_b1_NS = 1'b0; // IDLE
        else
          s_input_b1_NS = 1'b1; // WAITING        
      // otherwise
      default:
        s_input_b1_NS = 1'b0; // IDLE
    endcase
  end
end

// input VC b2
always @(*) begin
  if (rst == 1'b1)
    s_input_b2_NS = 1'b0; // IDLE
  else begin
    case (s_input_b2_CS)
      // IDLE
      1'b0:
        if (MA_d_arbreq_2 && (MA_d_sel!=2'b10))
          s_input_b2_NS = 1'b1; // WAITING
        else
          s_input_b2_NS = 1'b0; // IDLE
      // WAITING
      1'b1:
        if (MA_d_sel == 2'b10)
          s_input_b2_NS = 1'b0; // IDLE
        else
          s_input_b2_NS = 1'b1; // WAITING        
      // otherwise
      default:
        s_input_b2_NS = 1'b0; // IDLE
    endcase
  end
end

// input VC b3
always @(*) begin
  if (rst == 1'b1)
    s_input_b3_NS = 1'b0; // IDLE
  else begin
    case (s_input_b3_CS)
      // IDLE
      1'b0:
        if (MA_a_arbreq_3 && (MA_a_sel!=2'b11))
          s_input_b3_NS = 1'b1; // WAITING
        else
          s_input_b3_NS = 1'b0; // IDLE
      // WAITING
      1'b1:
        if (MA_a_sel == 2'b11)
          s_input_b3_NS = 1'b0; // IDLE
        else
          s_input_b3_NS = 1'b1; // WAITING        
      // otherwise
      default:
        s_input_b3_NS = 1'b0; // IDLE
    endcase
  end
end


// input VC c0
always @(*) begin
  if (rst == 1'b1)
    s_input_c0_NS = 1'b0; // IDLE
  else begin
    case (s_input_c0_CS)
      // IDLE
      1'b0:
        if (MA_c_arbreq_0 && (MA_c_sel!=2'b00))
          s_input_c0_NS = 1'b1; // WAITING
        else
          s_input_c0_NS = 1'b0; // IDLE
      // WAITING
      1'b1:
        if (MA_c_sel == 2'b00)
          s_input_c0_NS = 1'b0; // IDLE
        else
          s_input_c0_NS = 1'b1; // WAITING        
      // otherwise
      default:
        s_input_c0_NS = 1'b0; // IDLE
    endcase
  end
end

// input VC c1
always @(*) begin
  if (rst == 1'b1)
    s_input_c1_NS = 1'b0; // IDLE
  else begin
    case (s_input_c1_CS)
      // IDLE
      1'b0:
        if (MA_d_arbreq_1 && (MA_d_sel!=2'b01))
          s_input_c1_NS = 1'b1; // WAITING
        else
          s_input_c1_NS = 1'b0; // IDLE
      // WAITING
      1'b1:
        if (MA_d_sel == 2'b01)
          s_input_c1_NS = 1'b0; // IDLE
        else
          s_input_c1_NS = 1'b1; // WAITING        
      // otherwise
      default:
        s_input_c1_NS = 1'b0; // IDLE
    endcase
  end
end

// input VC c2
always @(*) begin
  if (rst == 1'b1)
    s_input_c2_NS = 1'b0; // IDLE
  else begin
    case (s_input_c2_CS)
      // IDLE
      1'b0:
        if (MA_a_arbreq_2 && (MA_a_sel!=2'b10))
          s_input_c2_NS = 1'b1; // WAITING
        else
          s_input_c2_NS = 1'b0; // IDLE
      // WAITING
      1'b1:
        if (MA_a_sel == 2'b10)
          s_input_c2_NS = 1'b0; // IDLE
        else
          s_input_c2_NS = 1'b1; // WAITING        
      // otherwise
      default:
        s_input_c2_NS = 1'b0; // IDLE
    endcase
  end
end

// input VC c3
always @(*) begin
  if (rst == 1'b1)
    s_input_c3_NS = 1'b0; // IDLE
  else begin
    case (s_input_c3_CS)
      // IDLE
      1'b0:
        if (MA_b_arbreq_3 && (MA_b_sel!=2'b11))
          s_input_c3_NS = 1'b1; // WAITING
        else
          s_input_c3_NS = 1'b0; // IDLE
      // WAITING
      1'b1:
        if (MA_b_sel == 2'b11)
          s_input_c3_NS = 1'b0; // IDLE
        else
          s_input_c3_NS = 1'b1; // WAITING        
      // otherwise
      default:
        s_input_c3_NS = 1'b0; // IDLE
    endcase
  end
end


// input VC d0
always @(*) begin
  if (rst == 1'b1)
    s_input_d0_NS = 1'b0; // IDLE
  else begin
    case (s_input_d0_CS)
      // IDLE
      1'b0:
        if (MA_d_arbreq_0 && (MA_d_sel!=2'b00))
          s_input_d0_NS = 1'b1; // WAITING
        else
          s_input_d0_NS = 1'b0; // IDLE
      // WAITING
      1'b1:
        if (MA_d_sel == 2'b00)
          s_input_d0_NS = 1'b0; // IDLE
        else
          s_input_d0_NS = 1'b1; // WAITING        
      // otherwise
      default:
        s_input_d0_NS = 1'b0; // IDLE
    endcase
  end
end

// input VC d1
always @(*) begin
  if (rst == 1'b1)
    s_input_d1_NS = 1'b0; // IDLE
  else begin
    case (s_input_d1_CS)
      // IDLE
      1'b0:
        if (MA_a_arbreq_1 && (MA_a_sel!=2'b01))
          s_input_d1_NS = 1'b1; // WAITING
        else
          s_input_d1_NS = 1'b0; // IDLE
      // WAITING
      1'b1:
        if (MA_a_sel == 2'b01)
          s_input_d1_NS = 1'b0; // IDLE
        else
          s_input_d1_NS = 1'b1; // WAITING        
      // otherwise
      default:
        s_input_d1_NS = 1'b0; // IDLE
    endcase
  end
end

// input VC d2
always @(*) begin
  if (rst == 1'b1)
    s_input_d2_NS = 1'b0; // IDLE
  else begin
    case (s_input_d2_CS)
      // IDLE
      1'b0:
        if (MA_b_arbreq_2 && (MA_b_sel!=2'b10))
          s_input_d2_NS = 1'b1; // WAITING
        else
          s_input_d2_NS = 1'b0; // IDLE
      // WAITING
      1'b1:
        if (MA_b_sel == 2'b10)
          s_input_d2_NS = 1'b0; // IDLE
        else
          s_input_d2_NS = 1'b1; // WAITING        
      // otherwise
      default:
        s_input_d2_NS = 1'b0; // IDLE
    endcase
  end
end

// input VC d3
always @(*) begin
  if (rst == 1'b1)
    s_input_d3_NS = 1'b0; // IDLE
  else begin
    case (s_input_d3_CS)
      // IDLE
      1'b0:
        if (MA_c_arbreq_3 && (MA_c_sel!=2'b11))
          s_input_d3_NS = 1'b1; // WAITING
        else
          s_input_d3_NS = 1'b0; // IDLE
      // WAITING
      1'b1:
        if (MA_c_sel == 2'b11)
          s_input_d3_NS = 1'b0; // IDLE
        else
          s_input_d3_NS = 1'b1; // WAITING        
      // otherwise
      default:
        s_input_d3_NS = 1'b0; // IDLE
    endcase
  end
end

// FSM initialization and update
always @(posedge clk) begin
  if (rst == 1'b1) begin
    s_input_a0_CS <= 1'b0;
    s_input_a1_CS <= 1'b0;
    s_input_a2_CS <= 1'b0;
    s_input_a3_CS <= 1'b0; //
    s_input_b0_CS <= 1'b0;
    s_input_b1_CS <= 1'b0;
    s_input_b2_CS <= 1'b0;
    s_input_b3_CS <= 1'b0; //
    s_input_c0_CS <= 1'b0;
    s_input_c1_CS <= 1'b0;
    s_input_c2_CS <= 1'b0;
    s_input_c3_CS <= 1'b0; //
    s_input_d0_CS <= 1'b0;
    s_input_d1_CS <= 1'b0;
    s_input_d2_CS <= 1'b0;
    s_input_d3_CS <= 1'b0; //
  end else begin
    s_input_a0_CS <= s_input_a0_NS;
    s_input_a1_CS <= s_input_a1_NS;
    s_input_a2_CS <= s_input_a2_NS;
    s_input_a3_CS <= s_input_a3_NS; //
    s_input_b0_CS <= s_input_b0_NS;
    s_input_b1_CS <= s_input_b1_NS;
    s_input_b2_CS <= s_input_b2_NS;
    s_input_b3_CS <= s_input_b3_NS; //
    s_input_c0_CS <= s_input_c0_NS;
    s_input_c1_CS <= s_input_c1_NS;
    s_input_c2_CS <= s_input_c2_NS;
    s_input_c3_CS <= s_input_c3_NS; //
    s_input_d0_CS <= s_input_d0_NS;
    s_input_d1_CS <= s_input_d1_NS;
    s_input_d2_CS <= s_input_d2_NS;
    s_input_d3_CS <= s_input_d3_NS; //
  end
end

assign s_input_a0 = s_input_a0_CS;
assign s_input_a1 = s_input_a1_CS;
assign s_input_a2 = s_input_a2_CS;
assign s_input_a3 = s_input_a3_CS;

assign s_input_b0 = s_input_b0_CS;
assign s_input_b1 = s_input_b1_CS;
assign s_input_b2 = s_input_b2_CS;
assign s_input_b3 = s_input_b3_CS;

assign s_input_c0 = s_input_c0_CS;
assign s_input_c1 = s_input_c1_CS;
assign s_input_c2 = s_input_c2_CS;
assign s_input_c3 = s_input_c3_CS;

assign s_input_d0 = s_input_d0_CS;
assign s_input_d1 = s_input_d1_CS;
assign s_input_d2 = s_input_d2_CS;
assign s_input_d3 = s_input_d3_CS;

/////////////////////////////////////////////////////////////////////
// Physical Channel Output
/////////////////////////////////////////////////////////////////////
MUX4X1 #(
  .DATA_WIDTH (C_DATA_WIDTH)
) mux_a (
  .din0 ( fifo_a0_dout  ),
  .din1 ( fifo_d1_dout  ),
  .din2 ( fifo_c2_dout  ),
  .din3 ( fifo_b3_dout  ),
  .sel  ( MA_a_sel      ),
  .dout ( dout_a_w      )
);

MUX4X1 #(
  .DATA_WIDTH (C_DATA_WIDTH)
) mux_b (
  .din0 ( fifo_b0_dout  ),
  .din1 ( fifo_a1_dout  ),
  .din2 ( fifo_d2_dout  ),
  .din3 ( fifo_c3_dout  ),
  .sel  ( MA_b_sel      ),
  .dout ( dout_b_w      )
);

MUX4X1 #(
  .DATA_WIDTH (C_DATA_WIDTH)
) mux_c (
  .din0 ( fifo_c0_dout  ),
  .din1 ( fifo_b1_dout  ),
  .din2 ( fifo_a2_dout  ),
  .din3 ( fifo_d3_dout  ),
  .sel  ( MA_c_sel      ),
  .dout ( dout_c_w      )
);

MUX4X1 #(
  .DATA_WIDTH (C_DATA_WIDTH)
) mux_d (
  .din0 ( fifo_d0_dout  ),
  .din1 ( fifo_c1_dout  ),
  .din2 ( fifo_b2_dout  ),
  .din3 ( fifo_a3_dout  ),
  .sel  ( MA_d_sel      ),
  .dout ( dout_d_w      )
);

always @(posedge clk) begin
  dout_a <= dout_a_w;
  dout_b <= dout_b_w;
  dout_c <= dout_c_w;
  dout_d <= dout_d_w;
end

endmodule
