# create_vip_sim.tcl
set part "xc7z020clg484-1"
create_project -force vip_sim_proj ./vivado_projects/vip_sim_proj -part $part
set_property board_part digilentinc.com:zedboard:part0:1.1 [current_project]
set_property ip_repo_paths ./ip_repo/SystolicArray_IP [current_project]
update_ip_catalog

create_bd_design "vip_bd"

# Add custom IP
create_bd_cell -type ip -vlnv phanikar:user:axi_systolic_wrapper:1.0 systolic_array_0

# Add VIPs (3 Masters for A, B, D and 1 Slave for C)
create_bd_cell -type ip -vlnv xilinx.com:ip:axi4stream_vip:1.1 vip_a
set_property -dict [list CONFIG.INTERFACE_MODE {MASTER} CONFIG.TDATA_NUM_BYTES {32}] [get_bd_cells vip_a]

create_bd_cell -type ip -vlnv xilinx.com:ip:axi4stream_vip:1.1 vip_b
set_property -dict [list CONFIG.INTERFACE_MODE {MASTER} CONFIG.TDATA_NUM_BYTES {32}] [get_bd_cells vip_b]

create_bd_cell -type ip -vlnv xilinx.com:ip:axi4stream_vip:1.1 vip_d
set_property -dict [list CONFIG.INTERFACE_MODE {MASTER} CONFIG.TDATA_NUM_BYTES {32}] [get_bd_cells vip_d]

create_bd_cell -type ip -vlnv xilinx.com:ip:axi4stream_vip:1.1 vip_c
set_property -dict [list CONFIG.INTERFACE_MODE {SLAVE} CONFIG.TDATA_NUM_BYTES {32}] [get_bd_cells vip_c]

# Connect Data
connect_bd_intf_net [get_bd_intf_pins vip_b/M_AXIS] [get_bd_intf_pins systolic_array_0/s_axis_b]
connect_bd_intf_net [get_bd_intf_pins vip_a/M_AXIS] [get_bd_intf_pins systolic_array_0/s_axis_a]
connect_bd_intf_net [get_bd_intf_pins vip_d/M_AXIS] [get_bd_intf_pins systolic_array_0/s_axis_d]
connect_bd_intf_net [get_bd_intf_pins systolic_array_0/m_axis_c] [get_bd_intf_pins vip_c/S_AXIS]

# Connect Clock and Reset
create_bd_port -dir I -type clk aclk
create_bd_port -dir I -type rst aresetn
set_property CONFIG.ASSOCIATED_RESET {aresetn} [get_bd_ports aclk]
set_property CONFIG.FREQ_HZ {100000000} [get_bd_ports aclk]

connect_bd_net [get_bd_ports aclk] [get_bd_pins systolic_array_0/aclk]
connect_bd_net [get_bd_ports aclk] [get_bd_pins vip_a/aclk]
connect_bd_net [get_bd_ports aclk] [get_bd_pins vip_b/aclk]
connect_bd_net [get_bd_ports aclk] [get_bd_pins vip_d/aclk]
connect_bd_net [get_bd_ports aclk] [get_bd_pins vip_c/aclk]

connect_bd_net [get_bd_ports aresetn] [get_bd_pins systolic_array_0/aresetn]
connect_bd_net [get_bd_ports aresetn] [get_bd_pins vip_a/aresetn]
connect_bd_net [get_bd_ports aresetn] [get_bd_pins vip_b/aresetn]
connect_bd_net [get_bd_ports aresetn] [get_bd_pins vip_d/aresetn]
connect_bd_net [get_bd_ports aresetn] [get_bd_pins vip_c/aresetn]

validate_bd_design
save_bd_design

make_wrapper -files [get_files ./vivado_projects/vip_sim_proj/vip_sim_proj.srcs/sources_1/bd/vip_bd/vip_bd.bd] -top
add_files -norecurse ./vivado_projects/vip_sim_proj/vip_sim_proj.gen/sources_1/bd/vip_bd/hdl/vip_bd_wrapper.v
set_property top vip_bd_wrapper [current_fileset]
update_compile_order -fileset sources_1
puts "VIP Block Design Complete!"
