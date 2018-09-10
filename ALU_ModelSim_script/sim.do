vlib rtl_work

vcom -93 -work work sequential_delay.vhd
vcom -93 -work work sequential_delay_tb.vhd

vsim sequential_delay_tb


do wave.do
view wave
view structure
view signals
run 150 ns
