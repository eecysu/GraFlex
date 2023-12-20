onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib uramx4_opt

do {wave.do}

view wave
view structure
view signals

do {uramx4.udo}

run -all

quit -force
