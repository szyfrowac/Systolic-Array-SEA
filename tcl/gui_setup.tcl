# scripts/gui_setup.tcl
puts "Creating GUI project..."
create_project gui_proj ./gui_proj -part xc7z020clg400-1 -force

puts "Packaging Custom Systolic Array IP..."
create_project -force ip_pack_proj ./ip_pack_proj -part xc7z020clg400-1
add_files -norecurse {./hdl/src/Systolic_Array.sv ./hdl/src/axi_systolic_wrapper.sv}
set_property top axi_systolic_wrapper [current_fileset]
update_compile_order -fileset sources_1

ipx::package_project -root_dir ./ip_repo/SystolicArray_IP -vendor phanikar -library user -taxonomy /UserIP -import_files -set_current false
ipx::unload_core ./ip_repo/SystolicArray_IP/component.xml
ipx::edit_ip_in_project -upgrade true -name tmp_edit_project -directory ./ip_repo/SystolicArray_IP ./ip_repo/SystolicArray_IP/component.xml
update_compile_order -fileset sources_1

set_property core_revision 1 [ipx::current_core]
ipx::update_source_project_archive -component [ipx::current_core]
ipx::create_xgui_files [ipx::current_core]
ipx::update_checksums [ipx::current_core]
ipx::check_integrity [ipx::current_core]
ipx::save_core [ipx::current_core]
ipx::move_temp_component_back -component [ipx::current_core]
close_project -delete

puts "Adding IP to GUI Project Catalog..."
set_property ip_repo_paths ./ip_repo/SystolicArray_IP [current_project]
update_ip_catalog
close_project

puts "GUI Project Initialization Complete!"
