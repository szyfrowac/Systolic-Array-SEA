set project_name "systolic_array_synth"
set part_num "xc7z020clg484-1"

# Create in-memory project
create_project -in_memory -part $part_num

# Read Source Files
read_verilog -sv [glob -nocomplain ./hdl/src/*.sv]
read_verilog [glob -nocomplain ./hdl/src/*.v]
read_verilog [glob -nocomplain ./hdl/src/fullAdder/*.v]
read_verilog [glob -nocomplain ./hdl/src/samesignedAdder/*.v]

# Read Constraints
read_xdc ./scripts/timing.xdc

# Synthesize
synth_design -top SystolicArray -part $part_num -mode out_of_context

# Optimize
opt_design

# Place
place_design

# Route
route_design

file mkdir build

# Generate Reports
report_utilization -file build/utilization_report.txt
report_timing_summary -file build/timing_report.txt

# Write Post-Implementation Netlist and SDF
write_verilog -force -mode timesim -sdf_anno true build/systolic_array_post_impl.v
write_sdf -force build/systolic_array_post_impl.sdf

puts "Build complete. Reports and netlist generated."
