onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib uramx8_opt

do {wave.do}

view wave
view structure
view signals

do {uramx8.udo}

run -all

quit -force
