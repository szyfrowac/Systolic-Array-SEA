#!/bin/bash
set -e
# Compile SV/V files
xvlog -sv tb.sv \
    ../src/Systolic_Array.sv \
    ../src/pipelined/WSPE.v \
    ../src/samesignedAdder/samesignedFPadderfrontend.v \
    ../src/fullAdder/FPadder.v \
    ../src/FPMul.v \
    ../src/roundingunit.v

# Elaborate
xelab -debug typical -top tb_SystolicArray -snapshot tb_snap

# Run simulation
xsim tb_snap -R
