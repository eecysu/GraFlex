onbreak {quit -force}
onerror {quit -force}

asim +access +r +m+cus_m_axi_s_128_ultra -L xpm -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.cus_m_axi_s_128_ultra xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {cus_m_axi_s_128_ultra.udo}

run -all

endsim

quit -force
