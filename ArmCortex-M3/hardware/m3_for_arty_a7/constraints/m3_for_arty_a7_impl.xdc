# -----------------------------------------------------------------------------
#  The confidential and proprietary information contained in this file may
#  only be used by a person authorised under and to the extent permitted
#  by a subsisting licensing agreement from ARM limited.
#
#             (C) COPYRIGHT 2018 ARM limited.
#                 ALL RIGHTS RESERVED
#
#  This entire notice must be reproduced on all copies of this file
#  and copies of this file may only be made by a person if such person is
#  permitted to do so under the terms of a subsisting license agreement
#  from ARM limited.
#
#       SVN Information
#
#       Checked In          : $Date$
#
#       Revision            : $Revision$
#
#       Release Information : Cortex-M3 DesignStart-r0p1-00rel0
#
# -----------------------------------------------------------------------------
#  Project : Cortex-M3 Arty A7 Example design with V2C-DAPLink adaptor board
#
#  Purpose : Constraints for M3 on Arty A7 board - Implementation phase only
#
# -----------------------------------------------------------------------------

# --------------------------------------------------
# JTAG ports
# --------------------------------------------------

# JTAG connected to PMOD connector JC (nearest to device)
# Pin-out is detailed below
# JC1_P.  JC[1]
set_property PACKAGE_PIN R14 [get_ports TDO[0]]
# JC1_N.  JC[2]
set_property PACKAGE_PIN T14 [get_ports TDI]
# JC2_P.  JC[3]
set_property PACKAGE_PIN R16 [get_ports nTRST]
# Note TCK is shared with SWCLK.  Therefore to drive JTAG, besides the pins above
# the user must also connect to shield pin IO41 = connector IOH pin 16.

# --------------------------------------------------
# UART
# Although the UART is defined as a board interface
# and the DAPLink port is the correct type
# Vivado will not recognise the connection
# So need to specify the actual UART pads and IO standards
# --------------------------------------------------
#  <pin index="94" name ="usb_uart_rxd" iostandard="LVCMOS33" loc="A9"/>
#  <pin index="95" name ="usb_uart_txd" iostandard="LVCMOS33" loc="D10"/>

set_property PACKAGE_PIN V12 [get_ports usb_uart_rxd]
set_property PACKAGE_PIN R12 [get_ports usb_uart_txd]


# --------------------------------------------------
# Define pins on Shield [41:26]
# Used for DAPLink adaptor board
# --------------------------------------------------

# From Digilent board file, part0_pins.xml
#  <pin index="74" name ="shield_dp26_dp41_tri_i_0" iostandard="LVCMOS33" loc="U11"/>
#  <pin index="75" name ="shield_dp26_dp41_tri_i_1" iostandard="LVCMOS33" loc="V16"/>
#  <pin index="76" name ="shield_dp26_dp41_tri_i_2" iostandard="LVCMOS33" loc="M13"/>
#  <pin index="77" name ="shield_dp26_dp41_tri_i_3" iostandard="LVCMOS33" loc="R10"/>
#  <pin index="78" name ="shield_dp26_dp41_tri_i_4" iostandard="LVCMOS33" loc="R11"/>
#  <pin index="79" name ="shield_dp26_dp41_tri_i_5" iostandard="LVCMOS33" loc="R13"/>
#  <pin index="80" name ="shield_dp26_dp41_tri_i_6" iostandard="LVCMOS33" loc="R15"/>
#  <pin index="81" name ="shield_dp26_dp41_tri_i_7" iostandard="LVCMOS33" loc="P15"/>
#  <pin index="82" name ="shield_dp26_dp41_tri_i_8" iostandard="LVCMOS33" loc="R16"/>
#  <pin index="83" name ="shield_dp26_dp41_tri_i_9" iostandard="LVCMOS33" loc="N16"/>
#  <pin index="84" name ="shield_dp26_dp41_tri_i_10" iostandard="LVCMOS33" loc="N14"/>
#  <pin index="85" name ="shield_dp26_dp41_tri_i_11" iostandard="LVCMOS33" loc="U17"/>
#  <pin index="86" name ="shield_dp26_dp41_tri_i_12" iostandard="LVCMOS33" loc="T18"/>
#  <pin index="87" name ="shield_dp26_dp41_tri_i_13" iostandard="LVCMOS33" loc="R18"/>
#  <pin index="88" name ="shield_dp26_dp41_tri_i_14" iostandard="LVCMOS33" loc="P18"/>
#  <pin index="89" name ="shield_dp26_dp41_tri_i_15" iostandard="LVCMOS33" loc="N17"/>

set_property PACKAGE_PIN U11 [get_ports {DAPLink_tri_o[0]}]
set_property PACKAGE_PIN T11 [get_ports {DAPLink_tri_o[1]}]
set_property PACKAGE_PIN R11 [get_ports {DAPLink_tri_o[2]}]
set_property PACKAGE_PIN T13 [get_ports {DAPLink_tri_o[3]}]
set_property PACKAGE_PIN T12 [get_ports {DAPLink_tri_o[4]}]
set_property PACKAGE_PIN V13 [get_ports {DAPLink_tri_o[5]}]
set_property PACKAGE_PIN U12 [get_ports {DAPLink_tri_o[6]}]
set_property PACKAGE_PIN V15 [get_ports {DAPLink_tri_o[7]}]
set_property PACKAGE_PIN V14 [get_ports {DAPLink_tri_o[8]}]
set_property PACKAGE_PIN R13 [get_ports {DAPLink_tri_o[9]}]
set_property PACKAGE_PIN P13 [get_ports {DAPLink_tri_o[10]}]
set_property PACKAGE_PIN U16 [get_ports {DAPLink_tri_o[11]}]
set_property PACKAGE_PIN U18 [get_ports {DAPLink_tri_o[12]}]
set_property PACKAGE_PIN U17 [get_ports {DAPLink_tri_o[13]}]
set_property PACKAGE_PIN V16 [get_ports {DAPLink_tri_o[14]}]
set_property PACKAGE_PIN U15 [get_ports {DAPLink_tri_o[15]}]


# Shield pin 41, (DAPLink[15]), is used for CS_CLK, (Serial Wire clock)
# As this is not a dedicated clock input pin, Vivado needs to set to allow use of this input as a clock
set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets {DAPLink_tri_o_IBUF[15]}]


# --------------------------------------------------
# Place output pin muxes near pins
# --------------------------------------------------
# REVISIT - remove as test for SWD
#create_pblock pblock_out_mux
#resize_pblock pblock_out_mux -add SLICE_X0Y0:SLICE_X1Y49
#add_cells_to_pblock pblock_out_mux [get_cells [list {m1_for_arty_a7_i/daplink_if_0/DAPLink_to_Arty_shield_0/shield_41_to_26[35]_INST_0}]]
#add_cells_to_pblock pblock_out_mux [get_cells [list {m1_for_arty_a7_i/daplink_if_0/DAPLink_to_Arty_shield_0/shield_41_to_26[36]_INST_0}]]
#add_cells_to_pblock pblock_out_mux [get_cells [list {m1_for_arty_a7_i/daplink_if_0/DAPLink_to_Arty_shield_0/shield_41_to_26_IOBUF[30]_inst_*}]]
#add_cells_to_pblock pblock_out_mux [get_cells [list {m1_for_arty_a7_i/daplink_if_0/DAPLink_to_Arty_shield_0/shield_41_to_26_IOBUF[31]_inst_*}]]
#add_cells_to_pblock pblock_out_mux [get_cells [list {m1_for_arty_a7_i/daplink_if_0/DAPLink_to_Arty_shield_0/shield_41_to_26_IOBUF[32]_inst_*}]]
#add_cells_to_pblock pblock_out_mux [get_cells [list {m1_for_arty_a7_i/daplink_if_0/DAPLink_to_Arty_shield_0/shield_41_to_26_IOBUF[33]_inst_*}]]

# Shield pin 41, (DAPLink[15]), is used for CS_CLK, (Serial Wire clock)
# As this is not a dedicated clock input pin, Vivado needs to set to allow use of this input as a clock
set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets {DAPLink_tri_o_IBUF[15]}]

# --------------------------------------------------
# Configuration pins
# --------------------------------------------------
set_property CFGBVS VCCO [current_design]
set_property CONFIG_VOLTAGE 3.3 [current_design]

# --------------------------------------------------
# Tricolour Leds
# --------------------------------------------------
set_property PACKAGE_PIN E14 [get_ports {rgb_led_tri_o[5]}]
set_property PACKAGE_PIN F18 [get_ports {rgb_led_tri_o[4]}]
set_property PACKAGE_PIN E15 [get_ports {rgb_led_tri_o[3]}]
set_property PACKAGE_PIN F15 [get_ports {rgb_led_tri_o[2]}]
set_property PACKAGE_PIN G17 [get_ports {rgb_led_tri_o[1]}]
set_property PACKAGE_PIN J15 [get_ports {rgb_led_tri_o[0]}]

# --------------------------------------------------
# Leds
# --------------------------------------------------
set_property PACKAGE_PIN H15 [get_ports {led_4bits_tri_o[3]}]
set_property PACKAGE_PIN E13 [get_ports {led_4bits_tri_o[2]}]
set_property PACKAGE_PIN F13 [get_ports {led_4bits_tri_o[1]}]
set_property PACKAGE_PIN E18 [get_ports {led_4bits_tri_o[0]}]


# --------------------------------------------------
# Buttons
# --------------------------------------------------
set_property PACKAGE_PIN H13 [get_ports {push_buttons_4bits_tri_i[3]}]
set_property PACKAGE_PIN J16 [get_ports {push_buttons_4bits_tri_i[2]}]
set_property PACKAGE_PIN K16 [get_ports {push_buttons_4bits_tri_i[1]}]
set_property PACKAGE_PIN G15 [get_ports {push_buttons_4bits_tri_i[0]}]


# --------------------------------------------------
# Switches
# --------------------------------------------------
set_property PACKAGE_PIN M5 [get_ports {dip_switches_4bits_tri_i[3]}]
set_property PACKAGE_PIN G18 [get_ports {dip_switches_4bits_tri_i[2]}]
set_property PACKAGE_PIN H18 [get_ports {dip_switches_4bits_tri_i[1]}]
set_property PACKAGE_PIN H14 [get_ports {dip_switches_4bits_tri_i[0]}]

# --------------------------------------------------
# Reset
# --------------------------------------------------
set_property PACKAGE_PIN C18 [get_ports {reset}]
set_property IOSTANDARD LVCMOS33 [get_ports reset]

# --------------------------------------------------
# Sys Clock
# --------------------------------------------------
set_property PACKAGE_PIN R2 [get_ports {sys_clock}]

# --------------------------------------------------
# Spi Flash
# --------------------------------------------------
set_property PACKAGE_PIN M15 [get_ports {qspi_flash_io3_io}]
set_property PACKAGE_PIN L14 [get_ports {qspi_flash_io2_io}]
set_property PACKAGE_PIN K18 [get_ports {qspi_flash_io1_io}]
set_property PACKAGE_PIN K17 [get_ports {qspi_flash_io0_io}]
set_property PACKAGE_PIN M13 [get_ports {qspi_flash_ss_io[0]}]

# --------------------------------------------------
# Pmod
# --------------------------------------------------
#Configuarable Gpio
set_property PACKAGE_PIN N18 [get_ports {esp_gpio_in[3]}]
#Uart or Spi mode Select
set_property PACKAGE_PIN M18 [get_ports {esp_gpio_out[1]}]
#Reset Enable
set_property PACKAGE_PIN M17 [get_ports {esp_gpio_out[0]}]
#Configuarable Gpio
set_property PACKAGE_PIN M16 [get_ports {esp_gpio_in[2]}]
#Uart Clear to Send (CTS)
set_property PACKAGE_PIN N14 [get_ports {esp_gpio_in[1]}]
#Uart Transmit
set_property PACKAGE_PIN L18 [get_ports {esp_tx}]
#Uart Receive
set_property PACKAGE_PIN M14 [get_ports {esp_rx}]
#Uart Request to Send (RTS)
set_property PACKAGE_PIN L17 [get_ports {esp_gpio_in[0]}]

# --------------------------------------------------
# Bitstream generation
# --------------------------------------------------
set_property BITSTREAM.CONFIG.SPI_BUSWIDTH 4 [current_design]




