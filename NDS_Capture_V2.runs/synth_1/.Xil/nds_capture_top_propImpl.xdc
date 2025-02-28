set_property SRC_FILE_INFO {cfile:c:/Users/Aaro/Desktop/385/NDS_Capture_V2/NDS_Capture_V2.gen/sources_1/ip/clk_wiz_0_1/clk_wiz_0.xdc rfile:../../../NDS_Capture_V2.gen/sources_1/ip/clk_wiz_0_1/clk_wiz_0.xdc id:1 order:EARLY scoped_inst:clk_wiz_0/inst} [current_design]
set_property SRC_FILE_INFO {cfile:C:/Users/Aaro/Desktop/385/NDS_Capture_V2/NDS_Capture_V2.srcs/constrs_1/new/nds_capture.xdc rfile:../../../NDS_Capture_V2.srcs/constrs_1/new/nds_capture.xdc id:2} [current_design]
current_instance clk_wiz_0/inst
set_property src_info {type:SCOPED_XDC file:1 line:57 export:INPUT save:INPUT read:READ} [current_design]
set_input_jitter [get_clocks -of_objects [get_ports clk_in1]] 0.200
current_instance
set_property src_info {type:XDC file:2 line:3 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN U18 [get_ports sys_clk]
set_property src_info {type:XDC file:2 line:6 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN N15 [get_ports rst_n]
set_property src_info {type:XDC file:2 line:8 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD TMDS_33 [get_ports TMDS_clk_n] #hdmi
set_property src_info {type:XDC file:2 line:9 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN N18 [get_ports TMDS_clk_p]
set_property src_info {type:XDC file:2 line:12 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN V20 [get_ports {TMDS_data_p[0]}]
set_property src_info {type:XDC file:2 line:15 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN T20 [get_ports {TMDS_data_p[1]}]
set_property src_info {type:XDC file:2 line:18 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN N20 [get_ports {TMDS_data_p[2]}]
set_property src_info {type:XDC file:2 line:20 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN V16 [get_ports hdmi_oen]
set_property src_info {type:XDC file:2 line:23 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN M14 [get_ports {led[0]}]
set_property src_info {type:XDC file:2 line:25 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN M15 [get_ports {led[1]}]
set_property src_info {type:XDC file:2 line:27 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN K16 [get_ports {led[2]}]
set_property src_info {type:XDC file:2 line:29 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN J16 [get_ports {led[3]}]
set_property src_info {type:XDC file:2 line:33 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN N15 [get_ports {key[0]}] #keys
set_property src_info {type:XDC file:2 line:34 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD LVCMOS33 [get_ports {key[0]}]
set_property src_info {type:XDC file:2 line:35 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN N16 [get_ports {key[1]}]
set_property src_info {type:XDC file:2 line:36 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD LVCMOS33 [get_ports {key[1]}]
set_property src_info {type:XDC file:2 line:37 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN T17 [get_ports {key[2]}]
set_property src_info {type:XDC file:2 line:38 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD LVCMOS33 [get_ports {key[2]}]
set_property src_info {type:XDC file:2 line:39 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN R17 [get_ports {key[3]}]
set_property src_info {type:XDC file:2 line:40 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD LVCMOS33 [get_ports {key[3]}]
set_property src_info {type:XDC file:2 line:44 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN W19 [get_ports T_R0]
set_property src_info {type:XDC file:2 line:46 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN R14 [get_ports T_R1]
set_property src_info {type:XDC file:2 line:48 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN Y17 [get_ports T_R2]
set_property src_info {type:XDC file:2 line:50 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN W15 [get_ports T_R3]
set_property src_info {type:XDC file:2 line:52 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN Y14 [get_ports T_R4]
set_property src_info {type:XDC file:2 line:54 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN P18 [get_ports T_R5]
set_property src_info {type:XDC file:2 line:56 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN U15 [get_ports T_G0]
set_property src_info {type:XDC file:2 line:58 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN P16 [get_ports T_G1]
set_property src_info {type:XDC file:2 line:60 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN U17 [get_ports T_G2]
set_property src_info {type:XDC file:2 line:62 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN V18 [get_ports T_G3]
set_property src_info {type:XDC file:2 line:64 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN T15 [get_ports T_G4]
set_property src_info {type:XDC file:2 line:66 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN V13 [get_ports T_G5]
set_property src_info {type:XDC file:2 line:68 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN W13 [get_ports T_B0]
set_property src_info {type:XDC file:2 line:70 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN U12 [get_ports T_B1]
set_property src_info {type:XDC file:2 line:72 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN T10 [get_ports T_B2]
set_property src_info {type:XDC file:2 line:74 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN A20 [get_ports T_B3]
set_property src_info {type:XDC file:2 line:76 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN B20 [get_ports T_B4]
set_property src_info {type:XDC file:2 line:78 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN F17 [get_ports T_B5]
set_property src_info {type:XDC file:2 line:80 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN F20 [get_ports DCLK]
set_property src_info {type:XDC file:2 line:82 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN G20 [get_ports GSP]
set_property src_info {type:XDC file:2 line:84 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN H18 [get_ports LS]
set_property src_info {type:XDC file:2 line:89 export:INPUT save:INPUT read:READ} [current_design]
connect_debug_port u_ila_0/probe1 [get_nets [list {hdmi_color_bar/drawX[0]} {hdmi_color_bar/drawX[1]} {hdmi_color_bar/drawX[2]} {hdmi_color_bar/drawX[3]} {hdmi_color_bar/drawX[4]} {hdmi_color_bar/drawX[5]} {hdmi_color_bar/drawX[6]} {hdmi_color_bar/drawX[7]} {hdmi_color_bar/drawX[8]} {hdmi_color_bar/drawX[9]} {hdmi_color_bar/drawX[10]} {hdmi_color_bar/drawX[11]}]]
set_property src_info {type:XDC file:2 line:92 export:INPUT save:INPUT read:READ} [current_design]
create_debug_core u_ila_0 ila
set_property src_info {type:XDC file:2 line:93 export:INPUT save:INPUT read:READ} [current_design]
set_property ALL_PROBE_SAME_MU true [get_debug_cores u_ila_0]
set_property src_info {type:XDC file:2 line:94 export:INPUT save:INPUT read:READ} [current_design]
set_property ALL_PROBE_SAME_MU_CNT 1 [get_debug_cores u_ila_0]
set_property src_info {type:XDC file:2 line:95 export:INPUT save:INPUT read:READ} [current_design]
set_property C_ADV_TRIGGER false [get_debug_cores u_ila_0]
set_property src_info {type:XDC file:2 line:96 export:INPUT save:INPUT read:READ} [current_design]
set_property C_DATA_DEPTH 131072 [get_debug_cores u_ila_0]
set_property src_info {type:XDC file:2 line:97 export:INPUT save:INPUT read:READ} [current_design]
set_property C_EN_STRG_QUAL false [get_debug_cores u_ila_0]
set_property src_info {type:XDC file:2 line:98 export:INPUT save:INPUT read:READ} [current_design]
set_property C_INPUT_PIPE_STAGES 0 [get_debug_cores u_ila_0]
set_property src_info {type:XDC file:2 line:99 export:INPUT save:INPUT read:READ} [current_design]
set_property C_TRIGIN_EN false [get_debug_cores u_ila_0]
set_property src_info {type:XDC file:2 line:100 export:INPUT save:INPUT read:READ} [current_design]
set_property C_TRIGOUT_EN false [get_debug_cores u_ila_0]
set_property src_info {type:XDC file:2 line:101 export:INPUT save:INPUT read:READ} [current_design]
set_property port_width 1 [get_debug_ports u_ila_0/clk]
set_property src_info {type:XDC file:2 line:102 export:INPUT save:INPUT read:READ} [current_design]
connect_debug_port u_ila_0/clk [get_nets [list clk_wiz_0/inst/clk_out1]]
set_property src_info {type:XDC file:2 line:103 export:INPUT save:INPUT read:READ} [current_design]
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe0]
set_property src_info {type:XDC file:2 line:104 export:INPUT save:INPUT read:READ} [current_design]
set_property port_width 1 [get_debug_ports u_ila_0/probe0]
set_property src_info {type:XDC file:2 line:105 export:INPUT save:INPUT read:READ} [current_design]
connect_debug_port u_ila_0/probe0 [get_nets [list T_B0_IBUF]]
set_property src_info {type:XDC file:2 line:106 export:INPUT save:INPUT read:READ} [current_design]
create_debug_port u_ila_0 probe
set_property src_info {type:XDC file:2 line:107 export:INPUT save:INPUT read:READ} [current_design]
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe1]
set_property src_info {type:XDC file:2 line:108 export:INPUT save:INPUT read:READ} [current_design]
set_property port_width 1 [get_debug_ports u_ila_0/probe1]
set_property src_info {type:XDC file:2 line:109 export:INPUT save:INPUT read:READ} [current_design]
connect_debug_port u_ila_0/probe1 [get_nets [list T_B1_IBUF]]
set_property src_info {type:XDC file:2 line:110 export:INPUT save:INPUT read:READ} [current_design]
create_debug_port u_ila_0 probe
set_property src_info {type:XDC file:2 line:111 export:INPUT save:INPUT read:READ} [current_design]
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe2]
set_property src_info {type:XDC file:2 line:112 export:INPUT save:INPUT read:READ} [current_design]
set_property port_width 1 [get_debug_ports u_ila_0/probe2]
set_property src_info {type:XDC file:2 line:113 export:INPUT save:INPUT read:READ} [current_design]
connect_debug_port u_ila_0/probe2 [get_nets [list T_B2_IBUF]]
set_property src_info {type:XDC file:2 line:114 export:INPUT save:INPUT read:READ} [current_design]
create_debug_port u_ila_0 probe
set_property src_info {type:XDC file:2 line:115 export:INPUT save:INPUT read:READ} [current_design]
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe3]
set_property src_info {type:XDC file:2 line:116 export:INPUT save:INPUT read:READ} [current_design]
set_property port_width 1 [get_debug_ports u_ila_0/probe3]
set_property src_info {type:XDC file:2 line:117 export:INPUT save:INPUT read:READ} [current_design]
connect_debug_port u_ila_0/probe3 [get_nets [list T_B3_IBUF]]
set_property src_info {type:XDC file:2 line:118 export:INPUT save:INPUT read:READ} [current_design]
create_debug_port u_ila_0 probe
set_property src_info {type:XDC file:2 line:119 export:INPUT save:INPUT read:READ} [current_design]
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe4]
set_property src_info {type:XDC file:2 line:120 export:INPUT save:INPUT read:READ} [current_design]
set_property port_width 1 [get_debug_ports u_ila_0/probe4]
set_property src_info {type:XDC file:2 line:121 export:INPUT save:INPUT read:READ} [current_design]
connect_debug_port u_ila_0/probe4 [get_nets [list T_B4_IBUF]]
set_property src_info {type:XDC file:2 line:122 export:INPUT save:INPUT read:READ} [current_design]
create_debug_port u_ila_0 probe
set_property src_info {type:XDC file:2 line:123 export:INPUT save:INPUT read:READ} [current_design]
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe5]
set_property src_info {type:XDC file:2 line:124 export:INPUT save:INPUT read:READ} [current_design]
set_property port_width 1 [get_debug_ports u_ila_0/probe5]
set_property src_info {type:XDC file:2 line:125 export:INPUT save:INPUT read:READ} [current_design]
connect_debug_port u_ila_0/probe5 [get_nets [list T_B5_IBUF]]
set_property src_info {type:XDC file:2 line:126 export:INPUT save:INPUT read:READ} [current_design]
create_debug_port u_ila_0 probe
set_property src_info {type:XDC file:2 line:127 export:INPUT save:INPUT read:READ} [current_design]
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe6]
set_property src_info {type:XDC file:2 line:128 export:INPUT save:INPUT read:READ} [current_design]
set_property port_width 1 [get_debug_ports u_ila_0/probe6]
set_property src_info {type:XDC file:2 line:129 export:INPUT save:INPUT read:READ} [current_design]
connect_debug_port u_ila_0/probe6 [get_nets [list T_G0_IBUF]]
set_property src_info {type:XDC file:2 line:130 export:INPUT save:INPUT read:READ} [current_design]
create_debug_port u_ila_0 probe
set_property src_info {type:XDC file:2 line:131 export:INPUT save:INPUT read:READ} [current_design]
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe7]
set_property src_info {type:XDC file:2 line:132 export:INPUT save:INPUT read:READ} [current_design]
set_property port_width 1 [get_debug_ports u_ila_0/probe7]
set_property src_info {type:XDC file:2 line:133 export:INPUT save:INPUT read:READ} [current_design]
connect_debug_port u_ila_0/probe7 [get_nets [list T_G1_IBUF]]
set_property src_info {type:XDC file:2 line:134 export:INPUT save:INPUT read:READ} [current_design]
create_debug_port u_ila_0 probe
set_property src_info {type:XDC file:2 line:135 export:INPUT save:INPUT read:READ} [current_design]
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe8]
set_property src_info {type:XDC file:2 line:136 export:INPUT save:INPUT read:READ} [current_design]
set_property port_width 1 [get_debug_ports u_ila_0/probe8]
set_property src_info {type:XDC file:2 line:137 export:INPUT save:INPUT read:READ} [current_design]
connect_debug_port u_ila_0/probe8 [get_nets [list T_G2_IBUF]]
set_property src_info {type:XDC file:2 line:138 export:INPUT save:INPUT read:READ} [current_design]
create_debug_port u_ila_0 probe
set_property src_info {type:XDC file:2 line:139 export:INPUT save:INPUT read:READ} [current_design]
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe9]
set_property src_info {type:XDC file:2 line:140 export:INPUT save:INPUT read:READ} [current_design]
set_property port_width 1 [get_debug_ports u_ila_0/probe9]
set_property src_info {type:XDC file:2 line:141 export:INPUT save:INPUT read:READ} [current_design]
connect_debug_port u_ila_0/probe9 [get_nets [list T_G3_IBUF]]
set_property src_info {type:XDC file:2 line:142 export:INPUT save:INPUT read:READ} [current_design]
create_debug_port u_ila_0 probe
set_property src_info {type:XDC file:2 line:143 export:INPUT save:INPUT read:READ} [current_design]
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe10]
set_property src_info {type:XDC file:2 line:144 export:INPUT save:INPUT read:READ} [current_design]
set_property port_width 1 [get_debug_ports u_ila_0/probe10]
set_property src_info {type:XDC file:2 line:145 export:INPUT save:INPUT read:READ} [current_design]
connect_debug_port u_ila_0/probe10 [get_nets [list T_G4_IBUF]]
set_property src_info {type:XDC file:2 line:146 export:INPUT save:INPUT read:READ} [current_design]
create_debug_port u_ila_0 probe
set_property src_info {type:XDC file:2 line:147 export:INPUT save:INPUT read:READ} [current_design]
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe11]
set_property src_info {type:XDC file:2 line:148 export:INPUT save:INPUT read:READ} [current_design]
set_property port_width 1 [get_debug_ports u_ila_0/probe11]
set_property src_info {type:XDC file:2 line:149 export:INPUT save:INPUT read:READ} [current_design]
connect_debug_port u_ila_0/probe11 [get_nets [list T_G5_IBUF]]
set_property src_info {type:XDC file:2 line:150 export:INPUT save:INPUT read:READ} [current_design]
create_debug_port u_ila_0 probe
set_property src_info {type:XDC file:2 line:151 export:INPUT save:INPUT read:READ} [current_design]
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe12]
set_property src_info {type:XDC file:2 line:152 export:INPUT save:INPUT read:READ} [current_design]
set_property port_width 1 [get_debug_ports u_ila_0/probe12]
set_property src_info {type:XDC file:2 line:153 export:INPUT save:INPUT read:READ} [current_design]
connect_debug_port u_ila_0/probe12 [get_nets [list T_R0_IBUF]]
set_property src_info {type:XDC file:2 line:154 export:INPUT save:INPUT read:READ} [current_design]
create_debug_port u_ila_0 probe
set_property src_info {type:XDC file:2 line:155 export:INPUT save:INPUT read:READ} [current_design]
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe13]
set_property src_info {type:XDC file:2 line:156 export:INPUT save:INPUT read:READ} [current_design]
set_property port_width 1 [get_debug_ports u_ila_0/probe13]
set_property src_info {type:XDC file:2 line:157 export:INPUT save:INPUT read:READ} [current_design]
connect_debug_port u_ila_0/probe13 [get_nets [list T_R1_IBUF]]
set_property src_info {type:XDC file:2 line:158 export:INPUT save:INPUT read:READ} [current_design]
create_debug_port u_ila_0 probe
set_property src_info {type:XDC file:2 line:159 export:INPUT save:INPUT read:READ} [current_design]
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe14]
set_property src_info {type:XDC file:2 line:160 export:INPUT save:INPUT read:READ} [current_design]
set_property port_width 1 [get_debug_ports u_ila_0/probe14]
set_property src_info {type:XDC file:2 line:161 export:INPUT save:INPUT read:READ} [current_design]
connect_debug_port u_ila_0/probe14 [get_nets [list T_R2_IBUF]]
set_property src_info {type:XDC file:2 line:162 export:INPUT save:INPUT read:READ} [current_design]
create_debug_port u_ila_0 probe
set_property src_info {type:XDC file:2 line:163 export:INPUT save:INPUT read:READ} [current_design]
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe15]
set_property src_info {type:XDC file:2 line:164 export:INPUT save:INPUT read:READ} [current_design]
set_property port_width 1 [get_debug_ports u_ila_0/probe15]
set_property src_info {type:XDC file:2 line:165 export:INPUT save:INPUT read:READ} [current_design]
connect_debug_port u_ila_0/probe15 [get_nets [list T_R3_IBUF]]
set_property src_info {type:XDC file:2 line:166 export:INPUT save:INPUT read:READ} [current_design]
create_debug_port u_ila_0 probe
set_property src_info {type:XDC file:2 line:167 export:INPUT save:INPUT read:READ} [current_design]
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe16]
set_property src_info {type:XDC file:2 line:168 export:INPUT save:INPUT read:READ} [current_design]
set_property port_width 1 [get_debug_ports u_ila_0/probe16]
set_property src_info {type:XDC file:2 line:169 export:INPUT save:INPUT read:READ} [current_design]
connect_debug_port u_ila_0/probe16 [get_nets [list T_R4_IBUF]]
set_property src_info {type:XDC file:2 line:170 export:INPUT save:INPUT read:READ} [current_design]
create_debug_port u_ila_0 probe
set_property src_info {type:XDC file:2 line:171 export:INPUT save:INPUT read:READ} [current_design]
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe17]
set_property src_info {type:XDC file:2 line:172 export:INPUT save:INPUT read:READ} [current_design]
set_property port_width 1 [get_debug_ports u_ila_0/probe17]
set_property src_info {type:XDC file:2 line:173 export:INPUT save:INPUT read:READ} [current_design]
connect_debug_port u_ila_0/probe17 [get_nets [list T_R5_IBUF]]
set_property src_info {type:XDC file:2 line:174 export:INPUT save:INPUT read:READ} [current_design]
create_debug_port u_ila_0 probe
set_property src_info {type:XDC file:2 line:175 export:INPUT save:INPUT read:READ} [current_design]
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe18]
set_property src_info {type:XDC file:2 line:176 export:INPUT save:INPUT read:READ} [current_design]
set_property port_width 1 [get_debug_ports u_ila_0/probe18]
set_property src_info {type:XDC file:2 line:177 export:INPUT save:INPUT read:READ} [current_design]
connect_debug_port u_ila_0/probe18 [get_nets [list DCLK_IBUF]]
set_property src_info {type:XDC file:2 line:178 export:INPUT save:INPUT read:READ} [current_design]
create_debug_port u_ila_0 probe
set_property src_info {type:XDC file:2 line:179 export:INPUT save:INPUT read:READ} [current_design]
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe19]
set_property src_info {type:XDC file:2 line:180 export:INPUT save:INPUT read:READ} [current_design]
set_property port_width 1 [get_debug_ports u_ila_0/probe19]
set_property src_info {type:XDC file:2 line:181 export:INPUT save:INPUT read:READ} [current_design]
connect_debug_port u_ila_0/probe19 [get_nets [list GSP_IBUF]]
set_property src_info {type:XDC file:2 line:182 export:INPUT save:INPUT read:READ} [current_design]
set_property C_CLK_INPUT_FREQ_HZ 300000000 [get_debug_cores dbg_hub]
set_property src_info {type:XDC file:2 line:183 export:INPUT save:INPUT read:READ} [current_design]
set_property C_ENABLE_CLK_DIVIDER false [get_debug_cores dbg_hub]
set_property src_info {type:XDC file:2 line:184 export:INPUT save:INPUT read:READ} [current_design]
set_property C_USER_SCAN_CHAIN 1 [get_debug_cores dbg_hub]
set_property src_info {type:XDC file:2 line:185 export:INPUT save:INPUT read:READ} [current_design]
connect_debug_port dbg_hub/clk [get_nets video_clk]
