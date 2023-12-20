onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib uram_wex8_opt

do {wave.do}

view wave
view structure
view signals

do {uram_wex8.udo}

run -all

quit -force
