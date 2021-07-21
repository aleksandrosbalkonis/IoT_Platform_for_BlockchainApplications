onbreak {quit -force}
onerror {quit -force}

asim +access +r +m+m3_for_arty_a7 -L xpm -L lib_cdc_v1_0_2 -L proc_sys_reset_v5_0_13 -L xil_defaultlib -L util_vector_logic_v2_0_1 -L xlconstant_v1_1_7 -L axi_bram_ctrl_v4_1_3 -L axi_lite_ipif_v3_0_4 -L interrupt_control_v3_1_4 -L axi_gpio_v2_0_23 -L generic_baseblocks_v2_1_0 -L axi_infrastructure_v1_1_0 -L axi_register_slice_v2_1_21 -L fifo_generator_v13_2_5 -L axi_data_fifo_v2_1_20 -L axi_crossbar_v2_1_22 -L dist_mem_gen_v8_0_13 -L lib_pkg_v1_0_2 -L lib_srl_fifo_v1_0_2 -L lib_fifo_v1_0_14 -L axi_quad_spi_v3_2_20 -L axi_uartlite_v2_0_25 -L blk_mem_gen_v8_4_4 -L axi_protocol_converter_v2_1_21 -L xlconcat_v2_1_3 -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.m3_for_arty_a7 xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {m3_for_arty_a7.udo}

run -all

endsim

quit -force
