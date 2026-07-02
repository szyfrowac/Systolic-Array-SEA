# build_bitstream.tcl
open_project ./vivado_projects/bd_proj/bd_proj.xpr
reset_run synth_1
launch_runs impl_1 -to_step write_bitstream -jobs 4
wait_on_run impl_1
write_hw_platform -fixed -include_bit -force -file ./system_wrapper.xsa
puts "Bitstream and XSA generation complete!"
