onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib cus_m_axi_s_256_ultra_opt

do {wave.do}

view wave
view structure
view signals

do {cus_m_axi_s_256_ultra.udo}

run -all

quit -force
