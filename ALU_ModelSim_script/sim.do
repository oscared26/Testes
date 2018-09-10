vlib rtl_work

vcom -93 -work work arith_unit.vhd
vcom -93 -work work logic_unit.vhd
vcom -93 -work work muxi.vhd
vcom -93 -work work alu.vhd
vcom -93 -work work alu_tb.vhd

vsim alu_tb

add wave *
view structure
view signals
run 150 ns
