onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib uram_wex16_opt

do {wave.do}

view wave
view structure
view signals

do {uram_wex16.udo}

run -all

quit -force
