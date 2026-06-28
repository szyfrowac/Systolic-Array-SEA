`timescale 1ns/1ps

module tb_WSPETOP;

    reg         clock;
    reg         reset;

    reg  [31:0] io_a;
    reg  [31:0] io_b_in;
    reg         io_load_b;

    reg  [31:0] io_d;
    reg  [31:0] io_d_prime;

    reg  [1:0]  io_round;

    wire [31:0] io_a_out;
    wire [31:0] io_d_out;
    wire [31:0] io_d_prime_out;

    integer tests;
    integer errors;

    WSPETOP dut (
        .clock(clock),
        .reset(reset),
        .io_a(io_a),
        .io_b_in(io_b_in),
        .io_load_b(io_load_b),
        .io_d(io_d),
        .io_d_prime(io_d_prime),
        .io_round(io_round),
        .io_a_out(io_a_out),
        .io_d_out(io_d_out),
        .io_d_prime_out(io_d_prime_out)
    );

    initial begin
        clock = 0;
        forever #5 clock = ~clock;
    end

    task print_state;
    begin
        $display("------------------------------------------");
        $display("A          = %h", io_a);
        $display("B_IN       = %h", io_b_in);
        $display("D          = %h", io_d);
        $display("D_PRIME    = %h", io_d_prime);
        $display("A_OUT      = %h", io_a_out);
        $display("D_OUT      = %h", io_d_out);
        $display("D_PRIME_OUT= %h", io_d_prime_out);
        $display("------------------------------------------");
    end
    endtask

    initial begin

        tests  = 0;
        errors = 0;

        io_a       = 0;
        io_b_in    = 0;
        io_load_b  = 0;
        io_d       = 0;
        io_d_prime = 0;
        io_round   = 2'b00;

        reset = 1;
        repeat(3) @(posedge clock);
        reset = 0;

        //--------------------------------------------------
        // Load weight = 2.0
        //--------------------------------------------------

        io_b_in   = 32'h40000000; // 2.0
        io_load_b = 1;

        @(posedge clock);

        io_load_b = 0;

        //--------------------------------------------------
// Load weight = +2.0
//--------------------------------------------------

io_b_in   = 32'h40000000;
io_load_b = 1;

@(posedge clock);

io_load_b = 0;

//--------------------------------------------------
// Test 1
// Positive product
//--------------------------------------------------

tests = tests + 1;

io_a       = 32'h3F800000; // +1.0
io_d       = 32'h40000000; // +2.0
io_d_prime = 32'hC0400000; // -3.0

repeat(2) @(posedge clock);

print_state();

//--------------------------------------------------
// Test 2
// Larger positive product
//--------------------------------------------------

tests = tests + 1;

io_a       = 32'h40400000; // +3.0
io_d       = 32'h40800000; // +4.0
io_d_prime = 32'hC0A00000; // -5.0

repeat(2) @(posedge clock);

print_state();

//--------------------------------------------------
// Test 3
// Negative product
//--------------------------------------------------

tests = tests + 1;

io_a       = 32'hBF800000; // -1.0
io_d       = 32'h40000000; // +2.0
io_d_prime = 32'hC0400000; // -3.0

repeat(2) @(posedge clock);

print_state();

//--------------------------------------------------
// Test 4
// Larger negative product
//--------------------------------------------------

tests = tests + 1;

io_a       = 32'hC0400000; // -3.0
io_d       = 32'h40800000; // +4.0
io_d_prime = 32'hC0A00000; // -5.0

repeat(2) @(posedge clock);

print_state();

//--------------------------------------------------
// Test 5
// Zero product
//--------------------------------------------------

tests = tests + 1;

io_a       = 32'h00000000;
io_d       = 32'h40000000; // +2.0
io_d_prime = 32'hC0400000; // -3.0

repeat(2) @(posedge clock);

print_state();

        $display("");
        $display("=================================");
        $display("Tests  = %0d", tests);
        $display("Errors = %0d", errors);

        if(errors == 0)
            $display("RESULT = PASS");
        else
            $display("RESULT = FAIL");

        $display("=================================");

        $finish;

    end

endmodule