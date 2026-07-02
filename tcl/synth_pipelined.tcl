# synth_pipelined.tcl
set part "xc7z020clg484-1"
set top "SystolicArray"

# Read common sources
read_verilog -sv hdl/src/Systolic_Array.sv
read_verilog hdl/src/pipelined/FPMul.v
read_verilog hdl/src/roundingunit.v
read_verilog [glob hdl/src/fullAdder/*.v]
read_verilog [glob hdl/src/samesignedAdder/*.v]

# Read pipelined sources
read_verilog hdl/src/pipelined/WSPE.v
read_verilog [glob hdl/src/pipelined/samesignedAdder/*.v]

# Create a constraint file dynamically
set xdc_file pipelined_clock.xdc
set f [open $xdc_file w]
# Target 200 MHz (5.0 ns)
puts $f "create_clock -period 9.09 -name clock \[get_ports clock\]"
close $f

read_xdc $xdc_file

# Synthesize
# Note: Using out_of_context so IO buffers are not automatically inserted 
# for all ports, which can cause routing congestion if the matrix is large.
synth_design -top $top -part $part -mode out_of_context

# Report after synthesis
report_timing_summary -file timing_summary_pipelined_synth.rpt
report_utilization -file utilization_pipelined_synth.rpt
write_checkpoint -force post_synth.dcp
write_verilog -force -mode funcsim post_synth_netlist.v

# Implement
opt_design
place_design
route_design

# Report after implementation
report_timing_summary -file timing_summary_pipelined_routed.rpt
report_utilization -file utilization_pipelined_routed.rpt
write_checkpoint -force post_impl_routed.dcp
write_verilog -force -mode timesim -sdf_anno true post_impl_timesim.v
write_sdf -force post_impl_timesim.sdf

puts "Synthesis and Implementation complete!"
