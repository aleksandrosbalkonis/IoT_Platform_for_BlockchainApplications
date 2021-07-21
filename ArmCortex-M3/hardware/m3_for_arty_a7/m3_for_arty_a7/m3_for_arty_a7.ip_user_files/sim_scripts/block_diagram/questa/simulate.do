onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib m3_for_arty_a7_opt

do {wave.do}

view wave
view structure
view signals

do {m3_for_arty_a7.udo}

run -all

quit -force
