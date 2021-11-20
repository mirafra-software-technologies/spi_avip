onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /hdl_top/intf/pclk
add wave -noupdate /hdl_top/intf/areset
add wave -noupdate -color Yellow /hdl_top/intf/cs
add wave -noupdate /hdl_top/intf/sclk
add wave -noupdate -color Blue /hdl_top/intf/mosi0
add wave -noupdate -color Blue /hdl_top/intf/miso0
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {30 ns} 1} {{Cursor 2} {90 ns} 1} {{Cursor 3} {169 ns} 1} {{Cursor 4} {190 ns} 1} {{Cursor 5} {1730 ns} 0}
quietly wave cursor active 5
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
configure wave -timelineunits ns
update
WaveRestoreZoom {0 ns} {2321 ns}
