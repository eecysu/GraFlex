onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib custom_m_axi_128_opt

do {wave.do}

view wave
view structure
view signals

do {custom_m_axi_128.udo}

run -all

quit -force
