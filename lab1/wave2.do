onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /instruction_fetch/K
add wave -noupdate /instruction_fetch/inst
add wave -noupdate /instruction_fetch/rd_addr
add wave -noupdate /instruction_fetch/addr
add wave -noupdate /instruction_fetch/clk
add wave -noupdate /instruction_fetch/clr
add wave -noupdate /instruction_fetch/inc
add wave -noupdate /instruction_fetch/ld
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {39324 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 193
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
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
WaveRestoreZoom {0 ps} {773579 ps}
view wave 
wave clipboard store
wave create -driver freeze -pattern constant -value 00000000 -range 7 0 -starttime 0ns -endtime 800ns sim:/instruction_fetch/addr 
WaveExpandAll -1
wave create -driver freeze -pattern clock -initialvalue 0 -period 100ns -dutycycle 50 -starttime 0ns -endtime 800ns sim:/instruction_fetch/clk 
wave create -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 800ns sim:/instruction_fetch/clr 
wave create -driver freeze -pattern clock -initialvalue 0 -period 100ns -dutycycle 50 -starttime 0ns -endtime 800ns sim:/instruction_fetch/inc 
wave create -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 800ns sim:/instruction_fetch/ld 
wave modify -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 800ns Edit:/instruction_fetch/inc 
wave modify -driver freeze -pattern constant -value 1 -starttime 0ns -endtime 800ns Edit:/instruction_fetch/ld 
wave modify -driver freeze -pattern constant -value 1 -starttime 0ns -endtime 30ns Edit:/instruction_fetch/clr 
wave modify -driver freeze -pattern constant -value 1 -starttime 400ns -endtime 800ns Edit:/instruction_fetch/inc 
wave modify -driver freeze -pattern constant -value 00000001 -range 7 0 -starttime 0ns -endtime 200ns Edit:/instruction_fetch/addr 
wave modify -driver freeze -pattern constant -value 00000011 -range 7 0 -starttime 200ns -endtime 350ns Edit:/instruction_fetch/addr 
wave modify -driver freeze -pattern constant -value 00000101 -range 7 0 -starttime 350ns -endtime 475ns Edit:/instruction_fetch/addr 
wave modify -driver freeze -pattern constant -value 00001101 -range 7 0 -starttime 475ns -endtime 520ns Edit:/instruction_fetch/addr 
wave modify -driver freeze -pattern constant -value 00001101 -range 7 0 -starttime 475ns -endtime 620ns Edit:/instruction_fetch/addr 
wave modify -driver freeze -pattern constant -value 00001001 -range 7 0 -starttime 620ns -endtime 800ns Edit:/instruction_fetch/addr 
WaveCollapseAll -1
wave clipboard restore
