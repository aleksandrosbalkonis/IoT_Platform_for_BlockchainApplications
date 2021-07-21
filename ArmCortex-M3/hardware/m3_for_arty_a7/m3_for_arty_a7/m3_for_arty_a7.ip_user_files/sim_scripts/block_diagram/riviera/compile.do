vlib work
vlib riviera

vlib riviera/xpm
vlib riviera/lib_cdc_v1_0_2
vlib riviera/proc_sys_reset_v5_0_13
vlib riviera/xil_defaultlib
vlib riviera/util_vector_logic_v2_0_1
vlib riviera/xlconstant_v1_1_7
vlib riviera/axi_bram_ctrl_v4_1_3
vlib riviera/axi_lite_ipif_v3_0_4
vlib riviera/interrupt_control_v3_1_4
vlib riviera/axi_gpio_v2_0_23
vlib riviera/generic_baseblocks_v2_1_0
vlib riviera/axi_infrastructure_v1_1_0
vlib riviera/axi_register_slice_v2_1_21
vlib riviera/fifo_generator_v13_2_5
vlib riviera/axi_data_fifo_v2_1_20
vlib riviera/axi_crossbar_v2_1_22
vlib riviera/dist_mem_gen_v8_0_13
vlib riviera/lib_pkg_v1_0_2
vlib riviera/lib_srl_fifo_v1_0_2
vlib riviera/lib_fifo_v1_0_14
vlib riviera/axi_quad_spi_v3_2_20
vlib riviera/axi_uartlite_v2_0_25
vlib riviera/blk_mem_gen_v8_4_4
vlib riviera/axi_protocol_converter_v2_1_21
vlib riviera/xlconcat_v2_1_3

vmap xpm riviera/xpm
vmap lib_cdc_v1_0_2 riviera/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_13 riviera/proc_sys_reset_v5_0_13
vmap xil_defaultlib riviera/xil_defaultlib
vmap util_vector_logic_v2_0_1 riviera/util_vector_logic_v2_0_1
vmap xlconstant_v1_1_7 riviera/xlconstant_v1_1_7
vmap axi_bram_ctrl_v4_1_3 riviera/axi_bram_ctrl_v4_1_3
vmap axi_lite_ipif_v3_0_4 riviera/axi_lite_ipif_v3_0_4
vmap interrupt_control_v3_1_4 riviera/interrupt_control_v3_1_4
vmap axi_gpio_v2_0_23 riviera/axi_gpio_v2_0_23
vmap generic_baseblocks_v2_1_0 riviera/generic_baseblocks_v2_1_0
vmap axi_infrastructure_v1_1_0 riviera/axi_infrastructure_v1_1_0
vmap axi_register_slice_v2_1_21 riviera/axi_register_slice_v2_1_21
vmap fifo_generator_v13_2_5 riviera/fifo_generator_v13_2_5
vmap axi_data_fifo_v2_1_20 riviera/axi_data_fifo_v2_1_20
vmap axi_crossbar_v2_1_22 riviera/axi_crossbar_v2_1_22
vmap dist_mem_gen_v8_0_13 riviera/dist_mem_gen_v8_0_13
vmap lib_pkg_v1_0_2 riviera/lib_pkg_v1_0_2
vmap lib_srl_fifo_v1_0_2 riviera/lib_srl_fifo_v1_0_2
vmap lib_fifo_v1_0_14 riviera/lib_fifo_v1_0_14
vmap axi_quad_spi_v3_2_20 riviera/axi_quad_spi_v3_2_20
vmap axi_uartlite_v2_0_25 riviera/axi_uartlite_v2_0_25
vmap blk_mem_gen_v8_4_4 riviera/blk_mem_gen_v8_4_4
vmap axi_protocol_converter_v2_1_21 riviera/axi_protocol_converter_v2_1_21
vmap xlconcat_v2_1_3 riviera/xlconcat_v2_1_3

vlog -work xpm  -sv2k12 "+incdir+../../../../../block_diagram/ipshared/8b3d" "+incdir+../../../../../block_diagram/ipshared/ec67/hdl" "+incdir+../../../../../block_diagram/ipshared/ea75/rtl" \
"D:/RandomShit/Xilinx/VIVADO/Vivado/2020.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"D:/RandomShit/Xilinx/VIVADO/Vivado/2020.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"D:/RandomShit/Xilinx/VIVADO/Vivado/2020.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"D:/RandomShit/Xilinx/VIVADO/Vivado/2020.1/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work lib_cdc_v1_0_2 -93 \
"../../../../../block_diagram/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_13 -93 \
"../../../../../block_diagram/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../../../block_diagram/ip/m3_for_arty_a7_proc_sys_reset_DAPLink_0_1/sim/m3_for_arty_a7_proc_sys_reset_DAPLink_0.vhd" \
"../../../../../block_diagram/ip/m3_for_arty_a7_proc_sys_reset_base_0_1/sim/m3_for_arty_a7_proc_sys_reset_base_0.vhd" \

vlog -work util_vector_logic_v2_0_1  -v2k5 "+incdir+../../../../../block_diagram/ipshared/8b3d" "+incdir+../../../../../block_diagram/ipshared/ec67/hdl" "+incdir+../../../../../block_diagram/ipshared/ea75/rtl" \
"../../../../../block_diagram/ipshared/2137/hdl/util_vector_logic_v2_0_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../../block_diagram/ipshared/8b3d" "+incdir+../../../../../block_diagram/ipshared/ec67/hdl" "+incdir+../../../../../block_diagram/ipshared/ea75/rtl" \
"../../../../../block_diagram/ip/m3_for_arty_a7_i_interconnect_aresetn_0_1/sim/m3_for_arty_a7_i_interconnect_aresetn_0.v" \
"../../../../../block_diagram/ip/m3_for_arty_a7_i_peripheral_aresetn1_0_1/sim/m3_for_arty_a7_i_peripheral_aresetn1_0.v" \
"../../../../../block_diagram/ip/m3_for_arty_a7_i_sysresetn_or_0_1/sim/m3_for_arty_a7_i_sysresetn_or_0.v" \
"../../../../../block_diagram/ip/m3_for_arty_a7_i_inv_dbgresetn_0_1/sim/m3_for_arty_a7_i_inv_dbgresetn_0.v" \
"../../../../../block_diagram/ip/m3_for_arty_a7_i_inv_sysresetn1_0_1/sim/m3_for_arty_a7_i_inv_sysresetn1_0.v" \
"../../../../../block_diagram/ip/m3_for_arty_a7_clk_wiz_0_0_1/m3_for_arty_a7_clk_wiz_0_0_clk_wiz.v" \
"../../../../../block_diagram/ip/m3_for_arty_a7_clk_wiz_0_0_1/m3_for_arty_a7_clk_wiz_0_0.v" \

vlog -work xlconstant_v1_1_7  -v2k5 "+incdir+../../../../../block_diagram/ipshared/8b3d" "+incdir+../../../../../block_diagram/ipshared/ec67/hdl" "+incdir+../../../../../block_diagram/ipshared/ea75/rtl" \
"../../../../../block_diagram/ipshared/fcfc/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../../block_diagram/ipshared/8b3d" "+incdir+../../../../../block_diagram/ipshared/ec67/hdl" "+incdir+../../../../../block_diagram/ipshared/ea75/rtl" \
"../../../../../block_diagram/ip/m3_for_arty_a7_xlconstant_1_0_1/sim/m3_for_arty_a7_xlconstant_1_0.v" \

vcom -work axi_bram_ctrl_v4_1_3 -93 \
"../../../../../block_diagram/ipshared/db86/hdl/axi_bram_ctrl_v4_1_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../../../block_diagram/ip/m3_for_arty_a7_axi_bram_ctrl_0_0_1/sim/m3_for_arty_a7_axi_bram_ctrl_0_0.vhd" \

vcom -work axi_lite_ipif_v3_0_4 -93 \
"../../../../../block_diagram/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work interrupt_control_v3_1_4 -93 \
"../../../../../block_diagram/ipshared/a040/hdl/interrupt_control_v3_1_vh_rfs.vhd" \

vcom -work axi_gpio_v2_0_23 -93 \
"../../../../../block_diagram/ipshared/bb35/hdl/axi_gpio_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../../../block_diagram/ip/m3_for_arty_a7_axi_gpio_0_0_1/sim/m3_for_arty_a7_axi_gpio_0_0.vhd" \
"../../../../../block_diagram/ip/m3_for_arty_a7_axi_gpio_1_0_1/sim/m3_for_arty_a7_axi_gpio_1_0.vhd" \

vlog -work generic_baseblocks_v2_1_0  -v2k5 "+incdir+../../../../../block_diagram/ipshared/8b3d" "+incdir+../../../../../block_diagram/ipshared/ec67/hdl" "+incdir+../../../../../block_diagram/ipshared/ea75/rtl" \
"../../../../../block_diagram/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../../block_diagram/ipshared/8b3d" "+incdir+../../../../../block_diagram/ipshared/ec67/hdl" "+incdir+../../../../../block_diagram/ipshared/ea75/rtl" \
"../../../../../block_diagram/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_21  -v2k5 "+incdir+../../../../../block_diagram/ipshared/8b3d" "+incdir+../../../../../block_diagram/ipshared/ec67/hdl" "+incdir+../../../../../block_diagram/ipshared/ea75/rtl" \
"../../../../../block_diagram/ipshared/2ef9/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_5  -v2k5 "+incdir+../../../../../block_diagram/ipshared/8b3d" "+incdir+../../../../../block_diagram/ipshared/ec67/hdl" "+incdir+../../../../../block_diagram/ipshared/ea75/rtl" \
"../../../../../block_diagram/ipshared/276e/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_5 -93 \
"../../../../../block_diagram/ipshared/276e/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_5  -v2k5 "+incdir+../../../../../block_diagram/ipshared/8b3d" "+incdir+../../../../../block_diagram/ipshared/ec67/hdl" "+incdir+../../../../../block_diagram/ipshared/ea75/rtl" \
"../../../../../block_diagram/ipshared/276e/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_20  -v2k5 "+incdir+../../../../../block_diagram/ipshared/8b3d" "+incdir+../../../../../block_diagram/ipshared/ec67/hdl" "+incdir+../../../../../block_diagram/ipshared/ea75/rtl" \
"../../../../../block_diagram/ipshared/47c9/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_22  -v2k5 "+incdir+../../../../../block_diagram/ipshared/8b3d" "+incdir+../../../../../block_diagram/ipshared/ec67/hdl" "+incdir+../../../../../block_diagram/ipshared/ea75/rtl" \
"../../../../../block_diagram/ipshared/b68e/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../../block_diagram/ipshared/8b3d" "+incdir+../../../../../block_diagram/ipshared/ec67/hdl" "+incdir+../../../../../block_diagram/ipshared/ea75/rtl" \
"../../../../../block_diagram/ip/m3_for_arty_a7_xbar_0_1/sim/m3_for_arty_a7_xbar_0.v" \

vlog -work dist_mem_gen_v8_0_13  -v2k5 "+incdir+../../../../../block_diagram/ipshared/8b3d" "+incdir+../../../../../block_diagram/ipshared/ec67/hdl" "+incdir+../../../../../block_diagram/ipshared/ea75/rtl" \
"../../../../../block_diagram/ipshared/0bf5/simulation/dist_mem_gen_v8_0.v" \

vcom -work lib_pkg_v1_0_2 -93 \
"../../../../../block_diagram/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd" \

vcom -work lib_srl_fifo_v1_0_2 -93 \
"../../../../../block_diagram/ipshared/51ce/hdl/lib_srl_fifo_v1_0_rfs.vhd" \

vcom -work lib_fifo_v1_0_14 -93 \
"../../../../../block_diagram/ipshared/a5cb/hdl/lib_fifo_v1_0_rfs.vhd" \

vcom -work axi_quad_spi_v3_2_20 -93 \
"../../../../../block_diagram/ipshared/1735/hdl/axi_quad_spi_v3_2_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../../../block_diagram/ip/m3_for_arty_a7_axi_quad_spi_0_0_1/sim/m3_for_arty_a7_axi_quad_spi_0_0.vhd" \

vcom -work axi_uartlite_v2_0_25 -93 \
"../../../../../block_diagram/ipshared/43b7/hdl/axi_uartlite_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../../../block_diagram/ip/m3_for_arty_a7_axi_uartlite_0_0_1/sim/m3_for_arty_a7_axi_uartlite_0_0.vhd" \

vlog -work blk_mem_gen_v8_4_4  -v2k5 "+incdir+../../../../../block_diagram/ipshared/8b3d" "+incdir+../../../../../block_diagram/ipshared/ec67/hdl" "+incdir+../../../../../block_diagram/ipshared/ea75/rtl" \
"../../../../../block_diagram/ipshared/2985/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../../block_diagram/ipshared/8b3d" "+incdir+../../../../../block_diagram/ipshared/ec67/hdl" "+incdir+../../../../../block_diagram/ipshared/ea75/rtl" \
"../../../../../block_diagram/ip/m3_for_arty_a7_blk_mem_gen_0_0_1/sim/m3_for_arty_a7_blk_mem_gen_0_0.v" \
"../../../../../block_diagram/ip/m3_for_arty_a7_xbar_1_1/sim/m3_for_arty_a7_xbar_1.v" \

vcom -work xil_defaultlib -93 \
"../../../../../block_diagram/ip/m3_for_arty_a7_axi_single_spi_0_0_1/sim/m3_for_arty_a7_axi_single_spi_0_0.vhd" \
"../../../../../block_diagram/ip/m3_for_arty_a7_axi_quad_spi_0_1_1/sim/m3_for_arty_a7_axi_quad_spi_0_1.vhd" \
"../../../../../block_diagram/ip/m3_for_arty_a7_axi_xip_quad_spi_0_0_1/sim/m3_for_arty_a7_axi_xip_quad_spi_0_0.vhd" \
"../../../../../block_diagram/ip/m3_for_arty_a7_axi_gpio_0_1_1/sim/m3_for_arty_a7_axi_gpio_0_1.vhd" \

vlog -work axi_protocol_converter_v2_1_21  -v2k5 "+incdir+../../../../../block_diagram/ipshared/8b3d" "+incdir+../../../../../block_diagram/ipshared/ec67/hdl" "+incdir+../../../../../block_diagram/ipshared/ea75/rtl" \
"../../../../../block_diagram/ipshared/8dfa/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../../block_diagram/ipshared/8b3d" "+incdir+../../../../../block_diagram/ipshared/ec67/hdl" "+incdir+../../../../../block_diagram/ipshared/ea75/rtl" \
"../../../../../block_diagram/ip/m3_for_arty_a7_axi_protocol_convert_0_0_1/sim/m3_for_arty_a7_axi_protocol_convert_0_0.v" \
"../../../../../block_diagram/ipshared/5fe9/DAPLink_to_Arty_shield.v" \
"../../../../../block_diagram/ip/m3_for_arty_a7_DAPLink_to_Arty_shield_0_0_1/sim/m3_for_arty_a7_DAPLink_to_Arty_shield_0_0.v" \
"../../../../../block_diagram/ip/m3_for_arty_a7_tri_io_buf_0_0_1/sim/m3_for_arty_a7_tri_io_buf_0_0.v" \

vlog -work xlconcat_v2_1_3  -v2k5 "+incdir+../../../../../block_diagram/ipshared/8b3d" "+incdir+../../../../../block_diagram/ipshared/ec67/hdl" "+incdir+../../../../../block_diagram/ipshared/ea75/rtl" \
"../../../../../block_diagram/ipshared/442e/hdl/xlconcat_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../../block_diagram/ipshared/8b3d" "+incdir+../../../../../block_diagram/ipshared/ec67/hdl" "+incdir+../../../../../block_diagram/ipshared/ea75/rtl" \
"../../../../../block_diagram/ip/m3_for_arty_a7_xlconcat_0_0_1/sim/m3_for_arty_a7_xlconcat_0_0.v" \
"../../../../../block_diagram/ip/m3_for_arty_a7_xlconcat_1_0_1/sim/m3_for_arty_a7_xlconcat_1_0.v" \
"../../../../../block_diagram/ip/m3_for_arty_a7_xlconstant_1_1_1/sim/m3_for_arty_a7_xlconstant_1_1.v" \
"../../../../../block_diagram/ipshared/ea75/rtl/cm3_dap_ahb_ap.v" \
"../../../../../block_diagram/ipshared/ea75/rtl/cm3_wic.v" \
"../../../../../block_diagram/ipshared/ea75/rtl/cm3_nvic.v" \
"../../../../../block_diagram/ipshared/ea75/rtl/cm3_dwt.v" \
"../../../../../block_diagram/ipshared/ea75/rtl/AhbToAxi.v" \
"../../../../../block_diagram/ipshared/ea75/rtl/cm3_mpu.v" \
"../../../../../block_diagram/ipshared/ea75/rtl/cm3_bus_matrix.v" \
"../../../../../block_diagram/ipshared/ea75/rtl/models.v" \
"../../../../../block_diagram/ipshared/ea75/rtl/cmsdk.v" \
"../../../../../block_diagram/ipshared/ea75/rtl/cm3_tpiu.v" \
"../../../../../block_diagram/ipshared/ea75/rtl/dapswjdp.v" \
"../../../../../block_diagram/ipshared/ea75/rtl/cm3_fpb.v" \
"../../../../../block_diagram/ipshared/ea75/rtl/cm3_dpu.v" \
"../../../../../block_diagram/ipshared/ea75/rtl/cm3_itm.v" \
"../../../../../block_diagram/ipshared/ea75/rtl/cm3_etm.v" \
"../../../../../block_diagram/ipshared/ea75/rtl/cortexm3.v" \
"../../../../../block_diagram/ipshared/ea75/rtl/cortexm3_integration.v" \
"../../../../../block_diagram/ip/m3_for_arty_a7_Cortex_M3_0_0_1/sim/m3_for_arty_a7_Cortex_M3_0_0.v" \
"../../../../../block_diagram/sim/m3_for_arty_a7.v" \
"../../../../../block_diagram/ip/m3_for_arty_a7_PmodESP32_0_0/ipshared/0a6f/src/pmod_concat.v" \
"../../../../../block_diagram/ip/m3_for_arty_a7_PmodESP32_0_0/src/PmodESP32_pmod_bridge_0_0/sim/PmodESP32_pmod_bridge_0_0.v" \

vcom -work xil_defaultlib -93 \
"../../../../../block_diagram/ip/m3_for_arty_a7_PmodESP32_0_0/src/PmodESP32_axi_uartlite_0_0/sim/PmodESP32_axi_uartlite_0_0.vhd" \
"../../../../../block_diagram/ip/m3_for_arty_a7_PmodESP32_0_0/src/PmodESP32_axi_gpio_0_0/sim/PmodESP32_axi_gpio_0_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../../block_diagram/ipshared/8b3d" "+incdir+../../../../../block_diagram/ipshared/ec67/hdl" "+incdir+../../../../../block_diagram/ipshared/ea75/rtl" \
"../../../../../block_diagram/ipshared/ec56/src/PmodESP32.v" \
"../../../../../block_diagram/ip/m3_for_arty_a7_PmodESP32_0_0/sim/m3_for_arty_a7_PmodESP32_0_0.v" \

vcom -work xil_defaultlib -93 \
"../../../../../block_diagram/ip/m3_for_arty_a7_xadc_wiz_0_0/proc_common_v3_30_a/hdl/src/vhdl/m3_for_arty_a7_xadc_wiz_0_0_conv_funs_pkg.vhd" \
"../../../../../block_diagram/ip/m3_for_arty_a7_xadc_wiz_0_0/proc_common_v3_30_a/hdl/src/vhdl/m3_for_arty_a7_xadc_wiz_0_0_proc_common_pkg.vhd" \
"../../../../../block_diagram/ip/m3_for_arty_a7_xadc_wiz_0_0/proc_common_v3_30_a/hdl/src/vhdl/m3_for_arty_a7_xadc_wiz_0_0_ipif_pkg.vhd" \
"../../../../../block_diagram/ip/m3_for_arty_a7_xadc_wiz_0_0/proc_common_v3_30_a/hdl/src/vhdl/m3_for_arty_a7_xadc_wiz_0_0_family_support.vhd" \
"../../../../../block_diagram/ip/m3_for_arty_a7_xadc_wiz_0_0/proc_common_v3_30_a/hdl/src/vhdl/m3_for_arty_a7_xadc_wiz_0_0_family.vhd" \
"../../../../../block_diagram/ip/m3_for_arty_a7_xadc_wiz_0_0/proc_common_v3_30_a/hdl/src/vhdl/m3_for_arty_a7_xadc_wiz_0_0_soft_reset.vhd" \
"../../../../../block_diagram/ip/m3_for_arty_a7_xadc_wiz_0_0/proc_common_v3_30_a/hdl/src/vhdl/m3_for_arty_a7_xadc_wiz_0_0_pselect_f.vhd" \
"../../../../../block_diagram/ip/m3_for_arty_a7_xadc_wiz_0_0/axi_lite_ipif_v1_01_a/hdl/src/vhdl/m3_for_arty_a7_xadc_wiz_0_0_address_decoder.vhd" \
"../../../../../block_diagram/ip/m3_for_arty_a7_xadc_wiz_0_0/axi_lite_ipif_v1_01_a/hdl/src/vhdl/m3_for_arty_a7_xadc_wiz_0_0_slave_attachment.vhd" \
"../../../../../block_diagram/ip/m3_for_arty_a7_xadc_wiz_0_0/interrupt_control_v2_01_a/hdl/src/vhdl/m3_for_arty_a7_xadc_wiz_0_0_interrupt_control.vhd" \
"../../../../../block_diagram/ip/m3_for_arty_a7_xadc_wiz_0_0/axi_lite_ipif_v1_01_a/hdl/src/vhdl/m3_for_arty_a7_xadc_wiz_0_0_axi_lite_ipif.vhd" \
"../../../../../block_diagram/ip/m3_for_arty_a7_xadc_wiz_0_0/m3_for_arty_a7_xadc_wiz_0_0_xadc_core_drp.vhd" \
"../../../../../block_diagram/ip/m3_for_arty_a7_xadc_wiz_0_0/m3_for_arty_a7_xadc_wiz_0_0_axi_xadc.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../../block_diagram/ipshared/8b3d" "+incdir+../../../../../block_diagram/ipshared/ec67/hdl" "+incdir+../../../../../block_diagram/ipshared/ea75/rtl" \
"../../../../../block_diagram/ip/m3_for_arty_a7_xadc_wiz_0_0/m3_for_arty_a7_xadc_wiz_0_0.v" \
"../../../../../block_diagram/ip/m3_for_arty_a7_auto_pc_0_1/sim/m3_for_arty_a7_auto_pc_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

