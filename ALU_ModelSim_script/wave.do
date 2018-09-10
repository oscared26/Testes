onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /sequential_delay_tb/clk
add wave -noupdate /sequential_delay_tb/rst
add wave -noupdate -format Literal -radix unsigned /sequential_delay_tb/a
add wave -noupdate -format Literal -radix unsigned /sequential_delay_tb/b
add wave -noupdate -format Literal -radix unsigned /sequential_delay_tb/c
add wave -noupdate -format Literal -radix unsigned /sequential_delay_tb/y
add wave -noupdate -radix unsigned /sequential_delay_tb/DUT/old_value
add wave -noupdate -radix unsigned /sequential_delay_tb/DUT/new_value
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {14720 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 1
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {0 ps} {95383 ps}
