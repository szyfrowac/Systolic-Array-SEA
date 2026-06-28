# Systolic Array Architecture

## Overview

This project implements a fully parameterized, two-dimensional **Weight-Stationary Systolic Array** designed for floating-point matrix multiplication and accumulation: $C = (A \\times B) + D$.

The array is highly scalable and can be configured to any `ROWS` x `COLS` dimension via top-level parameters. It operates on IEEE-754 32-bit floating-point data (`DATA_WIDTH = 32`).

## Dataflow (Weight-Stationary)

In this specific systolic array architecture, the dataflow follows a **Weight-Stationary (WS)** pattern:
1. **Matrix B (Weights)**: Loaded directly into the Processing Elements (PEs) during the initialization phase using the `io_load_b` signal. Once loaded, these weights remain stationary inside their respective PEs for the duration of the matrix multiplication.
2. **Matrix A (Input Activations)**: Streams horizontally from the left side of the array (`io_a_in`). The data is skewed such that Row `r` of the array receives the `r`-th column of Matrix $A$. Data takes one clock cycle to propagate horizontally to the next adjacent PE.
3. **Matrix D (Initial Accumulation / Partial Sums)**: Streams vertically from the top of the array (`io_d_in`). The partial sums travel downwards, taking one clock cycle to propagate to the PE below it. 

Because of the systolic nature of the array, the inputs must be carefully staggered (skewed) in time. For example, if $A_{0,0}$ enters PE(0,0) at Cycle 1, then $A_{0,1}$ must enter PE(1,0) at Cycle 2 to properly align with the partial sum flowing down from PE(0,0).

## Processing Element (PE) Internals

Each PE in the array is built around the `WSPE` (Weight-Stationary Processing Element) module. 
The PE performs a fused multiply-add operation:
- It multiplies the incoming horizontal $A$ value with its stationary $B$ weight using the `FPMul` combinational multiplier.
- It takes the resulting product and adds it to the incoming vertical $D$ partial sum using the `samesignedFPadderfrontend`.

### Pipeline Registers
To maintain the systolic timing, the array utilizes pipeline registers between PEs:
- **Horizontal (`a_pipe`)**: Registers the $A$ value before passing it to the right neighbor.
- **Vertical (`d_pipe` and `d_prime_pipe`)**: Registers the computed partial sums before passing them to the bottom neighbor. 

*Note on Reset Polarity:* The internal PE registers and floating-point adders are designed with an **active-high** reset (`if (reset)`). The top-level `Systolic_Array.sv` module was refactored to align with this active-high reset to prevent the array from being locked in a continuous reset state during execution.

## Sign-Magnitude Accumulation (SEA)

The architecture utilizes a dual-path Sign-Magnitude addition scheme internally, splitting the partial sums into two distinct streams:
- **`D`**: Positive accumulation path.
- **`D_prime`**: Negative accumulation path.

This dual-path strategy avoids complex normalization and sign-flipping within the tightly constrained inner PE loop. 

## Final Accumulation Stage

At the very bottom of the systolic grid (after row `ROWS-1`), the array features a final accumulation stage. A dedicated row of `FPadder` modules takes the two separate streams (`D` and `D_prime`) emerging from the bottom row of PEs and adds them together. 

This final addition collapses the dual paths into a single, unified IEEE-754 floating-point output matrix $C$, resolving all partial sums into the mathematically correct final output. This is presented on the `io_c_out` ports.
