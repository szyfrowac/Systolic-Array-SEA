# 8x8 Floating-Point Systolic Array + MNIST Inference

This repository contains a complete hardware-software co-design project demonstrating a custom **8x8 Floating-Point Systolic Array** offloading Neural Network inference (MNIST) on a Xilinx Zynq-7000 SoC (ZedBoard).

## Highlights
- **Hardware**: Fully parameterized 2D Systolic Array written in SystemVerilog. Uses custom Weight-Stationary Processing Elements (WSPE) that perform IEEE-754 32-bit floating-point Multiply-Accumulate (MAC) operations.
- **Software**: A hybrid Baremetal C inference engine. The ARM Cortex-A9 CPU handles activation functions (ReLU, ArgMax) while streaming Matrix Multiplication (GEMM) layers to the FPGA hardware via AXI DMA.
- **Results**: Achieved a **1.92x Speedup** over the ARM CPU on a tiny MNIST network (`784 -> 128 -> 10`), and a massive **10x Speedup** on large 1024x1024 matrix operations! The hardware natively classified real MNIST digits with 100% mathematical accuracy compared to the Python baseline model.

## Directory Structure
- **`/hdl/src`**: The SystemVerilog HDL sources (Systolic Array, WSPE, FPMul).
- **`/hdl/sim`**: Python-based testbench generators and simulation wrappers.
- **`/tcl`**: All project setup, synthesis, and run scripts in TCL format.
- **`/vivado_projects`**: Vivado GUI projects, including the main project (`gui_proj`) and simulation projects.
- **`/hardware_release`**: Compiled hardware handoff files (**`Systolic_Array_8x8.xsa`** and **`Systolic_Array_8x8.bit`**) for flashing and target software compilation.
- **`/Vitis_Zed`**: The Vitis baremetal software workspace containing `mnist.c` and our pre-trained `weights.h`.
- **`/ip_repo`**: The packaged Vivado IP for the Systolic Array, ready to be dropped into any block design!
- **`/software/scripts`**: Python scripts used to download the MNIST dataset and train the baseline neural network.
- **`/software/baremetal`**: Standard C baseline code and tests.
- **`/dataset`**: Raw MNIST datasets.

## Architecture

### The Weight-Stationary Dataflow
The array expects `Matrix B` (Weights) to be streamed in first. The weights are passed down the columns and permanently locked into the internal registers of the PEs. 
Once locked, `Matrix A` (Inputs) streams in row-by-row from the left. As the inputs march across the array, they are multiplied by the stationary weights, and the partial sums cascade downwards through the columns.

### Hybrid CPU-FPGA Offloading
Due to AXI DMA limitations (14-bit max transfer length), the C software automatically chunks large matrices into "Ribbons" (e.g. `256 x 8`) and streams them vertically.
- Layer 1: CPU streams Inputs and W1 into the array. Hardware computes `Hidden`.
- Layer 2: CPU applies ReLU activation to `Hidden` natively.
- Layer 3: CPU streams `Hidden` and W2 into the array. Hardware computes `Scores`.
- Output: CPU runs ArgMax and classifies the digit.

## Getting Started

1. **Hardware Setup**: Open Vivado and point your IP Catalog to the `/ip_repo` directory to add the `SystolicArray_IP` to your block design. Connect it to three AXI DMA engines and a Zynq PS block.
2. **Software Setup**: Open the Vitis Workspace, import the `mnist.c` code, and build the baremetal application.
3. **Execution**: Connect your ZedBoard via UART and run the application to see the inference results printed to the console!
