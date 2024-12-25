create_clock -period 20.000 -waveform {0.000 10.000} [get_ports sys_clk]
set_property IOSTANDARD LVCMOS33 [get_ports {sys_clk}]
set_property PACKAGE_PIN U18 [get_ports {sys_clk}]

set_property IOSTANDARD LVCMOS33 [get_ports {rst_n}]
set_property PACKAGE_PIN N15 [get_ports {rst_n}]

set_property IOSTANDARD TMDS_33 [get_ports TMDS_clk_n] #hdmi
set_property PACKAGE_PIN N18 [get_ports TMDS_clk_p]
set_property IOSTANDARD TMDS_33 [get_ports TMDS_clk_p]
set_property IOSTANDARD TMDS_33 [get_ports {TMDS_data_n[0]}]
set_property PACKAGE_PIN V20 [get_ports {TMDS_data_p[0]}]
set_property IOSTANDARD TMDS_33 [get_ports {TMDS_data_p[0]}]
set_property IOSTANDARD TMDS_33 [get_ports {TMDS_data_n[1]}]
set_property PACKAGE_PIN T20 [get_ports {TMDS_data_p[1]}]
set_property IOSTANDARD TMDS_33 [get_ports {TMDS_data_p[1]}]
set_property IOSTANDARD TMDS_33 [get_ports {TMDS_data_n[2]}]
set_property PACKAGE_PIN N20 [get_ports {TMDS_data_p[2]}]
set_property IOSTANDARD TMDS_33 [get_ports {TMDS_data_p[2]}]
set_property PACKAGE_PIN V16 [get_ports hdmi_oen]
set_property IOSTANDARD LVCMOS33 [get_ports hdmi_oen]

set_property PACKAGE_PIN M14 [get_ports {led[0]}] #led
set_property IOSTANDARD LVCMOS33 [get_ports {led[0]}]
set_property PACKAGE_PIN M15 [get_ports {led[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[1]}]
set_property PACKAGE_PIN K16 [get_ports {led[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[2]}]
set_property PACKAGE_PIN J16 [get_ports {led[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[3]}]


set_property PACKAGE_PIN N15 [get_ports {key[0]}] #keys
set_property IOSTANDARD LVCMOS33 [get_ports {key[0]}]
set_property PACKAGE_PIN N16 [get_ports {key[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {key[1]}]
set_property PACKAGE_PIN T17 [get_ports {key[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {key[2]}]
set_property PACKAGE_PIN R17 [get_ports {key[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {key[3]}]

# work with usb later lol