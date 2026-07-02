`timescale 1ns / 1ps
module SystolicArray_post_wrapper #(
  parameter ROWS = 2,
  parameter COLS = 2,
  parameter DATA_WIDTH = 32
) (
  input clock,
  input reset,
  input [DATA_WIDTH-1:0] io_a_in [0:ROWS-1],
  input [DATA_WIDTH-1:0] io_b_in [0:ROWS-1][0:COLS-1],
  input io_load_b,
  input [DATA_WIDTH-1:0] io_d_in [0:COLS-1],
  input [1:0] io_round,
  output [DATA_WIDTH-1:0] io_a_out [0:ROWS-1],
  output [DATA_WIDTH-1:0] io_c_out [0:COLS-1]
);

SystolicArray core (
    .clock(clock),
    .reset(reset),
    .\io_a_in[0] (io_a_in[0]),
    .\io_a_in[1] (io_a_in[1]),
    .\io_b_in[0][0] (io_b_in[0][0]),
    .\io_b_in[0][1] (io_b_in[0][1]),
    .\io_b_in[1][0] (io_b_in[1][0]),
    .\io_b_in[1][1] (io_b_in[1][1]),
    .io_load_b(io_load_b),
    .\io_d_in[0] (io_d_in[0]),
    .\io_d_in[1] (io_d_in[1]),
    .io_round(io_round),
    .\io_a_out[0] (io_a_out[0]),
    .\io_a_out[1] (io_a_out[1]),
    .\io_c_out[0] (io_c_out[0]),
    .\io_c_out[1] (io_c_out[1])
);

endmodule
