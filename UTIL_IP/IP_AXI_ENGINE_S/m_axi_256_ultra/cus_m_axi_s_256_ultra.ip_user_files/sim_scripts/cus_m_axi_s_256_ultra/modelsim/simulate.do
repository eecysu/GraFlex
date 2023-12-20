onbreak {quit -f}
onerror {quit -f}

vsim -voptargs="+acc" -L xpm -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -lib xil_defaultlib xil_defaultlib.cus_m_axi_s_256_ultra xil_defaultlib.glbl

do {wave.do}

view wave
view structure
view signals

do {cus_m_axi_s_256_ultra.udo}

run -all

quit -force
