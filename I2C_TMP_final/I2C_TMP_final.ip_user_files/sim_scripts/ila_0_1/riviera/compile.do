vlib work
vlib riviera

vlib riviera/xpm
vlib riviera/xil_defaultlib

vmap xpm riviera/xpm
vmap xil_defaultlib riviera/xil_defaultlib

vlog -work xpm  -sv2k12 "+incdir+../../../../I2C_TMP_final.srcs/sources_1/ip/ila_0_1/hdl/verilog" \
"C:/Xilinx_Vitis/Vivado/2020.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx_Vitis/Vivado/2020.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"C:/Xilinx_Vitis/Vivado/2020.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../I2C_TMP_final.srcs/sources_1/ip/ila_0_1/hdl/verilog" \
"../../../../I2C_TMP_final.srcs/sources_1/ip/ila_0_1/sim/ila_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

