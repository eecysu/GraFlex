onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib uram_wex4_opt

do {wave.do}

view wave
view structure
view signals

do {uram_wex4.udo}

run -all

quit -force
