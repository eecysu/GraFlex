`default_nettype none
`timescale 1 ns / 1 ps

module axi_counter #(
  parameter integer C_WIDTH  = 4,
  parameter [C_WIDTH-1:0] C_INIT = {C_WIDTH{1'b0}}
) (
  input  wire               clk,
  input  wire               clken,
  input  wire               rst,
  input  wire               load,
  input  wire               incr,
  input  wire               decr,
  input  wire [C_WIDTH-1:0] load_value,
  output wire [C_WIDTH-1:0] count,
  output wire               is_zero
);

/////////////////////////////////////////////////////////////////////////////
// Local Parameters
/////////////////////////////////////////////////////////////////////////////
localparam [C_WIDTH-1:0] LP_ZERO = {C_WIDTH{1'b0}};
localparam [C_WIDTH-1:0] LP_ONE = {{C_WIDTH-1{1'b0}},1'b1};
localparam [C_WIDTH-1:0] LP_MAX = {C_WIDTH{1'b1}};

/////////////////////////////////////////////////////////////////////////////
// Variables
/////////////////////////////////////////////////////////////////////////////
reg [C_WIDTH-1:0] count_r = C_INIT;
reg is_zero_r = (C_INIT == LP_ZERO);

/////////////////////////////////////////////////////////////////////////////
// Begin RTL
/////////////////////////////////////////////////////////////////////////////
assign count = count_r;

always @(posedge clk) begin
  if (rst) begin
    count_r <= C_INIT;
  end else if (clken) begin
    if (load)
      count_r <= load_value;
    else if (incr & ~decr)
      count_r <= count_r + 1'b1;
    else if (~incr & decr)
      count_r <= count_r - 1'b1;
    else
      count_r <= count_r;
  end
end

assign is_zero = is_zero_r;

always @(posedge clk) begin
  if (rst)
    is_zero_r <= (C_INIT == LP_ZERO);
  else if (clken) begin
    if (load)
      is_zero_r <= (load_value == LP_ZERO);
    else
      is_zero_r <= incr ^ decr ? (decr && (count_r == LP_ONE)) || (incr && (count_r == LP_MAX)) : is_zero_r;
  end else
    is_zero_r <= is_zero_r;
end

endmodule : axi_counter
`default_nettype wire
