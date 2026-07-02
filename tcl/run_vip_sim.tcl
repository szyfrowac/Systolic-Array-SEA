# run_vip_sim.tcl
open_project ./vivado_projects/vip_sim_proj/vip_sim_proj.xpr

# Add the VIP testbench
add_files -fileset sim_1 -norecurse hdl/src/tb/axi_vip_tb.sv
set_property top axi_vip_tb [get_filesets sim_1]
update_compile_order -fileset sim_1
update_ip_catalog -rebuild
open_bd_design {vivado_projects/vip_sim_proj/vip_sim_proj.srcs/sources_1/bd/vip_bd/vip_bd.bd}
upgrade_ip [get_ips *]
generate_target all [get_files vivado_projects/vip_sim_proj/vip_sim_proj.srcs/sources_1/bd/vip_bd/vip_bd.bd]

# Launch Simulation
launch_simulation
run 30us
exit
