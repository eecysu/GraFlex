onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib custom_m_axi_s_opt

do {wave.do}

view wave
view structure
view signals

do {custom_m_axi_s.udo}

run -all

quit -force
