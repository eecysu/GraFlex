onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib custom_m_axi_s_256_opt

do {wave.do}

view wave
view structure
view signals

do {custom_m_axi_s_256.udo}

run -all

quit -force
