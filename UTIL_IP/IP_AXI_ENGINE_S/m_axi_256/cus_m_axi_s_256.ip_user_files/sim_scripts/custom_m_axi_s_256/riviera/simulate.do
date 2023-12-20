onbreak {quit -force}
onerror {quit -force}

asim +access +r +m+custom_m_axi_s_256 -L xpm -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.custom_m_axi_s_256 xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {custom_m_axi_s_256.udo}

run -all

endsim

quit -force
