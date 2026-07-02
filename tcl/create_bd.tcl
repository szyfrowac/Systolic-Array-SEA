# create_bd.tcl
set part "xc7z020clg484-1"
create_project -force bd_proj ./vivado_projects/bd_proj -part $part
set_property board_part digilentinc.com:zedboard:part0:1.1 [current_project]

# Add our IP repository
set_property ip_repo_paths ./ip_repo/SystolicArray_IP [current_project]
update_ip_catalog

# Create Block Design
create_bd_design "system"

# Add Zynq PS
create_bd_cell -type ip -vlnv xilinx.com:ip:processing_system7:5.5 processing_system7_0
apply_bd_automation -rule xilinx.com:bd_rule:processing_system7 -config {make_external "FIXED_IO, DDR" apply_board_preset "1" Master "Disable" Slave "Disable" }  [get_bd_cells processing_system7_0]

# Enable exactly one HP port (HP0) to serve all DMAs
set_property -dict [list CONFIG.PCW_USE_S_AXI_HP0 {1}] [get_bd_cells processing_system7_0]

# Add 3 DMAs
create_bd_cell -type ip -vlnv xilinx.com:ip:axi_dma:7.1 axi_dma_B
set_property -dict [list CONFIG.c_include_sg {0} CONFIG.c_sg_include_stscntrl_strm {0} CONFIG.c_include_s2mm {0} CONFIG.c_m_axis_mm2s_tdata_width {256} CONFIG.c_m_axi_mm2s_data_width {256}] [get_bd_cells axi_dma_B]

create_bd_cell -type ip -vlnv xilinx.com:ip:axi_dma:7.1 axi_dma_A
set_property -dict [list CONFIG.c_include_sg {0} CONFIG.c_sg_include_stscntrl_strm {0} CONFIG.c_include_s2mm {0} CONFIG.c_m_axis_mm2s_tdata_width {256} CONFIG.c_m_axi_mm2s_data_width {256}] [get_bd_cells axi_dma_A]

create_bd_cell -type ip -vlnv xilinx.com:ip:axi_dma:7.1 axi_dma_D_C
set_property -dict [list CONFIG.c_include_sg {0} CONFIG.c_sg_include_stscntrl_strm {0} CONFIG.c_m_axis_mm2s_tdata_width {256} CONFIG.c_s_axis_s2mm_tdata_width {256} CONFIG.c_m_axi_mm2s_data_width {256} CONFIG.c_m_axi_s2mm_data_width {256}] [get_bd_cells axi_dma_D_C]

# Add our custom IP
create_bd_cell -type ip -vlnv phanikar:user:axi_systolic_wrapper:1.0 systolic_array_0

# Connect AXI-Stream Interfaces
connect_bd_intf_net [get_bd_intf_pins axi_dma_B/M_AXIS_MM2S] [get_bd_intf_pins systolic_array_0/s_axis_b]
connect_bd_intf_net [get_bd_intf_pins axi_dma_A/M_AXIS_MM2S] [get_bd_intf_pins systolic_array_0/s_axis_a]
connect_bd_intf_net [get_bd_intf_pins axi_dma_D_C/M_AXIS_MM2S] [get_bd_intf_pins systolic_array_0/s_axis_d]
connect_bd_intf_net [get_bd_intf_pins systolic_array_0/m_axis_c] [get_bd_intf_pins axi_dma_D_C/S_AXIS_S2MM]

# Run Connection Automation for AXI-Lite (Control registers)
apply_bd_automation -rule xilinx.com:bd_rule:axi4 -config { Master "/processing_system7_0/M_AXI_GP0" Clk_master {Auto} Clk_slave {Auto} Clk_xbar {Auto} Slave "/axi_dma_B/S_AXI_LITE" ddr_seg {Auto} intc_ip {New AXI Interconnect} master_apm {0}}  [get_bd_intf_pins axi_dma_B/S_AXI_LITE]
apply_bd_automation -rule xilinx.com:bd_rule:axi4 -config { Master "/processing_system7_0/M_AXI_GP0" Clk_master {Auto} Clk_slave {Auto} Clk_xbar {Auto} Slave "/axi_dma_A/S_AXI_LITE" ddr_seg {Auto} intc_ip {New AXI Interconnect} master_apm {0}}  [get_bd_intf_pins axi_dma_A/S_AXI_LITE]
apply_bd_automation -rule xilinx.com:bd_rule:axi4 -config { Master "/processing_system7_0/M_AXI_GP0" Clk_master {Auto} Clk_slave {Auto} Clk_xbar {Auto} Slave "/axi_dma_D_C/S_AXI_LITE" ddr_seg {Auto} intc_ip {New AXI Interconnect} master_apm {0}}  [get_bd_intf_pins axi_dma_D_C/S_AXI_LITE]

# Manually create AXI SmartConnect for the 256-bit to 64-bit Memory Map connections
create_bd_cell -type ip -vlnv xilinx.com:ip:smartconnect:1.0 smartconnect_0
set_property -dict [list CONFIG.NUM_SI {4} CONFIG.NUM_MI {1}] [get_bd_cells smartconnect_0]

connect_bd_intf_net [get_bd_intf_pins axi_dma_B/M_AXI_MM2S] [get_bd_intf_pins smartconnect_0/S00_AXI]
connect_bd_intf_net [get_bd_intf_pins axi_dma_A/M_AXI_MM2S] [get_bd_intf_pins smartconnect_0/S01_AXI]
connect_bd_intf_net [get_bd_intf_pins axi_dma_D_C/M_AXI_MM2S] [get_bd_intf_pins smartconnect_0/S02_AXI]
connect_bd_intf_net [get_bd_intf_pins axi_dma_D_C/M_AXI_S2MM] [get_bd_intf_pins smartconnect_0/S03_AXI]
connect_bd_intf_net [get_bd_intf_pins smartconnect_0/M00_AXI] [get_bd_intf_pins processing_system7_0/S_AXI_HP0]

# Manually create a Processor System Reset block
create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 proc_sys_reset_0
connect_bd_net [get_bd_pins processing_system7_0/FCLK_CLK0] [get_bd_pins proc_sys_reset_0/slowest_sync_clk]
connect_bd_net [get_bd_pins processing_system7_0/FCLK_RESET0_N] [get_bd_pins proc_sys_reset_0/ext_reset_in]

# Connect Clocks and Resets for SmartConnect and Systolic Array
connect_bd_net [get_bd_pins processing_system7_0/FCLK_CLK0] [get_bd_pins systolic_array_0/aclk]
connect_bd_net [get_bd_pins proc_sys_reset_0/peripheral_aresetn] [get_bd_pins systolic_array_0/aresetn]
connect_bd_net [get_bd_pins processing_system7_0/FCLK_CLK0] [get_bd_pins smartconnect_0/aclk]
connect_bd_net [get_bd_pins proc_sys_reset_0/peripheral_aresetn] [get_bd_pins smartconnect_0/aresetn]

# Connect Clocks for DMAs and HP0 port
connect_bd_net [get_bd_pins processing_system7_0/FCLK_CLK0] [get_bd_pins processing_system7_0/S_AXI_HP0_ACLK]
connect_bd_net [get_bd_pins processing_system7_0/FCLK_CLK0] [get_bd_pins axi_dma_B/m_axi_mm2s_aclk]
connect_bd_net [get_bd_pins processing_system7_0/FCLK_CLK0] [get_bd_pins axi_dma_A/m_axi_mm2s_aclk]
connect_bd_net [get_bd_pins processing_system7_0/FCLK_CLK0] [get_bd_pins axi_dma_D_C/m_axi_mm2s_aclk]
connect_bd_net [get_bd_pins processing_system7_0/FCLK_CLK0] [get_bd_pins axi_dma_D_C/m_axi_s2mm_aclk]

# Add Concat block for DMA Interrupts and connect to PS
create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 xlconcat_0
set_property -dict [list CONFIG.NUM_PORTS {4}] [get_bd_cells xlconcat_0]
set_property -dict [list CONFIG.PCW_USE_FABRIC_INTERRUPTS {1} CONFIG.PCW_IRQ_F2P_INTR {1}] [get_bd_cells processing_system7_0]

connect_bd_net [get_bd_pins axi_dma_B/mm2s_introut] [get_bd_pins xlconcat_0/In0]
connect_bd_net [get_bd_pins axi_dma_A/mm2s_introut] [get_bd_pins xlconcat_0/In1]
connect_bd_net [get_bd_pins axi_dma_D_C/mm2s_introut] [get_bd_pins xlconcat_0/In2]
connect_bd_net [get_bd_pins axi_dma_D_C/s2mm_introut] [get_bd_pins xlconcat_0/In3]
connect_bd_net [get_bd_pins xlconcat_0/dout] [get_bd_pins processing_system7_0/IRQ_F2P]

# Auto-assign all addresses
assign_bd_address

regenerate_bd_layout
validate_bd_design
save_bd_design

# Generate Wrapper
make_wrapper -files [get_files ./vivado_projects/bd_proj/bd_proj.srcs/sources_1/bd/system/system.bd] -top
add_files -norecurse ./vivado_projects/bd_proj/bd_proj.srcs/sources_1/bd/system/hdl/system_wrapper.v
set_property top system_wrapper [current_fileset]
update_compile_order -fileset sources_1

puts "Block Design Creation Complete!"
