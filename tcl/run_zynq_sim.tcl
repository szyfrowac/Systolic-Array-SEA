open_project gui_proj/gui_proj.xpr
# Check if the file is already added to avoid errors
set file_exists [get_files -quiet zynq_vip_tb.sv]
if {$file_exists == ""} {
    add_files -fileset sim_1 -norecurse hdl/src/tb/zynq_vip_tb.sv
}
set_property top zynq_vip_tb [get_filesets sim_1]
set_property top_lib xil_defaultlib [get_filesets sim_1]
update_compile_order -fileset sim_1

launch_simulation
run all
