`timescale 1ns / 1ps

module Dist1X16 #(
  parameter integer ROUTING_HBIT = 4,
  parameter integer C_DATA_WIDTH = 64
) (
  input                     clk,
  input                     rst_n,
  input                     ivld,
  input  [C_DATA_WIDTH-1:0] din,
  output                    ovld_0,
  output                    ovld_1,
  output                    ovld_2,
  output                    ovld_3,
  output                    ovld_4,
  output                    ovld_5,
  output                    ovld_6,
  output                    ovld_7,
  output                    ovld_8,
  output                    ovld_9,
  output                    ovld_10,
  output                    ovld_11,
  output                    ovld_12,
  output                    ovld_13,
  output                    ovld_14,
  output                    ovld_15,
  output [C_DATA_WIDTH-1:0] dout_0,
  output [C_DATA_WIDTH-1:0] dout_1,
  output [C_DATA_WIDTH-1:0] dout_2,
  output [C_DATA_WIDTH-1:0] dout_3,
  output [C_DATA_WIDTH-1:0] dout_4,
  output [C_DATA_WIDTH-1:0] dout_5,
  output [C_DATA_WIDTH-1:0] dout_6,
  output [C_DATA_WIDTH-1:0] dout_7,
  output [C_DATA_WIDTH-1:0] dout_8,
  output [C_DATA_WIDTH-1:0] dout_9,
  output [C_DATA_WIDTH-1:0] dout_10,
  output [C_DATA_WIDTH-1:0] dout_11,
  output [C_DATA_WIDTH-1:0] dout_12,
  output [C_DATA_WIDTH-1:0] dout_13,
  output [C_DATA_WIDTH-1:0] dout_14,
  output [C_DATA_WIDTH-1:0] dout_15
);


wire                    ivld_0, ivld_1, ivld_2, ivld_3;
wire [C_DATA_WIDTH-1:0] din_0, din_1, din_2, din_3;


Dist1X4 #(
  .ROUTING_HBIT ( ROUTING_HBIT ),
  .C_DATA_WIDTH ( C_DATA_WIDTH )
) st0 (
  .clk     ( clk     ),
  .rst_n   ( rst_n   ),
  .ivld    ( ivld    ),
  .din     ( din     ),
  .ovld_a  ( ivld_0  ),
  .ovld_b  ( ivld_1  ),
  .ovld_c  ( ivld_2  ),
  .ovld_d  ( ivld_3  ),
  .dout_a  ( din_0   ),
  .dout_b  ( din_1   ),
  .dout_c  ( din_2   ),
  .dout_d  ( din_3   )
);


Dist1X4 #(
  .ROUTING_HBIT (ROUTING_HBIT-2),
  .C_DATA_WIDTH (C_DATA_WIDTH)
) st1_0 (
  .clk     ( clk     ),
  .rst_n   ( rst_n   ),
  .ivld    ( ivld_0  ),
  .din     ( din_0   ),
  .ovld_a  ( ovld_0  ),
  .ovld_b  ( ovld_1  ),
  .ovld_c  ( ovld_2  ),
  .ovld_d  ( ovld_3  ),
  .dout_a  ( dout_0  ),
  .dout_b  ( dout_1  ),
  .dout_c  ( dout_2  ),
  .dout_d  ( dout_3  )
);

Dist1X4 #(
  .ROUTING_HBIT (ROUTING_HBIT-2),
  .C_DATA_WIDTH (C_DATA_WIDTH)
) st1_1 (
  .clk     ( clk     ),
  .rst_n   ( rst_n   ),
  .ivld    ( ivld_1  ),
  .din     ( din_1   ),
  .ovld_a  ( ovld_4  ),
  .ovld_b  ( ovld_5  ),
  .ovld_c  ( ovld_6  ),
  .ovld_d  ( ovld_7  ),
  .dout_a  ( dout_4  ),
  .dout_b  ( dout_5  ),
  .dout_c  ( dout_6  ),
  .dout_d  ( dout_7  )
);

Dist1X4 #(
  .ROUTING_HBIT (ROUTING_HBIT-2),
  .C_DATA_WIDTH (C_DATA_WIDTH)
) st1_2 (
  .clk     ( clk     ),
  .rst_n   ( rst_n   ),
  .ivld    ( ivld_2  ),
  .din     ( din_2   ),
  .ovld_a  ( ovld_8  ),
  .ovld_b  ( ovld_9  ),
  .ovld_c  ( ovld_10 ),
  .ovld_d  ( ovld_11 ),
  .dout_a  ( dout_8  ),
  .dout_b  ( dout_9  ),
  .dout_c  ( dout_10 ),
  .dout_d  ( dout_11 )
);

Dist1X4 #(
  .ROUTING_HBIT (ROUTING_HBIT-2),
  .C_DATA_WIDTH (C_DATA_WIDTH)
) st1_3 (
  .clk     ( clk     ),
  .rst_n   ( rst_n   ),
  .ivld    ( ivld_3  ),
  .din     ( din_3   ),
  .ovld_a  ( ovld_12 ),
  .ovld_b  ( ovld_13 ),
  .ovld_c  ( ovld_14 ),
  .ovld_d  ( ovld_15 ),
  .dout_a  ( dout_12 ),
  .dout_b  ( dout_13 ),
  .dout_c  ( dout_14 ),
  .dout_d  ( dout_15 )
);

endmodule
