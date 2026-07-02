`timescale 1ns / 1ps
// 
// 
// 
// 


`timescale 1ns/1ps

module tb_samesignedFPadderfrontend;

    reg         clock;
    reg         reset;
    reg  [31:0] io_a;
    reg  [31:0] io_b;
    reg  [1:0]  io_round;

    wire [31:0] io_o;

    integer tests;
    integer errors;

    //---------------------------------------
    // DUT
    //---------------------------------------
    samesignedFPadderfrontend dut (
        .clock    (clock),
        .reset    (reset),
        .io_a     (io_a),
        .io_b     (io_b),
        .io_o     (io_o),
        .io_round (io_round)
    );

    initial begin
        clock = 0;
        forever #5 clock = ~clock;
    end

    task check_result;
        input [255:0] name;
        input [31:0] expected;

        begin
            tests = tests + 1;

            @(posedge clock);
            #1;

            if(io_o !== expected) begin
                $display("FAIL : %0s", name);
                $display("Expected = %h", expected);
                $display("Got      = %h", io_o);
                $display("");
                errors = errors + 1;
            end
            else begin
                $display("PASS : %0s", name);
                $display("Result = %h", io_o);
                $display("");
            end
        end
    endtask

    initial begin

        tests  = 0;
        errors = 0;

        io_a = 0;
        io_b = 0;
        io_round = 2'b00; // Round to nearest even

        reset = 1;

        repeat(3) @(posedge clock);

        reset = 0;

        //-----------------------------------
        // Test 1
        // 1.0 + 1.0 = 2.0
        //-----------------------------------
        io_a = 32'h3F800000;
        io_b = 32'h3F800000;

        check_result(
            "1.0 + 1.0",
            32'h40000000
        );

        //-----------------------------------
        // Test 2
        // 1.0 + 2.0 = 3.0
        //-----------------------------------
        io_a = 32'h3F800000;
        io_b = 32'h40000000;

        check_result(
            "1.0 + 2.0",
            32'h40400000
        );

        //-----------------------------------
        // Test 3
        // 1.5 + 1.5 = 3.0
        //-----------------------------------
        io_a = 32'h3FC00000;
        io_b = 32'h3FC00000;

        check_result(
            "1.5 + 1.5",
            32'h40400000
        );

        //-----------------------------------
        // Test 4
        // -1.0 + -1.0 = -2.0
        //-----------------------------------
        io_a = 32'hBF800000;
        io_b = 32'hBF800000;

        check_result(
            "-1.0 + -1.0",
            32'hC0000000
        );

        //-----------------------------------
        // Test 5
        // 0 + 0 = 0
        //-----------------------------------
        io_a = 32'h00000000;
        io_b = 32'h00000000;

        check_result(
            "0 + 0",
            32'h00000000
        );

        //-----------------------------------
        // Test 6
        // 0 + 1 = 1
        //-----------------------------------
        io_a = 32'h00000000;
        io_b = 32'h3F800000;

        check_result(
            "0 + 1",
            32'h3F800000
        );

        //-----------------------------------
        // Test 7
        // 128 + 1 = 129
        //-----------------------------------
        io_a = 32'h43000000;
        io_b = 32'h3F800000;

        check_result(
            "128 + 1",
            32'h43010000
        );

        //-----------------------------------
        // Test 8
        // +Inf + 1 = +Inf
        //-----------------------------------
        io_a = 32'h7F800000;
        io_b = 32'h3F800000;

        check_result(
            "+Inf + 1",
            32'h7F800000
        );

        //-----------------------------------
        // Test 9
        // NaN + 1 = NaN
        //-----------------------------------
        io_a = 32'h7FC00000;
        io_b = 32'h3F800000;

        @(posedge clock);
        #1;

        tests = tests + 1;

        if(io_o[30:23] != 8'hFF ||
           io_o[22:0]  == 0) begin

            $display("FAIL : NaN + 1");
            $display("Output = %h", io_o);
            errors = errors + 1;
        end
        else begin
            $display("PASS : NaN + 1");
        end

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
