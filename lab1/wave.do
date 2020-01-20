view wave 
wave clipboard store
wave create -driver freeze -pattern clock -initialvalue 0 -period 100ns -dutycycle 50 -starttime 0ns -endtime 800ns sim:/programcounter/clock 
wave create -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 800ns sim:/programcounter/inc 
wave create -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 800ns sim:/programcounter/clear 
wave create -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 800ns sim:/programcounter/load 
wave create -driver freeze -pattern random -initialvalue UUUUUUUU -period 100ns -random_type Uniform -seed 5 -range 7 0 -starttime 0ns -endtime 800ns sim:/programcounter/addr 
WaveExpandAll -1
wave modify -driver freeze -pattern constant -value 1 -starttime 0ns -endtime 400ns Edit:/programcounter/inc 
wave modify -driver freeze -pattern constant -value 1 -starttime 0ns -endtime 800ns Edit:/programcounter/load 
wave modify -driver freeze -pattern constant -value 1 -starttime 0ns -endtime 50ns Edit:/programcounter/clear 
wave modify -driver freeze -pattern constant -value 1 -starttime 325ns -endtime 475ns Edit:/programcounter/clear 
wave modify -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 50ns Edit:/programcounter/load 
wave modify -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 100ns Edit:/programcounter/load 
WaveCollapseAll -1
wave clipboard restore
