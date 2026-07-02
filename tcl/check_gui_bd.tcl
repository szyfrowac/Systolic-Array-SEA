open_project gui_proj/gui_proj.xpr
open_bd_design [get_files system.bd]

puts "--- CHECKING IP VERSIONS ---"
report_ip_status

puts "--- CHECKING SYSTOLIC ARRAY INSTANCE ---"
set sa_inst [get_bd_cells -hierarchical -filter {VLNV=~"*systolic_array*"}]
if {$sa_inst == ""} {
    puts "ERROR: No systolic array instance found!"
} else {
    puts "Found Systolic Array: $sa_inst"
}

puts "--- CHECKING AXI STREAM CONNECTIONS ---"
set stream_nets [get_bd_intf_nets -of_objects [get_bd_intf_pins -of_objects $sa_inst]]
foreach net $stream_nets {
    set intfs [get_bd_intf_pins -of_objects $net]
    puts "Stream Net: $net"
    foreach intf $intfs {
        puts "  Connected to: $intf"
    }
}

puts "--- CHECKING CLOCKS ---"
set clk_net [get_bd_nets -of_objects [get_bd_pins $sa_inst/aclk]]
puts "Clock Net for Systolic Array: $clk_net"
set clk_src [get_bd_pins -of_objects $clk_net -filter {DIR == O}]
puts "Clock Source: $clk_src"
set clk_freq [get_property CONFIG.FREQ_HZ $clk_src]
puts "Clock Frequency: [expr $clk_freq / 1000000.0] MHz"

puts "--- CHECKING INTERRUPTS ---"
set dma_insts [get_bd_cells -hierarchical -filter {VLNV=~"*axi_dma*"}]
foreach dma $dma_insts {
    set irq_pins [get_bd_pins -of_objects $dma -filter {NAME=~"*introut*"}]
    foreach irq $irq_pins {
        set irq_net [get_bd_nets -of_objects $irq]
        if {$irq_net == ""} {
            puts "WARNING: DMA Interrupt $irq is UNCONNECTED!"
        } else {
            puts "DMA Interrupt $irq is connected via net $irq_net"
        }
    }
}
