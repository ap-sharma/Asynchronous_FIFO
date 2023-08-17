# ####################################################################

#  Created by Genus(TM) Synthesis Solution 21.10-p002_1 on Thu Aug 17 19:03:51 IST 2023

# ####################################################################

set sdc_version 2.0

set_units -capacitance 1000fF
set_units -time 1000ps

# Set the current design
current_design async_fifo

create_clock -name "rclk" -period 6.0 -waveform {0.0 3.0} [get_ports rclk]
create_clock -name "wclk" -period 8.0 -waveform {0.0 4.0} [get_ports wclk]
set_clock_groups -name "clock_groups_rclk_to_wclk" -asynchronous -group [get_clocks rclk] -group [get_clocks wclk]
set_clock_gating_check -setup 0.0 
set_wire_load_mode "enclosed"
set_clock_uncertainty -from [get_clocks wclk] -to [get_clocks rclk] -setup 0.1
set_clock_uncertainty -from [get_clocks rclk] -to [get_clocks rclk] -setup 0.1
set_clock_uncertainty -from [get_clocks wclk] -to [get_clocks wclk] -setup 0.1
set_clock_uncertainty -from [get_clocks rclk] -to [get_clocks wclk] -setup 0.1
set_clock_uncertainty -from [get_clocks wclk] -to [get_clocks rclk] -hold 0.1
set_clock_uncertainty -from [get_clocks rclk] -to [get_clocks rclk] -hold 0.06
set_clock_uncertainty -from [get_clocks wclk] -to [get_clocks wclk] -hold 0.06
set_clock_uncertainty -from [get_clocks rclk] -to [get_clocks wclk] -hold 0.1
