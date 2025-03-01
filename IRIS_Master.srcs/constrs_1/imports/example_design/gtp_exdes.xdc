set_false_path -to [get_pins [list gtp_exdes_m0/gt0_txfsmresetdone_r2_reg/CLR gtp_exdes_m0/gt0_txfsmresetdone_r_reg/CLR gtp_exdes_m0/gt1_txfsmresetdone_r2_reg/CLR gtp_exdes_m0/gt1_txfsmresetdone_r_reg/CLR gtp_exdes_m0/gt2_txfsmresetdone_r2_reg/CLR gtp_exdes_m0/gt2_txfsmresetdone_r_reg/CLR gtp_exdes_m0/gt3_txfsmresetdone_r2_reg/CLR gtp_exdes_m0/gt3_txfsmresetdone_r_reg/CLR]]
set_false_path -to [get_pins [list gtp_exdes_m0/gt0_txfsmresetdone_r2_reg/D gtp_exdes_m0/gt0_txfsmresetdone_r_reg/D gtp_exdes_m0/gt1_txfsmresetdone_r2_reg/D gtp_exdes_m0/gt1_txfsmresetdone_r_reg/D gtp_exdes_m0/gt2_txfsmresetdone_r2_reg/D gtp_exdes_m0/gt2_txfsmresetdone_r_reg/D gtp_exdes_m0/gt3_txfsmresetdone_r2_reg/D gtp_exdes_m0/gt3_txfsmresetdone_r_reg/D]]
set_false_path -to [get_pins [list gtp_exdes_m0/gt0_txfsmresetdone_r2_reg/CLR gtp_exdes_m0/gt0_txfsmresetdone_r_reg/CLR gtp_exdes_m0/gt1_txfsmresetdone_r2_reg/CLR gtp_exdes_m0/gt1_txfsmresetdone_r_reg/CLR gtp_exdes_m0/gt2_txfsmresetdone_r2_reg/CLR gtp_exdes_m0/gt2_txfsmresetdone_r_reg/CLR gtp_exdes_m0/gt3_txfsmresetdone_r2_reg/CLR gtp_exdes_m0/gt3_txfsmresetdone_r_reg/CLR]]
set_false_path -to [get_pins [list gtp_exdes_m0/gt0_txfsmresetdone_r2_reg/D gtp_exdes_m0/gt0_txfsmresetdone_r_reg/D gtp_exdes_m0/gt1_txfsmresetdone_r2_reg/D gtp_exdes_m0/gt1_txfsmresetdone_r_reg/D gtp_exdes_m0/gt2_txfsmresetdone_r2_reg/D gtp_exdes_m0/gt2_txfsmresetdone_r_reg/D gtp_exdes_m0/gt3_txfsmresetdone_r2_reg/D gtp_exdes_m0/gt3_txfsmresetdone_r_reg/D]]
################################################################################
##   ____  ____
##  /   /\/   /
## /___/  \  /    Vendor: Xilinx
## \   \   \/     Version : 3.6
##  \   \         Application : 7 Series FPGAs Transceivers Wizard
##  /   /         Filename : gtp_exdes.xdc
## /___/   / ## \   \  / ##  \___\/\___ ##
##
## USER CONSTRAINTS FILE FOR MGT WRAPPER EXAMPLE DESIGN
## Generated by Xilinx 7 Series FPGAs Transceivers Wizard
##
## Device:  xc7a100t
## Package: fgg484
##
## (c) Copyright 2010-2012 Xilinx, Inc. All rights reserved.
##
## This file contains confidential and proprietary information
## of Xilinx, Inc. and is protected under U.S. and
## international copyright and other intellectual property
## laws.
##
## DISCLAIMER
## This disclaimer is not a license and does not grant any
## rights to the materials distributed herewith. Except as
## otherwise provided in a valid license issued to you by
## Xilinx, and to the maximum extent permitted by applicable
## law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
## WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
## AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
## BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
## INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
## (2) Xilinx shall not be liable (whether in contract or tort,
## including negligence, or under any other theory of
## liability) for any loss or damage of any kind or nature
## related to, arising under or in connection with these
## materials, including for any direct, or any indirect,
## special, incidental, or consequential loss or damage
## (including loss of data, profits, goodwill, or any type of
## loss or damage suffered as a result of any action brought
## by a third party) even if such damage or loss was
## reasonably foreseeable or Xilinx had been advised of the
## possibility of the same.
##
## CRITICAL APPLICATIONS
## Xilinx products are not designed or intended to be fail-
## safe, or for use in any application requiring fail-safe
## performance, such as life-support or safety devices or
## systems, Class III medical devices, nuclear facilities,
## applications related to the deployment of airbags, or any
## other applications that could lead to death, personal
## injury, or severe property or environmental damage
## (individually and collectively, "Critical
## Applications"). Customer assumes the sole risk and
## liability of any use of Xilinx products in Critical
## Applications, subject only to applicable laws and
## regulations governing limitations on product liability.
##
## THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
## PART OF THIS FILE AT ALL TIMES.


################################## Clock Constraints ##########################


####################### GT reference clock constraints #########################


create_clock -period 8.000 [get_ports Q0_CLK0_GTREFCLK_PAD_P_IN]


# User Clock Constraints


################################# RefClk Location constraints #####################
set_property PACKAGE_PIN F6 [get_ports Q0_CLK0_GTREFCLK_PAD_P_IN]
set_property PACKAGE_PIN E6 [get_ports Q0_CLK0_GTREFCLK_PAD_N_IN]

## LOC constrain for SYS_CLK_P/N
set_property IOSTANDARD DIFF_SSTL15 [get_ports SYS_CLK_IN_P]
set_property IOSTANDARD DIFF_SSTL15 [get_ports SYS_CLK_IN_N]
set_property PACKAGE_PIN R4 [get_ports SYS_CLK_IN_P]
set_property PACKAGE_PIN T4 [get_ports SYS_CLK_IN_N]

set_property IOSTANDARD LVCMOS33 [get_ports {tx_disable[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {tx_disable[0]}]
set_property PACKAGE_PIN C22 [get_ports {tx_disable[0]}]
set_property PACKAGE_PIN C20 [get_ports {tx_disable[1]}]


############################## mgt wrapper constraints #####################

##---------- Set placement for gt0_gtp_wrapper_i/GTPE2_CHANNEL ------
set_property LOC GTPE2_CHANNEL_X0Y4 [get_cells gtp_exdes_m0/gtp_support_i/gtp_init_i/inst/gtp_i/gt0_gtp_i/gtpe2_i]
##---------- Set placement for gt1_gtp_wrapper_i/GTPE2_CHANNEL ------
set_property LOC GTPE2_CHANNEL_X0Y5 [get_cells gtp_exdes_m0/gtp_support_i/gtp_init_i/inst/gtp_i/gt1_gtp_i/gtpe2_i]
##---------- Set placement for gt2_gtp_wrapper_i/GTPE2_CHANNEL ------
set_property LOC GTPE2_CHANNEL_X0Y6 [get_cells gtp_exdes_m0/gtp_support_i/gtp_init_i/inst/gtp_i/gt2_gtp_i/gtpe2_i]
##---------- Set placement for gt3_gtp_wrapper_i/GTPE2_CHANNEL ------
set_property LOC GTPE2_CHANNEL_X0Y7 [get_cells gtp_exdes_m0/gtp_support_i/gtp_init_i/inst/gtp_i/gt3_gtp_i/gtpe2_i]

##---------- Set ASYNC_REG for flop which have async input ----------
##set_property ASYNC_REG TRUE [get_cells -hier -filter {name=~*gt0_frame_gen*system_reset_r_reg}]
##set_property ASYNC_REG TRUE [get_cells -hier -filter {name=~*gt0_frame_check*system_reset_r_reg}]
##set_property ASYNC_REG TRUE [get_cells -hier -filter {name=~*gt1_frame_gen*system_reset_r_reg}]
##set_property ASYNC_REG TRUE [get_cells -hier -filter {name=~*gt1_frame_check*system_reset_r_reg}]
##set_property ASYNC_REG TRUE [get_cells -hier -filter {name=~*gt2_frame_gen*system_reset_r_reg}]
##set_property ASYNC_REG TRUE [get_cells -hier -filter {name=~*gt2_frame_check*system_reset_r_reg}]
##set_property ASYNC_REG TRUE [get_cells -hier -filter {name=~*gt3_frame_gen*system_reset_r_reg}]
##set_property ASYNC_REG TRUE [get_cells -hier -filter {name=~*gt3_frame_check*system_reset_r_reg}]

##---------- Set False Path from one clock to other ----------


set_false_path -reset_path -from [get_clocks -of_objects [get_pins sys_clock_m0/inst/mmcm_adv_inst/CLKOUT0]] -to [get_clocks -of_objects [get_pins gtp_exdes_m0/gtp_support_i/gt_usrclk_source/txoutclk_mmcm0_i/mmcm_adv_inst/CLKOUT0]]
set_property C_CLK_INPUT_FREQ_HZ 300000000 [get_debug_cores dbg_hub]
set_property C_ENABLE_CLK_DIVIDER false [get_debug_cores dbg_hub]
set_property C_USER_SCAN_CHAIN 1 [get_debug_cores dbg_hub]
connect_debug_port dbg_hub/clk [get_nets rx_clk]
