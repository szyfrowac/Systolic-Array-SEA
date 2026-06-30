# recreate_gui.tcl
puts "Creating fresh GUI project..."
create_project gui_proj ./gui_proj -part xc7z020clg400-1 -force

puts "Adding IP to GUI Project Catalog..."
set_property ip_repo_paths ./SystolicArray_IP [current_project]
update_ip_catalog

puts "Creating empty Block Design..."
create_bd_design "system"

puts "Saving and closing..."
save_bd_design
close_project

puts "Fresh project and empty block diagram created successfully!"
