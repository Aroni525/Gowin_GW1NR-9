//Copyright (C)2014-2022 GOWIN Semiconductor Corporation.
//All rights reserved.
//File Title: Timing Constraints file
//GOWIN Version: 1.9.8.05 
//Created Time: 2022-09-10 20:11:02
create_clock -name crystal_clk -period 37 -waveform {0 18} [get_ports {sys_clk}]
