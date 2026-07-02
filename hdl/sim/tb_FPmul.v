`timescale 1ns / 1ps
// 
// 
// 
// 


`timescale 1ns/1ps

module tb_FPmul;

    reg  [31:0] io_a;
    reg  [31:0] io_b;
    reg  [1:0]  io_round;

    wire [31:0] io_o;

    integer tests;
    integer errors;

    FPmul dut (
        .io_a     (io_a),
        .io_b     (io_b),
        .io_o     (io_o),
        .io_round (io_round)
    );

    task check_result;
        input [255:0] name;
        input [31:0] expected;

        begin
            tests = tests + 1;

            #10; // combinational settling time

            if(io_o !== expected) begin
                $display("FAIL : %0s", name);
                $display("  A        = %h", io_a);
                $display("  B        = %h", io_b);
                $display("  Expected = %h", expected);
                $display("  Got      = %h", io_o);
                $display("");
                errors = errors + 1;
            end
            else begin
                $display("PASS : %0s", name);
                $display("  Result = %h", io_o);
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

        $display("");
        $display("==============================================");
        $display(" FPmul Testbench");
        $display("==============================================");
        $display("");

        //-----------------------------------
        // Test 1: 1.0 * 1.0 = 1.0
        //-----------------------------------
        io_a = 32'h3F800000; // 1.0
        io_b = 32'h3F800000; // 1.0

        check_result(
            "1.0 * 1.0 = 1.0",
            32'h3F800000
        );

        //-----------------------------------
        // Test 2: 2.0 * 3.0 = 6.0
        //-----------------------------------
        io_a = 32'h40000000; // 2.0
        io_b = 32'h40400000; // 3.0

        check_result(
            "2.0 * 3.0 = 6.0",
            32'h40C00000
        );

        //-----------------------------------
        // Test 3: 1.5 * 2.0 = 3.0
        //-----------------------------------
        io_a = 32'h3FC00000; // 1.5
        io_b = 32'h40000000; // 2.0

        check_result(
            "1.5 * 2.0 = 3.0",
            32'h40400000
        );

        //-----------------------------------
        // Test 4: -1.0 * 1.0 = -1.0
        //-----------------------------------
        io_a = 32'hBF800000; // -1.0
        io_b = 32'h3F800000; //  1.0

        check_result(
            "-1.0 * 1.0 = -1.0",
            32'hBF800000
        );

        //-----------------------------------
        // Test 5: -2.0 * -3.0 = 6.0
        //-----------------------------------
        io_a = 32'hC0000000; // -2.0
        io_b = 32'hC0400000; // -3.0

        check_result(
            "-2.0 * -3.0 = 6.0",
            32'h40C00000
        );

        //-----------------------------------
        // Test 6: 0.0 * 5.0 = 0.0
        //-----------------------------------
        io_a = 32'h00000000; // 0.0
        io_b = 32'h40A00000; // 5.0

        check_result(
            "0.0 * 5.0 = 0.0",
            32'h00000000
        );

        //-----------------------------------
        // Test 7: 5.0 * 0.0 = 0.0
        //-----------------------------------
        io_a = 32'h40A00000; // 5.0
        io_b = 32'h00000000; // 0.0

        check_result(
            "5.0 * 0.0 = 0.0",
            32'h00000000
        );

        //-----------------------------------
        // Test 8: +Inf * 2.0 = +Inf
        //-----------------------------------
        io_a = 32'h7F800000; // +Inf
        io_b = 32'h40000000; //  2.0

        check_result(
            "+Inf * 2.0 = +Inf",
            32'h7F800000
        );

        //-----------------------------------
        // Test 9: -Inf * 2.0 = -Inf
        //-----------------------------------
        io_a = 32'hFF800000; // -Inf
        io_b = 32'h40000000; //  2.0

        check_result(
            "-Inf * 2.0 = -Inf",
            32'hFF800000
        );

        //-----------------------------------
        // Test 10: NaN * 1.0 = NaN
        // NaN check: exp=FF, mant!=0
        //-----------------------------------
        io_a = 32'h7FC00000; // NaN
        io_b = 32'h3F800000; // 1.0

        #10;
        tests = tests + 1;

        if(io_o[30:23] != 8'hFF ||
           io_o[22:0]  == 0) begin

            $display("FAIL : NaN * 1.0 = NaN");
            $display("  Output = %h", io_o);
            errors = errors + 1;
        end
        else begin
            $display("PASS : NaN * 1.0 = NaN");
            $display("  Result = %h", io_o);
            $display("");
        end

        //-----------------------------------
        // Test 11: 0.5 * 0.5 = 0.25
        //-----------------------------------
        io_a = 32'h3F000000; // 0.5
        io_b = 32'h3F000000; // 0.5

        check_result(
            "0.5 * 0.5 = 0.25",
            32'h3E800000
        );

        //-----------------------------------
        // Test 12: 10.0 * 10.0 = 100.0
        //-----------------------------------
        io_a = 32'h41200000; // 10.0
        io_b = 32'h41200000; // 10.0

        check_result(
            "10.0 * 10.0 = 100.0",
            32'h42C80000
        );

        //-----------------------------------
        // Test 13: 128.0 * 0.5 = 64.0
        //-----------------------------------
        io_a = 32'h43000000; // 128.0
        io_b = 32'h3F000000; //   0.5

        check_result(
            "128.0 * 0.5 = 64.0",
            32'h42800000
        );

        $display("");
        $display("==============================================");
        $display(" SUMMARY");
        $display("==============================================");
        $display("Tests  = %0d", tests);
        $display("Errors = %0d", errors);

        if(errors == 0)
            $display("RESULT = PASS");
        else
            $display("RESULT = FAIL");

        $display("==============================================");

        $finish;

    end

endmodule

