//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
//Date        : Tue Jul 20 15:08:18 2021
//Host        : LAPTOP-7C23HM8C running 64-bit major release  (build 9200)
//Command     : generate_target m3_for_arty_a7_wrapper.bd
//Design      : m3_for_arty_a7_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module m3_for_arty_a7_wrapper
   (Analog_in_0_v_n,
    Analog_in_0_v_p,
    DAPLink_tri_o,
    TDI,
    TDO,
    dip_switches_4bits_tri_i,
    esp_gpio_in,
    esp_gpio_out,
    esp_rx,
    esp_tx,
    led_4bits_tri_o,
    nTRST,
    push_buttons_4bits_tri_i,
    qspi_flash_io0_io,
    qspi_flash_io1_io,
    qspi_flash_io2_io,
    qspi_flash_io3_io,
    qspi_flash_ss_io,
    reset,
    rgb_led_tri_o,
    sys_clock,
    usb_uart_rxd,
    usb_uart_txd);
  input Analog_in_0_v_n;
  input Analog_in_0_v_p;
  inout [15:0]DAPLink_tri_o;
  input TDI;
  inout [0:0]TDO;
  input [3:0]dip_switches_4bits_tri_i;
  input [3:0]esp_gpio_in;
  output [1:0]esp_gpio_out;
  input esp_rx;
  output esp_tx;
  output [3:0]led_4bits_tri_o;
  input nTRST;
  input [3:0]push_buttons_4bits_tri_i;
  inout qspi_flash_io0_io;
  inout qspi_flash_io1_io;
  inout qspi_flash_io2_io;
  inout qspi_flash_io3_io;
  inout [0:0]qspi_flash_ss_io;
  input reset;
  output [5:0]rgb_led_tri_o;
  input sys_clock;
  input usb_uart_rxd;
  output usb_uart_txd;

  wire Analog_in_0_v_n;
  wire Analog_in_0_v_p;
  wire [15:0]DAPLink_tri_o;
  wire TDI;
  wire [0:0]TDO;
  wire [3:0]dip_switches_4bits_tri_i;
  wire [3:0]esp_gpio_in;
  wire [1:0]esp_gpio_out;
  wire esp_rx;
  wire esp_tx;
  wire [3:0]led_4bits_tri_o;
  wire nTRST;
  wire [3:0]push_buttons_4bits_tri_i;
  wire qspi_flash_io0_i;
  wire qspi_flash_io0_io;
  wire qspi_flash_io0_o;
  wire qspi_flash_io0_t;
  wire qspi_flash_io1_i;
  wire qspi_flash_io1_io;
  wire qspi_flash_io1_o;
  wire qspi_flash_io1_t;
  wire qspi_flash_io2_i;
  wire qspi_flash_io2_io;
  wire qspi_flash_io2_o;
  wire qspi_flash_io2_t;
  wire qspi_flash_io3_i;
  wire qspi_flash_io3_io;
  wire qspi_flash_io3_o;
  wire qspi_flash_io3_t;
  wire [0:0]qspi_flash_ss_i_0;
  wire [0:0]qspi_flash_ss_io_0;
  wire [0:0]qspi_flash_ss_o_0;
  wire qspi_flash_ss_t;
  wire reset;
  wire [5:0]rgb_led_tri_o;
  wire sys_clock;
  wire usb_uart_rxd;
  wire usb_uart_txd;

  m3_for_arty_a7 m3_for_arty_a7_i
       (.Analog_in_0_v_n(Analog_in_0_v_n),
        .Analog_in_0_v_p(Analog_in_0_v_p),
        .DAPLink_tri_o(DAPLink_tri_o),
        .TDI(TDI),
        .TDO(TDO),
        .dip_switches_4bits_tri_i(dip_switches_4bits_tri_i),
        .esp_gpio_in(esp_gpio_in),
        .esp_gpio_out(esp_gpio_out),
        .esp_rx(esp_rx),
        .esp_tx(esp_tx),
        .led_4bits_tri_o(led_4bits_tri_o),
        .nTRST(nTRST),
        .push_buttons_4bits_tri_i(push_buttons_4bits_tri_i),
        .qspi_flash_io0_i(qspi_flash_io0_i),
        .qspi_flash_io0_o(qspi_flash_io0_o),
        .qspi_flash_io0_t(qspi_flash_io0_t),
        .qspi_flash_io1_i(qspi_flash_io1_i),
        .qspi_flash_io1_o(qspi_flash_io1_o),
        .qspi_flash_io1_t(qspi_flash_io1_t),
        .qspi_flash_io2_i(qspi_flash_io2_i),
        .qspi_flash_io2_o(qspi_flash_io2_o),
        .qspi_flash_io2_t(qspi_flash_io2_t),
        .qspi_flash_io3_i(qspi_flash_io3_i),
        .qspi_flash_io3_o(qspi_flash_io3_o),
        .qspi_flash_io3_t(qspi_flash_io3_t),
        .qspi_flash_ss_i(qspi_flash_ss_i_0),
        .qspi_flash_ss_o(qspi_flash_ss_o_0),
        .qspi_flash_ss_t(qspi_flash_ss_t),
        .reset(reset),
        .rgb_led_tri_o(rgb_led_tri_o),
        .sys_clock(sys_clock),
        .usb_uart_rxd(usb_uart_rxd),
        .usb_uart_txd(usb_uart_txd));
  IOBUF qspi_flash_io0_iobuf
       (.I(qspi_flash_io0_o),
        .IO(qspi_flash_io0_io),
        .O(qspi_flash_io0_i),
        .T(qspi_flash_io0_t));
  IOBUF qspi_flash_io1_iobuf
       (.I(qspi_flash_io1_o),
        .IO(qspi_flash_io1_io),
        .O(qspi_flash_io1_i),
        .T(qspi_flash_io1_t));
  IOBUF qspi_flash_io2_iobuf
       (.I(qspi_flash_io2_o),
        .IO(qspi_flash_io2_io),
        .O(qspi_flash_io2_i),
        .T(qspi_flash_io2_t));
  IOBUF qspi_flash_io3_iobuf
       (.I(qspi_flash_io3_o),
        .IO(qspi_flash_io3_io),
        .O(qspi_flash_io3_i),
        .T(qspi_flash_io3_t));
  IOBUF qspi_flash_ss_iobuf_0
       (.I(qspi_flash_ss_o_0),
        .IO(qspi_flash_ss_io[0]),
        .O(qspi_flash_ss_i_0),
        .T(qspi_flash_ss_t));
endmodule
