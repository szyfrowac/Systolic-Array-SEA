`timescale 1ns/1ps

module tb_samesignedFPadder;

    reg         clock;
    reg         reset;
    reg  [31:0] ioa;
    reg  [31:0] iob;
    reg         ioflag_inf2;

    wire        ioo_sgn;
    wire [2:0]  iocond;
    wire [7:0]  ioo_exp2;
    wire [26:0] ionorm_sum;

    integer test_count;
    integer error_count;

    samesignedFPadder dut (
        .clock(clock),
        .reset(reset),
        .ioa(ioa),
        .iob(iob),
        .ioflag_inf2(ioflag_inf2),
        .ioo_sgn(ioo_sgn),
        .iocond(iocond),
        .ioo_exp2(ioo_exp2),
        .ionorm_sum(ionorm_sum)
    );

    initial begin
        clock = 0;
        forever #5 clock = ~clock;
    end

    task run_test;
        input [255:0] test_name;
        input [31:0] a;
        input [31:0] b;

        begin
            test_count = test_count + 1;

            ioa = a;
            iob = b;

            @(posedge clock);
            #1;

            $display("------------------------------------------------");
            $display("TEST %0d : %0s", test_count, test_name);
            $display("A          = %h", ioa);
            $display("B          = %h", iob);
            $display("SIGN       = %b", ioo_sgn);
            $display("COND       = %b", iocond);
            $display("EXP        = %h", ioo_exp2);
            $display("NORM_SUM   = %h", ionorm_sum);
            $display("------------------------------------------------");
            $display("");
        end
    endtask

    task expect_cond;
        input [2:0] expected;

        begin
            if(iocond !== expected) begin
                error_count = error_count + 1;
                $display("ERROR: Expected cond=%b Got=%b",
                         expected, iocond);
            end
        end
    endtask

    initial begin

        test_count  = 0;
        error_count = 0;

        ioa = 0;
        iob = 0;
        ioflag_inf2 = 0;

        reset = 1;

        repeat(3) @(posedge clock);

        reset = 0;

        $display("");
        $display("==============================================");
        $display("STARTING SEA SAME-SIGNED ADDER TESTS");
        $display("==============================================");
        $display("");

        //----------------------------------------
        // Test 1
        // 1.0 + 1.0
        //----------------------------------------
        run_test(
            "1.0 + 1.0",
            32'h3F800000,
            32'h3F800000
        );
        expect_cond(3'b000);

        //----------------------------------------
        // Test 2
        // 1.5 + 1.5
        // Carry normalization path
        //----------------------------------------
        run_test(
            "1.5 + 1.5 (carry normalize)",
            32'h3FC00000,
            32'h3FC00000
        );
        expect_cond(3'b000);

        //----------------------------------------
        // Test 3
        // 1.0 + 2.0
        //----------------------------------------
        run_test(
            "1.0 + 2.0",
            32'h3F800000,
            32'h40000000
        );
        expect_cond(3'b000);

        //----------------------------------------
        // Test 4
        // 128.0 + 1.0
        // Alignment stress test
        //----------------------------------------
        run_test(
            "128.0 + 1.0",
            32'h43000000,
            32'h3F800000
        );
        expect_cond(3'b000);

        //----------------------------------------
        // Test 5
        // Large values
        //----------------------------------------
        run_test(
            "Large positive numbers",
            32'h50000000,
            32'h50000000
        );
        expect_cond(3'b000);

        //----------------------------------------
        // Test 6
        // -1 + -1
        //----------------------------------------
        run_test(
            "-1.0 + -1.0",
            32'hBF800000,
            32'hBF800000
        );
        expect_cond(3'b000);

        //----------------------------------------
        // Test 7
        // Zero + Zero
        //----------------------------------------
        run_test(
            "0.0 + 0.0",
            32'h00000000,
            32'h00000000
        );

        //----------------------------------------
        // Test 8
        // Zero + One
        //----------------------------------------
        run_test(
            "0.0 + 1.0",
            32'h00000000,
            32'h3F800000
        );

        //----------------------------------------
        // Test 9
        // +Inf + 1.0
        //----------------------------------------
        run_test(
            "+Inf + 1.0",
            32'h7F800000,
            32'h3F800000
        );

        //----------------------------------------
        // Test 10
        // NaN + 1.0
        //----------------------------------------
        run_test(
            "NaN + 1.0",
            32'h7FC00000,
            32'h3F800000
        );
        
        $display("");
        $display("==============================================");
        $display("TEST SUMMARY");
        $display("==============================================");
        $display("Tests Run : %0d", test_count);
        $display("Errors    : %0d", error_count);

        if(error_count == 0)
            $display("RESULT    : PASS");
        else
            $display("RESULT    : FAIL");

        $display("==============================================");

        $finish;

    end

endmodule