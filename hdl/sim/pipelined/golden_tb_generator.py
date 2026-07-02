import struct
import argparse
import random
import os

def float_to_hex(f):
    return hex(struct.unpack('<I', struct.pack('<f', f))[0])[2:].zfill(8)

def generate_tb(rows, cols, k, output_file, vertical_delay, horizontal_delay):
    # Generate random matrices
    A = [[float(random.randint(1, 4)) for _ in range(rows)] for _ in range(k)]
    B = [[float(random.randint(1, 4)) for _ in range(cols)] for _ in range(rows)]
    D = [[float(random.randint(1, 4)) for _ in range(cols)] for _ in range(k)]
    
    # Calculate expected C
    C = [[0.0 for _ in range(cols)] for _ in range(k)]
    for i in range(k):
        for j in range(cols):
            sum_ab = 0.0
            for r in range(rows):
                sum_ab += A[i][r] * B[r][j]
            C[i][j] = sum_ab + D[i][j]
            
    tb_code = f"""`timescale 1ns / 1ps

module tb_SystolicArray();

  parameter ROWS = {rows};
  parameter COLS = {cols};
  parameter DATA_WIDTH = 32;

  reg clock;
  reg reset;
  
  // Inputs
  reg [DATA_WIDTH-1:0] io_a_in [0:ROWS-1];
  reg [DATA_WIDTH-1:0] io_b_in [0:ROWS-1][0:COLS-1];
  reg io_load_b;
  reg [DATA_WIDTH-1:0] io_d_in [0:COLS-1];
  reg [1:0] io_round;
  
  // Outputs
  wire [DATA_WIDTH-1:0] io_a_out [0:ROWS-1];
  wire [DATA_WIDTH-1:0] io_c_out [0:COLS-1];

  // Verification variables
  reg [DATA_WIDTH-1:0] expected_C [0:{k-1}][0:{cols-1}];
  integer out_idx [0:{cols-1}];
  integer errors = 0;
  integer total_checked = 0;

  // Instantiate the Unit Under Test (UUT)
  SystolicArrayWrapper uut (
    .clock(clock),
    .reset(reset),
    .io_a_in(io_a_in),
    .io_b_in(io_b_in),
    .io_load_b(io_load_b),
    .io_d_in(io_d_in),
    .io_round(io_round),
    .io_a_out(io_a_out),
    .io_c_out(io_c_out)
  );

  // Initialize verification variables
  initial begin
"""
    for i in range(k):
        for c in range(cols):
            tb_code += f"    expected_C[{i}][{c}] = 32'h{float_to_hex(C[i][c])};\n"
    for c in range(cols):
        tb_code += f"    out_idx[{c}] = 0;\n"
    tb_code += "  end\n\n"

    tb_code += """  // Clock generation
  initial begin
    clock = 0;
    forever #10 clock = ~clock; // 50MHz clock
  end

  // Test stimulus
  initial begin
    // Initialize Inputs
    reset = 1;
    io_load_b = 0;
    io_round = 0;
    
    for (int i = 0; i < ROWS; i++) begin
      io_a_in[i] = 0;
      for (int j = 0; j < COLS; j++) begin
        io_b_in[i][j] = 0;
      end
    end
    
    for (int j = 0; j < COLS; j++) begin
      io_d_in[j] = 0;
    end

    // Wait 100 ns for global reset to finish
    #105;
    reset = 0;
    
    // Load B matrix
    @(posedge clock); #1;
    io_load_b = 1;
"""
    for r in range(rows):
        for c in range(cols):
            tb_code += f"    io_b_in[{r}][{c}] = 32'h{float_to_hex(B[r][c])}; // {B[r][c]}\n"
            
    tb_code += """    
    @(posedge clock); #1;
    io_load_b = 0;
    
    // Start pushing A and D matrix values
"""
    
    max_t_A = (k - 1) + (rows - 1) * vertical_delay
    max_t_D = (k - 1) + (cols - 1) * horizontal_delay
    total_cycles = max(max_t_A, max_t_D) + 1
    
    for t in range(total_cycles):
        tb_code += f"    // Cycle {t}\n"
        
        # A inputs
        for r in range(rows):
            i = t - (r * vertical_delay)
            if 0 <= i < k:
                val = A[i][r]
                tb_code += f"    io_a_in[{r}] = 32'h{float_to_hex(val)}; // A[{i}][{r}] = {val}\n"
            else:
                tb_code += f"    io_a_in[{r}] = 32'h00000000; // 0.0\n"
                
        # D inputs
        for c in range(cols):
            i = t - (c * horizontal_delay)
            if 0 <= i < k:
                val = D[i][c]
                tb_code += f"    io_d_in[{c}] = 32'h{float_to_hex(val)}; // D[{i}][{c}] = {val}\n"
            else:
                tb_code += f"    io_d_in[{c}] = 32'h00000000; // 0.0\n"
                
        tb_code += "    @(posedge clock); #1;\n\n"
        
    tb_code += """    // Wait for pipeline to flush out
    #500;
    
    $display("=================================================");
    $display("Simulation complete.");
    $display("Expected Outputs:");
"""
    for i in range(k):
        for c in range(cols):
            tb_code += f'    $display("C[{i}][{c}] = {C[i][c]} (32\'h{float_to_hex(C[i][c])})");\n'
            
    tb_code += f"""    $display("=================================================");
    
    // Final PASS/FAIL check
    if (total_checked == {k * cols} && errors == 0) begin
      $display("                 TEST PASSED                     ");
    end else begin
      $display("                 TEST FAILED                     ");
      $display(" Errors: %0d", errors);
      $display(" Outputs Checked: %0d / {k * cols}", total_checked);
    end
    $display("=================================================");

    $finish;
  end

  // Output Monitor and Checker
  always @(negedge clock) begin
    if (reset == 0) begin
"""
    for c in range(cols):
        tb_code += f"""      if (io_c_out[{c}] != 32'd0 && io_c_out[{c}] != 32'h80000000) begin
        $display("[%0t] RESULT STREAMING OUT: Col {c} Final C Output = %h", $time, io_c_out[{c}]);
        if (out_idx[{c}] < {k}) begin
          if (io_c_out[{c}] !== expected_C[out_idx[{c}]][{c}]) begin
            $display("ERROR: Col {c} output %h does not match expected %h at index %0d", io_c_out[{c}], expected_C[out_idx[{c}]][{c}], out_idx[{c}]);
            errors = errors + 1;
          end
          out_idx[{c}] = out_idx[{c}] + 1;
          total_checked = total_checked + 1;
        end
      end
"""
    tb_code += """    end
  end

endmodule
"""
    
    with open(output_file, 'w') as f:
        f.write(tb_code)
        
    print(f"Generated testbench at {output_file}")

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description='Generate Pipelined Systolic Array Testbench')
    parser.add_argument('--rows', type=int, default=2, help='Number of rows in the array')
    parser.add_argument('--cols', type=int, default=2, help='Number of columns in the array')
    parser.add_argument('--k', type=int, default=2, help='Inner dimension of matrices (rows of A, columns of B/D)')
    parser.add_argument('--out', type=str, default='tb_SystolicArray.sv', help='Output file path')
    
    args = parser.parse_args()
    # Pipelined case: Vertical delay is 8 cycles (7 in PE + 1 inter-PE register)
    # Horizontal delay is 1 cycle (1 inter-PE register)
    generate_tb(args.rows, args.cols, args.k, args.out, vertical_delay=8, horizontal_delay=1)
