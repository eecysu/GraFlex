onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib uramx16_opt

do {wave.do}

view wave
view structure
view signals

do {uramx16.udo}

run -all

quit -force
