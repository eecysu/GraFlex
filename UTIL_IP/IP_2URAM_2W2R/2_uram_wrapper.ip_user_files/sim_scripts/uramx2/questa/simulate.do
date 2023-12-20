onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib uramx2_opt

do {wave.do}

view wave
view structure
view signals

do {uramx2.udo}

run -all

quit -force
