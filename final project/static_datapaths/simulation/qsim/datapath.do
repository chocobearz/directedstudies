onerror {exit -code 1}
vlib work
vcom -work work datapath.vho
vcom -work work Waveform9.vwf.vht
vsim -novopt -c -t 1ps -sdfmax datapath_test_vhd_vec_tst/i1=datapath_vhd.sdo -L cycloneive -L altera -L altera_mf -L 220model -L sgate -L altera_lnsim work.datapath_test_vhd_vec_tst
vcd file -direction datapath.msim.vcd
vcd add -internal datapath_test_vhd_vec_tst/*
vcd add -internal datapath_test_vhd_vec_tst/i1/*
proc simTimestamp {} {
    echo "Simulation time: $::now ps"
    if { [string equal running [runStatus]] } {
        after 2500 simTimestamp
    }
}
after 2500 simTimestamp
run -all
quit -f
