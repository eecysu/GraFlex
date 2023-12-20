onbreak {quit -force}
onerror {quit -force}

asim +access +r +m+uramx16 -L xpm -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.uramx16 xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {uramx16.udo}

run -all

endsim

quit -force
