-makelib xcelium_lib/xpm -sv \
  "C:/Xilinx2022/Vivado/2022.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "C:/Xilinx2022/Vivado/2022.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib xcelium_lib/xpm \
  "C:/Xilinx2022/Vivado/2022.2/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../../NDS_Capture_V2.gen/sources_1/ip/clk_wiz_0_1/clk_wiz_0_clk_wiz.v" \
  "../../../../NDS_Capture_V2.gen/sources_1/ip/clk_wiz_0_1/clk_wiz_0.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib

