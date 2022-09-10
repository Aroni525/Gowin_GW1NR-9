add_file -type verilog "/home/sdev/Workspace/GowinEDA/Gowin_GW1NR-9/VerilogBasics/src/Top.v"
add_file -type cst "/home/sdev/Workspace/GowinEDA/Gowin_GW1NR-9/VerilogBasics/src/HwSetup.cst"
add_file -type sdc "/home/sdev/Workspace/GowinEDA/Gowin_GW1NR-9/VerilogBasics/src/VerilogBasics.sdc"
set_device GW1NR-LV9QN88PC6/I5 -name GW1NR-9C
set_option -synthesis_tool gowinsynthesis
run all
