
set_property CFGBVS VCCO [current_design]
set_property CONFIG_VOLTAGE 3.3 [current_design]
set_property BITSTREAM.CONFIG.CONFIGRATE 50 [current_design]
set_property BITSTREAM.CONFIG.SPI_BUSWIDTH 4 [current_design]
set_property BITSTREAM.GENERAL.COMPRESS TRUE [current_design]

create_clock -period 10.000 -name clk100 [get_ports clkin100]

set_property IOSTANDARD LVCMOS33    [get_ports clkin100]
set_property PACKAGE_PIN N14        [get_ports clkin100]

set_property IOSTANDARD LVCMOS33    [get_ports {led[*]}]
set_property DRIVE 4                [get_ports {led[*]}]
set_property SLEW SLOW              [get_ports {led[*]}]
set_property PACKAGE_PIN P14 [get_ports {led[7]}]
set_property PACKAGE_PIN M12 [get_ports {led[6]}]
set_property PACKAGE_PIN M14 [get_ports {led[5]}]
set_property PACKAGE_PIN M15 [get_ports {led[4]}]
set_property PACKAGE_PIN L13 [get_ports {led[3]}]
set_property PACKAGE_PIN L14 [get_ports {led[2]}]
set_property PACKAGE_PIN K12 [get_ports {led[1]}]
set_property PACKAGE_PIN K13 [get_ports {led[0]}]

set_property IOSTANDARD LVCMOS33 [get_ports usb_uart*]
set_property PACKAGE_PIN P15 [get_ports usb_uart_rxd]
set_property PACKAGE_PIN P16 [get_ports usb_uart_txd]

set_property IOSTANDARD LVCMOS33 [get_ports rstn]
set_property PACKAGE_PIN P6 [get_ports rstn]

