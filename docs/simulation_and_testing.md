# Simulation and Testing Framework

This project features a fully automated, scalable simulation framework for testing the floating-point Systolic Array at any dimension (2x2, 3x3, 16x16, etc.).

## The Testbench Generator (`sims/generate_tb.py`)

Because systolic arrays require complex, cycle-accurate staggering of inputs (especially at larger dimensions), writing testbenches manually is highly error-prone. To solve this, a Python script (`generate_tb.py`) is provided.

The Python script dynamically calculates the correct timings and generates a complete, self-checking SystemVerilog testbench (`tb_SystolicArray_gen.sv`).

### Generating a Testbench

Run the script from the terminal, specifying the dimensions of your array:
```bash
python3 sims/generate_tb.py --rows 3 --cols 3 --k 3 --out sims/tb_SystolicArray_3x3.sv
```

**Parameters:**
- `--rows`: The physical number of rows in the Systolic Array.
- `--cols`: The physical number of columns in the Systolic Array.
- `--k`: The inner dimension of the matrix multiplication (i.e., the number of rows in matrix $A$ / the length of the data stream).
- `--out`: The filepath to save the generated `.sv` testbench.

### Automated Testbench Features

The generated testbench comes packed with robust features:
1. **Parameter Overrides**: Instantiates the `SystolicArray` module and automatically passes the correct `#(.ROWS(), .COLS())` parameter overrides.
2. **Matrix Initialization**: Fills matrices $A$, $B$, and $D$ with randomized small integers (1.0 to 4.0) so that the mathematical operations are easily verifiable by hand.
3. **Data Injection**: Calculates exactly which cycle to inject specific values of $A$ into `io_a_in` and $D$ into `io_d_in` to ensure that data properly collides inside the array.
4. **Self-Checking Validation**:
   - The Python script internally calculates the mathematically perfect matrix $C = (A \\times B) + D$.
   - It embeds this expected matrix $C$ into the Verilog testbench.
   - An output monitor dynamically checks every streaming result popping out of `io_c_out` against the expected `expected_C` array.
5. **Pass/Fail Reporting**: At the end of the simulation, the testbench tallies the number of checked outputs. If there are no mismatches and all outputs are accounted for, it prints a large `TEST PASSED` banner.

## Reset Handling
The generated testbench accounts for the internal **active-high** nature of the processing elements. 
It initializes the testbench with `reset = 1` for 100ns to clear all pipeline registers and internal buffers, and then pulls it down to `reset = 0` to begin computation.
