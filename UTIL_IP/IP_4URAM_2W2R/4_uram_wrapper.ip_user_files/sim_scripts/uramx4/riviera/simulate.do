onbreak {quit -force}
onerror {quit -force}

asim +access +r +m+uramx4 -L xpm -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.uramx4 xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {uramx4.udo}

run -all

endsim

quit -force
