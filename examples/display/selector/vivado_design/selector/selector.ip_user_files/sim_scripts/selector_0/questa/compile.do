vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xil_defaultlib

vmap xil_defaultlib questa_lib/msim/xil_defaultlib

vlog -work xil_defaultlib -64 \
"../../../ipstatic/hdl/verilog/selector.v" \
"../../../ipstatic/hdl/verilog/selector_select.v" \
"../../../../selector.srcs/sources_1/ip/selector_0/sim/selector_0.v" \


vlog -work xil_defaultlib \
"glbl.v"

