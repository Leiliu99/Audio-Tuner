vlib work

# compile all verilog modules in mux.v to working dir
# could also have multiple verilog files
vlog VGA_display.v

#load simulation using mux as the top level simulation module
vsim VGA_display

#log all signals and add some signals to waveform window
log {/*}
# add wave {/*} would add all items in top level simulation module
add wave {/*}

#white square at the bottom right of the square
force {SW[9]} 1
force {SW[8]} 1
force {SW[7]} 1
force {SW[6]} 1
force {SW[5]} 1
force {SW[4]} 1
force {SW[3]} 1
force {SW[2]} 1
force {SW[1]} 1
force {SW[0]} 1
force {KEY[3]} 1
run 10ns

force {SW[9]} 1
force {SW[8]} 1
force {SW[7]} 1
force {SW[6]} 1
force {SW[5]} 1
force {SW[4]} 1
force {SW[3]} 1
force {SW[2]} 1
force {SW[1]} 1
force {SW[0]} 1
force {KEY[1]} 1
run 10ns


#light blue square at 15 x 4
force {SW[9]} 0
force {SW[8]} 1
force {SW[7]} 1
force {SW[6]} 0
force {SW[5]} 0
force {SW[4]} 0
force {SW[3]} 1
force {SW[2]} 1
force {SW[1]} 1
force {SW[0]} 1
force {KEY[3]} 1
run 10ns

force {SW[9]} 0
force {SW[8]} 1
force {SW[7]} 1
force {SW[6]} 0
force {SW[5]} 0
force {SW[4]} 0
force {SW[3]} 0
force {SW[2]} 1
force {SW[1]} 1
force {SW[0]} 0
force {KEY[1]} 1
run 10ns

