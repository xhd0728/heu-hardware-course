onerror {exit -code 1}
vlib work
vlog -work work BUS2130.vo
vlog -work work Waveform.vwf.vt
vsim -novopt -c -t 1ps -L cycloneive_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate_ver -L altera_lnsim_ver work.BUS2130_vlg_vec_tst
vcd file -direction BUS2130.msim.vcd
vcd add -internal BUS2130_vlg_vec_tst/*
vcd add -internal BUS2130_vlg_vec_tst/i1/*
proc simTimestamp {} {
    echo "Simulation time: $::now ps"
    if { [string equal running [runStatus]] } {
        after 2500 simTimestamp
    }
}
after 2500 simTimestamp
run -all
quit -f
