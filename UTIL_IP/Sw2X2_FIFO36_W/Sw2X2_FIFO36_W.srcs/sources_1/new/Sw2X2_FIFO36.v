//////////////////////////////////////////////////////////////////////////////////
// Module Name: Sw2X2_FIFO36_W
// Revision:
//   *Revision 0.01 - File Created
//   *Revision 0.1 - Registered Output to Improve Timing
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////
`timescale 1ns / 1ps

// NOTE: the EXTEND_BW parameter should be within 0 to 8
// 2X2 Switch Node in a 2-ary 3-fly Network
module Sw2X2_FIFO36_W #(
  parameter integer ROUTING_BIT  = 2,
  parameter integer DATA_WIDTH   = 64,
  parameter integer FIFO_FULL_TH = 510
) (
  input  clk,
  input  rst_n,
  input  ivld_a,
  input  ivld_b,
  input  [DATA_WIDTH-1:0] din_a,
  input  [DATA_WIDTH-1:0] din_b,
  input  ofw_output_a,
  input  ofw_output_b,     // overflow flag of output PC
  output reg ovld_a,
  output reg ovld_b,
  output reg [DATA_WIDTH-1:0] dout_a,
  output reg [DATA_WIDTH-1:0] dout_b,
  output reg ofw_input_a,
  output reg ofw_input_b       // overflow flag of input PC
);

  // state of VC: {idle(1'b0), waiting(1'b1)}
  wire s_input_a0;
  wire s_input_a1;
  wire s_input_b0;
  wire s_input_b1;
  reg  s_input_a0_CS;
  reg  s_input_a1_CS;
  reg  s_input_a0_NS;
  reg  s_input_a1_NS;
  reg  s_input_b0_CS;
  reg  s_input_b1_CS;
  reg  s_input_b0_NS;
  reg  s_input_b1_NS;

  // 2X2 Matrix Arbiter
  wire MA_a_sel;
  wire MA_b_sel;
  wire MA_a_vld;
  wire MA_b_vld;
  wire MA_a_arbreq_0;
  wire MA_a_arbreq_1;
  wire MA_b_arbreq_0;
  wire MA_b_arbreq_1;

  // FIFO as Flit Buffer
  wire fifo_a0_rd_en;
  reg  fifo_a0_rd_en_1d;
  wire fifo_a0_wr_en;
  wire fifo_a0_empty;
  wire fifo_a0_prog_empty;
  wire fifo_a0_full;
  wire fifo_a0_prog_full;
  wire [DATA_WIDTH-1:0] fifo_a0_din;
  wire [DATA_WIDTH-1:0] fifo_a0_dout; // a0
  
  wire fifo_a1_rd_en;
  reg  fifo_a1_rd_en_1d;
  wire fifo_a1_wr_en;
  wire fifo_a1_empty;
  wire fifo_a1_prog_empty;
  wire fifo_a1_full;
  wire fifo_a1_prog_full;
  wire [DATA_WIDTH-1:0] fifo_a1_din;
  wire [DATA_WIDTH-1:0] fifo_a1_dout; // a1
  
  wire fifo_b0_rd_en;
  reg  fifo_b0_rd_en_1d;
  wire fifo_b0_wr_en;
  wire fifo_b0_empty;
  wire fifo_b0_prog_empty;
  wire fifo_b0_full;
  wire fifo_b0_prog_full;
  wire [DATA_WIDTH-1:0] fifo_b0_din;
  wire [DATA_WIDTH-1:0] fifo_b0_dout; // b0
  
  wire fifo_b1_rd_en;
  reg  fifo_b1_rd_en_1d;
  wire fifo_b1_wr_en;
  wire fifo_b1_empty;
  wire fifo_b1_prog_empty;
  wire fifo_b1_full;
  wire fifo_b1_prog_full;
  wire [DATA_WIDTH-1:0] fifo_b1_din;
  wire [DATA_WIDTH-1:0] fifo_b1_dout; // b1 

  // Intermediate Output Wires & Regs
  wire ovld_a_w;
  wire ovld_b_w;
  wire [DATA_WIDTH-1:0] dout_a_w;
  wire [DATA_WIDTH-1:0] dout_b_w;
  wire ofw_a_w;
  wire ofw_b_w;

  reg  ovld_a_r;
  reg  ovld_b_r;
  reg  [DATA_WIDTH-1:0] dout_a_r;
  reg  [DATA_WIDTH-1:0] dout_b_r;
  reg  ofw_a_r;
  reg  ofw_b_r;

/////////////////////////////////////////////////////////////////////
// FIFO instantiation as Flit Buffer
/////////////////////////////////////////////////////////////////////
FIFO36_W # (
  .DATA_WIDTH ( DATA_WIDTH),
  .EMPTY_TH   ( 2   ),
  .FULL_TH    ( FIFO_FULL_TH )
) fifo_a0 (
  .clk        ( clk               ),
  .rst_n      ( rst_n             ),
  .rd_en      ( fifo_a0_rd_en     ),
  .wr_en      ( fifo_a0_wr_en     ),
  .din        ( fifo_a0_din       ),
  .dout       ( fifo_a0_dout      ),
  .empty      ( fifo_a0_empty     ),
  .prog_empty ( fifo_a0_prog_empty),
  .full       ( fifo_a0_full      ),
  .prog_full  ( fifo_a0_prog_full )
);

FIFO36_W # (
  .DATA_WIDTH ( DATA_WIDTH),
  .EMPTY_TH   ( 2   ),
  .FULL_TH    ( FIFO_FULL_TH )
) fifo_a1 (
  .clk        ( clk               ),
  .rst_n      ( rst_n             ),
  .rd_en      ( fifo_a1_rd_en     ),
  .wr_en      ( fifo_a1_wr_en     ),
  .din        ( fifo_a1_din       ),
  .dout       ( fifo_a1_dout      ),  
  .empty      ( fifo_a1_empty     ),
  .prog_empty ( fifo_a1_prog_empty),
  .full       ( fifo_a1_full      ),
  .prog_full  ( fifo_a1_prog_full )
);

FIFO36_W # (
  .DATA_WIDTH ( DATA_WIDTH),
  .EMPTY_TH   ( 2   ),
  .FULL_TH    ( FIFO_FULL_TH )
) fifo_b0 (
  .clk        ( clk               ),
  .rst_n      ( rst_n             ),
  .rd_en      ( fifo_b0_rd_en     ),
  .wr_en      ( fifo_b0_wr_en     ),
  .din        ( fifo_b0_din       ),
  .dout       ( fifo_b0_dout      ),
  .empty      ( fifo_b0_empty     ),
  .prog_empty ( fifo_b0_prog_empty),
  .full       ( fifo_b0_full      ),
  .prog_full  ( fifo_b0_prog_full )
);

FIFO36_W # (
  .DATA_WIDTH ( DATA_WIDTH),
  .EMPTY_TH   ( 2   ),
  .FULL_TH    ( FIFO_FULL_TH )
) fifo_b1 (
  .clk        ( clk               ),
  .rst_n      ( rst_n             ),
  .rd_en      ( fifo_b1_rd_en     ),
  .wr_en      ( fifo_b1_wr_en     ),
  .din        ( fifo_b1_din       ),
  .dout       ( fifo_b1_dout      ),
  .empty      ( fifo_b1_empty     ),
  .prog_empty ( fifo_b1_prog_empty),
  .full       ( fifo_b1_full      ),
  .prog_full  ( fifo_b1_prog_full )
);

// FIFO input data, controlled by wr_en
assign fifo_a0_din = din_a;
assign fifo_a1_din = din_a;
assign fifo_b0_din = din_b;
assign fifo_b1_din = din_b;

// FIFO write enable
assign fifo_a0_wr_en = (ivld_a && ~fifo_a0_full && ~din_a[ROUTING_BIT]); // {0,1,2,3}
assign fifo_a1_wr_en = (ivld_a && ~fifo_a1_full && din_a[ROUTING_BIT]); // {4,5,6,7}
assign fifo_b0_wr_en = (ivld_b && ~fifo_b0_full && din_b[ROUTING_BIT]);
assign fifo_b1_wr_en = (ivld_b && ~fifo_b1_full && ~din_b[ROUTING_BIT]);

// FIFO read  enable
assign fifo_a0_rd_en = (~ofw_output_a && (s_input_a0!=1'b1) && (s_input_a0_NS!=1'b1) && ~fifo_a0_empty);
assign fifo_a1_rd_en = (~ofw_output_b && (s_input_a1!=1'b1) && (s_input_a1_NS!=1'b1) && ~fifo_a1_empty);
assign fifo_b0_rd_en = (~ofw_output_b && (s_input_b0!=1'b1) && (s_input_b0_NS!=1'b1) && ~fifo_b0_empty);
assign fifo_b1_rd_en = (~ofw_output_a && (s_input_b1!=1'b1) && (s_input_b1_NS!=1'b1) && ~fifo_b1_empty);

// Output Overflow Flag
assign ofw_a_w = (fifo_a0_prog_full | fifo_a1_prog_full);
assign ofw_b_w = (fifo_b0_prog_full | fifo_b1_prog_full);

always @(posedge clk) begin
  ofw_a_r <= ofw_a_w;
  ofw_b_r <= ofw_b_w;
  ofw_input_a <= ofw_a_r;
  ofw_input_b <= ofw_b_r;
end

// FIFO rd_en 1 cycle delayed
always @(posedge clk) begin
  fifo_a0_rd_en_1d <= fifo_a0_rd_en;
  fifo_a1_rd_en_1d <= fifo_a1_rd_en;
  fifo_b0_rd_en_1d <= fifo_b0_rd_en;
  fifo_b1_rd_en_1d <= fifo_b1_rd_en;
end

/////////////////////////////////////////////////////////////////////
// MatArbiter2X2 instantiation
/////////////////////////////////////////////////////////////////////
MatArbiter2X2 MA_a (
  .clk      ( clk           ),
  .rst_n    ( rst_n         ),
  .arbreq_0 ( MA_a_arbreq_0 ),
  .arbreq_1 ( MA_a_arbreq_1 ),
  .vld      ( MA_a_vld      ),
  .sel      ( MA_a_sel      ),
  .we       ()
);

MatArbiter2X2 MA_b (
  .clk      ( clk           ),
  .rst_n    ( rst_n         ),
  .arbreq_0 ( MA_b_arbreq_0 ),
  .arbreq_1 ( MA_b_arbreq_1 ),
  .vld      ( MA_b_vld      ),
  .sel      ( MA_b_sel      ),
  .we       ()
);

// arbreq is aligned with output VC (1 cycle delay after input VC)
assign MA_a_arbreq_0 = fifo_b1_rd_en_1d | (s_input_b1==1'b1);
assign MA_a_arbreq_1 = fifo_a0_rd_en_1d | (s_input_a0==1'b1);
assign MA_b_arbreq_0 = fifo_a1_rd_en_1d | (s_input_a1==1'b1);
assign MA_b_arbreq_1 = fifo_b0_rd_en_1d | (s_input_b0==1'b1);


assign ovld_a_w = MA_a_vld & (fifo_a0_rd_en_1d | fifo_b1_rd_en_1d | s_input_a0 | s_input_b1);
assign ovld_b_w = MA_b_vld & (fifo_a1_rd_en_1d | fifo_b0_rd_en_1d | s_input_a1 | s_input_b0);

always @(posedge clk) begin
  ovld_a_r <= ovld_a_w;
  ovld_b_r <= ovld_b_w;
  ovld_a <= ovld_a_r;
  ovld_b <= ovld_b_r;
end

/////////////////////////////////////////////////////////////////////
// VC FSM logic
/////////////////////////////////////////////////////////////////////
always @(*) begin
  if (~rst_n)
    s_input_a0_NS = 1'b0; // IDLE
  else begin
    case (s_input_a0_CS)
      // IDLE
      1'b0:
        if (MA_a_arbreq_1 && (MA_a_sel!=1'b1))
          s_input_a0_NS = 1'b1; // WAITING
        else
          s_input_a0_NS = 1'b0; // IDLE
      // WAITING
      1'b1:
        if (MA_a_sel == 1'b1)
          s_input_a0_NS = 1'b0; // IDLE
        else
          s_input_a0_NS = 1'b1; // WAITING        
      // otherwise
      default:
        s_input_a0_NS = 1'b0; // IDLE
    endcase
  end
end

always @(*) begin
  if (~rst_n)
    s_input_a1_NS = 1'b0; // IDLE
  else begin
    case (s_input_a1_CS)
      // IDLE
      1'b0:
        if (MA_b_arbreq_0 && (MA_b_sel!=1'b0))
          s_input_a1_NS = 1'b1; // WAITING
        else
          s_input_a1_NS = 1'b0; // IDLE
      // WAITING
      1'b1:
        if (MA_b_sel == 1'b0)
          s_input_a1_NS = 1'b0; // IDLE
        else
          s_input_a1_NS = 1'b1; // WAITING            
      // otherwise
      default:
        s_input_a1_NS = 1'b0; // IDLE
    endcase
  end
end

always @(*) begin
  if (~rst_n)
    s_input_b0_NS = 1'b0; // IDLE
  else begin
    case (s_input_b0_CS)
      // IDLE
      1'b0:
        if (MA_b_arbreq_1 && (MA_b_sel!=1'b1))
          s_input_b0_NS = 1'b1; // WAITING
        else
          s_input_b0_NS = 1'b0; // IDLE  
      // WAITING
      1'b1:
        if (MA_b_sel == 1'b1)
          s_input_b0_NS = 1'b0; // IDLE
        else
          s_input_b0_NS = 1'b1; // WAITING         
      // otherwise
      default:
        s_input_b0_NS = 1'b0; // IDLE
    endcase
  end
end

always @(*) begin
  if (~rst_n)
    s_input_b1_NS = 1'b0; // IDLE
  else begin
    case (s_input_b1_CS)
      // IDLE
      1'b0:
        if (MA_a_arbreq_0 && (MA_a_sel!=1'b0))
          s_input_b1_NS = 1'b1; // WAITING
        else
          s_input_b1_NS = 1'b0; // IDLE
      // WAITING
      1'b1:
        if (MA_a_sel == 1'b0)
          s_input_b1_NS = 1'b0; // IDLE
        else
          s_input_b1_NS = 1'b1; // WAITING         
      // otherwise
      default:
        s_input_b1_NS = 'b0; // IDLE
    endcase
  end
end

always @(posedge clk) begin
  if (~rst_n) begin
    s_input_a0_CS <= 1'b0;
    s_input_a1_CS <= 1'b0;
    s_input_b0_CS <= 1'b0;
    s_input_b1_CS <= 1'b0;
  end else begin
    s_input_a0_CS <= s_input_a0_NS;
    s_input_a1_CS <= s_input_a1_NS;
    s_input_b0_CS <= s_input_b0_NS;
    s_input_b1_CS <= s_input_b1_NS;
  end
end

assign s_input_a0 = s_input_a0_CS;
assign s_input_a1 = s_input_a1_CS;
assign s_input_b0 = s_input_b0_CS;
assign s_input_b1 = s_input_b1_CS;

/////////////////////////////////////////////////////////////////////
// Physical Channel Output
/////////////////////////////////////////////////////////////////////
assign dout_a_w = MA_a_sel ? fifo_a0_dout : fifo_b1_dout;
assign dout_b_w = MA_b_sel ? fifo_b0_dout : fifo_a1_dout;

always @(posedge clk) begin
  dout_a_r <= dout_a_w;
  dout_b_r <= dout_b_w;
  dout_a <= dout_a_r;
  dout_b <= dout_b_r;
end

endmodule
