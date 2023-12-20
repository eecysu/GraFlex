onbreak {quit -force}
onerror {quit -force}

asim +access +r +m+uram_wex8 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.uram_wex8 xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {uram_wex8.udo}

run -all

endsim

quit -force
