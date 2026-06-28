# Floating-Point Systolic Array

This repository contains the RTL implementation of a fully parameterized **Floating-Point Systolic Array** written in SystemVerilog. The architecture is designed around a **Weight-Stationary Processing Element (WSPE)**, making it highly efficient for dense matrix multiplications: $C = (A \\times B) + D$.

The array natively computes using IEEE-754 32-bit floating-point arithmetic.

## Detailed Documentation

For a deep dive into how the array works, please read the following detailed documentation files:
- [Architecture & Dataflow](file:///home/phanikar/BITS/3-2/Projects/Systolic-Array/docs/architecture.md) - Details the weight-stationary flow, PE internals, reset logic, and final accumulation stage.
- [Simulation & Testing](file:///home/phanikar/BITS/3-2/Projects/Systolic-Array/docs/simulation_and_testing.md) - Details the automated self-checking testbench generator and how to simulate any `N x M` array.

## Directory Structure

- **`srcs/`**: Contains the hardware source code.
  - `Systolic_Array.sv`: The top-level parameterized 2D mesh of PEs with the final FPadder stage.
  - `WSPE.v`: The Weight-Stationary Processing Element (PE), the core compute unit.
  - `FPadder.v` / `FPMul.v`: Floating-point arithmetic modules.
- **`sims/`**: Contains simulation scripts and testbenches.
  - `generate_tb.py`: A powerful Python script that automatically generates a fully timed, self-checking testbench for any array dimensions.
  - `tb_SystolicArray.sv` / `tb_SystolicArray_3x3.sv`: Generated testbenches for simulating the full array.

## Running Simulations

We provide a Python script to automatically construct cycle-accurate testbenches for any parameterization of the array. To generate a testbench for a 3x3 array:

```bash
python3 sims/generate_tb.py --rows 3 --cols 3 --k 3 --out sims/tb_SystolicArray_3x3.sv
```

This generates a testbench containing randomized small floating-point inputs, automatically staggering them correctly for a systolic pipeline, and checking the answers. You can load this testbench into Vivado Simulator (or your preferred tool) to run the self-checking simulation.
