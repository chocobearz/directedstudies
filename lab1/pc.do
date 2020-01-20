onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /programcounter/load
add wave -noupdate /programcounter/clock
add wave -noupdate /programcounter/clear
add wave -noupdate /programcounter/inc
add wave -noupdate /programcounter/pc
add wave -noupdate /programcounter/Y
add wave -noupdate /programcounter/addr
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {455821 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 155
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
WaveRestoreZoom {0 ps} {800 ns}
view wave 
wave clipboard store
wave create -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 50ns sim:/programcounter/load 
wave modify -driver freeze -pattern random -initialvalue 0 -period 200ps -random_type Uniform -seed 5 -starttime 0ns -endtime 800ns Edit:/programcounter/load 
wave modify -driver freeze -pattern random -initialvalue 0 -period 100ps -random_type Uniform -seed 5 -starttime 0ns -endtime 800ns Edit:/programcounter/load 
wave modify -driver freeze -pattern random -initialvalue 0 -period 100ps -random_type Normal -seed 5 -starttime 0ns -endtime 800ns Edit:/programcounter/load 
wave modify -driver freeze -pattern random -initialvalue 0 -period 100ps -random_type Uniform -seed 5 -starttime 0ns -endtime 800ns Edit:/programcounter/load 
wave modify -driver freeze -pattern random -initialvalue 0 -period 50ps -random_type Uniform -seed 5 -starttime 0ns -endtime 800ns Edit:/programcounter/load 
wave modify -driver freeze -pattern random -initialvalue 0 -period 5ps -random_type Uniform -seed 5 -starttime 0ns -endtime 800ns Edit:/programcounter/load 
wave modify -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 50ns Edit:/programcounter/load 
wave modify -driver freeze -pattern constant -value 1 -starttime 250ns -endtime 475ns Edit:/programcounter/load 
wave modify -driver freeze -pattern constant -value 0 -starttime 250ns -endtime 475ns Edit:/programcounter/load 
wave create -driver freeze -pattern clock -initialvalue 0 -period 100ns -dutycycle 50 -starttime 0ns -endtime 800ns sim:/programcounter/clock 
wave modify -driver freeze -pattern constant -value 0 -starttime 225ns -endtime 475ns Edit:/programcounter/load 
wave modify -driver freeze -pattern constant -value 1 -starttime 35ns -endtime 225ns Edit:/programcounter/load 
wave create -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 800ns sim:/programcounter/clear 
wave create -driver freeze -pattern constant -value 0 -starttime 0ms -endtime 800ms sim:/programcounter/inc 
wave create -driver freeze -pattern random -initialvalue UUUUUUUU -period 50ns -random_type Uniform -seed 5 -range 7 0 -starttime 0ns -endtime 800ns sim:/programcounter/addr 
WaveExpandAll -1
wave modify -driver freeze -pattern random -initialvalue UUUUUUUU -period 100ns -random_type Uniform -seed 5 -range 7 0 -starttime 0ns -endtime 800ns Edit:/programcounter/addr 
wave modify -driver freeze -pattern constant -value 1 -starttime 125ns -endtime 210ns Edit:/programcounter/clear 
wave modify -driver freeze -pattern constant -value 1 -starttime 475ns -endtime 630ns Edit:/programcounter/clear 
wave modify -driver freeze -pattern constant -value 1 -starttime 400ns -endtime 800ns Edit:/programcounter/inc 
WaveCollapseAll -1
wave clipboard restore
