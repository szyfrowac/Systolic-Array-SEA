`timescale 1ns / 1ps
module WSPETOP (
    input         clock,
    input         reset,
    input  [31:0] io_a,
    input  [31:0] io_b_in,
    input         io_load_b,
    input  [31:0] io_d,
    input  [31:0] io_d_prime,
    input  [1:0]  io_round,
    output [31:0] io_a_out,
    output [31:0] io_d_out,
    output [31:0] io_d_prime_out
);

    reg [31:0] b_reg;

    // 2-cycle delay for io_d and io_d_prime to match FPMul latency
    reg [31:0] d_delay_1;
    reg [31:0] d_delay_2;
    reg [31:0] d_prime_delay_1;
    reg [31:0] d_prime_delay_2;

    reg [31:0] d_out_reg;
    reg [31:0] bypass_reg_1;
    reg [31:0] bypass_reg_2;
    reg [31:0] bypass_reg_3;
    reg [31:0] bypass_reg_4;
    reg [31:0] d_prime_out_reg;

    wire [31:0] product;

    FPmul FPmulModule (
        .clock    (clock),
        .reset    (reset),
        .io_a     (io_a),
        .io_b     (b_reg),
        .io_o     (product),
        .io_round (io_round)
    );

    wire mul_sign = product[31];
    wire d_sign   = d_delay_2[31];

    wire xor_select = mul_sign ^ d_sign;

    wire [31:0] adder_result;

    samesignedFPadderfrontend SEAAdder (
        .clock    (clock),
        .reset    (reset),
        .io_a     (product),
        .io_b     (xor_select ? d_prime_delay_2 : d_delay_2),
        .io_o     (adder_result),
        .io_round (io_round)
    );

    assign io_a_out       = io_a;
    assign io_d_out       = d_out_reg;
    assign io_d_prime_out = d_prime_out_reg;

    always @(posedge clock) begin

        if (reset) begin
            b_reg <= 32'h00000000;
        end
        else if (io_load_b) begin
            b_reg <= io_b_in;
        end

        // Input delays to match multiplier latency
        if (reset) begin
            d_delay_1 <= 32'h00000000;
            d_delay_2 <= 32'h00000000;
            d_prime_delay_1 <= 32'h00000000;
            d_prime_delay_2 <= 32'h00000000;
        end else begin
            d_delay_1 <= io_d;
            d_delay_2 <= d_delay_1;
            d_prime_delay_1 <= io_d_prime;
            d_prime_delay_2 <= d_prime_delay_1;
        end

        if (reset) begin
            d_out_reg <= 32'h00000000;
        end
        else begin
            d_out_reg <= adder_result;
        end

        // 4-cycle Pipeline Register to match the adder + frontend latency
        if (reset) begin
            bypass_reg_1 <= 32'h00000000;
            bypass_reg_2 <= 32'h00000000;
            bypass_reg_3 <= 32'h00000000;
            bypass_reg_4 <= 32'h00000000;
        end
        else begin
            bypass_reg_1 <= xor_select ? d_delay_2 : d_prime_delay_2;
            bypass_reg_2 <= bypass_reg_1;
            bypass_reg_3 <= bypass_reg_2;
            bypass_reg_4 <= bypass_reg_3;
        end

        // Final output register (synchronous with d_out_reg)
        if (reset) begin
            d_prime_out_reg <= 32'h00000000;
        end
        else begin
            d_prime_out_reg <= bypass_reg_4;
        end

    end

endmodule