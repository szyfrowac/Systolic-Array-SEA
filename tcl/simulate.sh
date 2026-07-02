#!/bin/bash
set -e

if [ -z "$XILINX_VIVADO" ]; then
    echo "Error: XILINX_VIVADO environment variable is not set. Please source Vivado settings64.sh first."
    exit 1
fi

mkdir -p sim_build
cd sim_build

echo "--- Compiling RTL and Post-Implementation Netlists ---"
xvlog -sv ../hdl/sim/tb_SystolicArray.sv
xvlog -sv ../hdl/sim/SystolicArray_post_wrapper.sv
xvlog ../build/systolic_array_post_impl.v
xvlog $XILINX_VIVADO/data/verilog/src/glbl.v

echo "--- Elaborating Design with SDF Annotation ---"
# We include the Xilinx simulation primitives (simprims_ver), secureip, and our glbl module.
# We also annotate the maximum delays from the SDF file onto our 'uut' instance.
xelab -debug typical -L simprims_ver -L secureip -s post_impl_sim tb_SystolicArray glbl -maxdelay -sdfmax /tb_SystolicArray/uut/core=../build/systolic_array_post_impl.sdf

echo "--- Running Simulation ---"
xsim post_impl_sim -R
