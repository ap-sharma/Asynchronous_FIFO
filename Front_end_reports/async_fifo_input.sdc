## Generated SDC file "async_fifo.out.sdc"

## Copyright (C) 2018  Intel Corporation. All rights reserved.
## Your use of Intel Corporation's design tools, logic functions 
## and other software and tools, and its AMPP partner logic 
## functions, and any output files from any of the foregoing 
## (including device programming or simulation files), and any 
## associated documentation or information are expressly subject 
## to the terms and conditions of the Intel Program License 
## Subscription Agreement, the Intel Quartus Prime License Agreement,
## the Intel FPGA IP License Agreement, or other applicable license
## agreement, including, without limitation, that your use is for
## the sole purpose of programming logic devices manufactured by
## Intel and sold by Intel or its authorized distributors.  Please
## refer to the applicable agreement for further details.


## VENDOR  "Altera"
## PROGRAM "Quartus Prime"
## VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

## DATE    "Thu Aug 17 12:16:43 2023"

##
## DEVICE  "5CGXFC7C7F23C8"
##


#**************************************************************
# Time Information
#**************************************************************



#**************************************************************
# Create Clock
#**************************************************************

create_clock -name {rclk} -period 6.000 -waveform { 0.000 3.000 } [get_ports {rclk}]
create_clock -name {wclk} -period 8.000 -waveform { 0.000 4.000 } [get_ports {wclk}]


#**************************************************************
# Create Generated Clock
#**************************************************************



#**************************************************************
# Set Clock Latency
#**************************************************************



#**************************************************************
# Set Clock Uncertainty
#**************************************************************

set_clock_uncertainty -rise_from [get_clocks {wclk}] -rise_to [get_clocks {wclk}] -setup 0.100  
set_clock_uncertainty -rise_from [get_clocks {wclk}] -rise_to [get_clocks {wclk}] -hold 0.060  
set_clock_uncertainty -rise_from [get_clocks {wclk}] -fall_to [get_clocks {wclk}] -setup 0.100  
set_clock_uncertainty -rise_from [get_clocks {wclk}] -fall_to [get_clocks {wclk}] -hold 0.060  
set_clock_uncertainty -rise_from [get_clocks {wclk}] -rise_to [get_clocks {rclk}]  0.100  
set_clock_uncertainty -rise_from [get_clocks {wclk}] -fall_to [get_clocks {rclk}]  0.100  
set_clock_uncertainty -fall_from [get_clocks {wclk}] -rise_to [get_clocks {wclk}] -setup 0.100  
set_clock_uncertainty -fall_from [get_clocks {wclk}] -rise_to [get_clocks {wclk}] -hold 0.060  
set_clock_uncertainty -fall_from [get_clocks {wclk}] -fall_to [get_clocks {wclk}] -setup 0.100  
set_clock_uncertainty -fall_from [get_clocks {wclk}] -fall_to [get_clocks {wclk}] -hold 0.060  
set_clock_uncertainty -fall_from [get_clocks {wclk}] -rise_to [get_clocks {rclk}]  0.100  
set_clock_uncertainty -fall_from [get_clocks {wclk}] -fall_to [get_clocks {rclk}]  0.100  
set_clock_uncertainty -rise_from [get_clocks {rclk}] -rise_to [get_clocks {wclk}]  0.100  
set_clock_uncertainty -rise_from [get_clocks {rclk}] -fall_to [get_clocks {wclk}]  0.100  
set_clock_uncertainty -rise_from [get_clocks {rclk}] -rise_to [get_clocks {rclk}] -setup 0.100  
set_clock_uncertainty -rise_from [get_clocks {rclk}] -rise_to [get_clocks {rclk}] -hold 0.060  
set_clock_uncertainty -rise_from [get_clocks {rclk}] -fall_to [get_clocks {rclk}] -setup 0.100  
set_clock_uncertainty -rise_from [get_clocks {rclk}] -fall_to [get_clocks {rclk}] -hold 0.060  
set_clock_uncertainty -fall_from [get_clocks {rclk}] -rise_to [get_clocks {wclk}]  0.100  
set_clock_uncertainty -fall_from [get_clocks {rclk}] -fall_to [get_clocks {wclk}]  0.100  
set_clock_uncertainty -fall_from [get_clocks {rclk}] -rise_to [get_clocks {rclk}] -setup 0.100  
set_clock_uncertainty -fall_from [get_clocks {rclk}] -rise_to [get_clocks {rclk}] -hold 0.060  
set_clock_uncertainty -fall_from [get_clocks {rclk}] -fall_to [get_clocks {rclk}] -setup 0.100  
set_clock_uncertainty -fall_from [get_clocks {rclk}] -fall_to [get_clocks {rclk}] -hold 0.060  


#**************************************************************
# Set Input Delay
#**************************************************************



#**************************************************************
# Set Output Delay
#**************************************************************



#**************************************************************
# Set Clock Groups
#**************************************************************

set_clock_groups -asynchronous -group [get_clocks {rclk}] -group [get_clocks {wclk}]

#**************************************************************
# Set False Path
#**************************************************************



#**************************************************************
# Set Multicycle Path
#**************************************************************



#**************************************************************
# Set Maximum Delay
#**************************************************************



#**************************************************************
# Set Minimum Delay
#**************************************************************



#**************************************************************
# Set Input Transition
#**************************************************************

