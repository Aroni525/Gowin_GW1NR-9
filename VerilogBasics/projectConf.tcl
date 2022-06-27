add_file -type verilog "/home/sdev/Workspace/GowinEDA/TangNano-9K-example-main/led/src/LED.v"
add_file -type cst "/home/sdev/Workspace/GowinEDA/TangNano-9K-example-main/led/src/9K_LED_project.cst"
set_device GW1NR-LV9QN88PC6/I5 -name GW1NR-9C
set_option -synthesis_tool gowinsynthesis
run all
