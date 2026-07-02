open_project gui_proj/gui_proj.xpr
update_ip_catalog -rebuild

set current_bd [get_files system.bd]
open_bd_design $current_bd

puts "--- UPGRADING IPs ---"
set ips_to_upgrade [get_ips -all -filter {UPGRADE_VERSIONS != ""}]
if {$ips_to_upgrade != ""} {
    upgrade_ip $ips_to_upgrade
}

puts "--- GETTING SYSTOLIC INSTANCE ---"
set sa_inst [get_bd_cells -hierarchical -filter {VLNV=~"*systolic_wrapper*"}]
puts "Found Instance: $sa_inst"

puts "--- UPGRADING AGAIN JUST IN CASE ---"
upgrade_ip [get_ips -all *]

puts "--- CHECKING INTERRUPTS ---"
set xlconcat_inst [get_bd_cells -hierarchical -filter {VLNV=~"*xlconcat*"}]
if {$xlconcat_inst == ""} {
    puts "WARNING: xlconcat not found. Interrupts are likely NOT wired up!"
} else {
    puts "Found xlconcat for interrupts: $xlconcat_inst"
}

puts "--- SAVING ---"
validate_bd_design
save_bd_design
close_project
