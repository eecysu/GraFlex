onbreak {quit -force}
onerror {quit -force}

asim +access +r +m+uram_wex16 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.uram_wex16 xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {uram_wex16.udo}

run -all

endsim

quit -force
