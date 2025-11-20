v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 740 -480 740 -380 {lab=OUT}
N 610 -480 610 -380 {lab=OUT}
N 320 -420 320 -380 {lab=OUT}
N 320 -420 470 -420 {lab=OUT}
N 470 -420 470 -380 {lab=OUT}
N 400 -480 400 -420 {lab=OUT}
N -190 -420 -190 -380 {lab=OUT}
N -190 -420 190 -420 {lab=OUT}
N 190 -420 190 -380 {lab=OUT}
N -60 -420 -60 -380 {lab=OUT}
N 60 -420 60 -380 {lab=OUT}
N -190 -320 -190 -280 {lab=D3}
N -190 -280 190 -280 {lab=D3}
N 190 -320 190 -280 {lab=D3}
N -60 -320 -60 -280 {lab=D3}
N 60 -320 60 -280 {lab=D3}
N 320 -320 320 -290 {lab=D2}
N 320 -290 470 -290 {lab=D2}
N 470 -320 470 -290 {lab=D2}
N 610 -320 610 -290 {lab=D1}
N 740 -320 740 -290 {lab=GND}
N 0 -480 0 -420 {lab=OUT}
N 0 -480 860 -480 {lab=OUT}
N -390 195 -390 365 {lab=#net1}
N -270 75 -180 75 {lab=D1}
N -180 75 -180 525 {lab=D1}
N -270 525 -180 525 {lab=D1}
N -180 275 -80 275 {lab=D1}
N -390 -145 -390 -85 {lab=IN1}
N -760 -145 -390 -145 {lab=IN1}
N -760 -145 -760 695 {lab=IN1}
N -760 695 -390 695 {lab=IN1}
N -390 645 -390 695 {lab=IN1}
N -760 285 -690 285 {lab=IN1}
N -840 285 -760 285 {lab=IN1}
N -560 -5 -510 -5 {lab=VDD}
N -560 75 -510 75 {lab=VDD}
N -560 155 -510 155 {lab=GND}
N -560 445 -510 445 {lab=VDD}
N -560 525 -510 525 {lab=GND}
N -560 605 -510 605 {lab=GND}
N -640 195 -640 245 {lab=VDD}
N -440 -315 -440 -285 {lab=GND}
N -440 -435 -440 -375 {lab=VDD}
N -900 285 -900 295 {lab=IN1}
N -900 285 -840 285 {lab=IN1}
N -900 355 -900 395 {lab=GND}
N -640 330 -640 365 {lab=GND}
N -555 285 -390 285 {lab=#net1}
N 510 185 510 355 {lab=#net2}
N 630 65 720 65 {lab=D2}
N 720 65 720 515 {lab=D2}
N 630 515 720 515 {lab=D2}
N 720 265 820 265 {lab=D2}
N 510 -155 510 -95 {lab=IN2}
N 140 -155 510 -155 {lab=IN2}
N 140 -155 140 685 {lab=IN2}
N 140 685 510 685 {lab=IN2}
N 510 635 510 685 {lab=IN2}
N 140 275 210 275 {lab=IN2}
N 60 275 140 275 {lab=IN2}
N 340 -15 390 -15 {lab=VDD}
N 340 65 390 65 {lab=VDD}
N 340 145 390 145 {lab=GND}
N 340 435 390 435 {lab=VDD}
N 340 515 390 515 {lab=GND}
N 340 595 390 595 {lab=GND}
N 260 185 260 235 {lab=VDD}
N 0 275 0 285 {lab=IN2}
N 0 275 60 275 {lab=IN2}
N 0 345 0 385 {lab=GND}
N 260 320 260 355 {lab=GND}
N 345 275 510 275 {lab=#net2}
N 1390 175 1390 345 {lab=#net3}
N 1510 55 1600 55 {lab=D3}
N 1600 55 1600 505 {lab=D3}
N 1510 505 1600 505 {lab=D3}
N 1600 255 1700 255 {lab=D3}
N 1390 -165 1390 -105 {lab=IN3}
N 1020 -165 1390 -165 {lab=IN3}
N 1020 -165 1020 675 {lab=IN3}
N 1020 675 1390 675 {lab=IN3}
N 1390 625 1390 675 {lab=IN3}
N 1020 265 1090 265 {lab=IN3}
N 940 265 1020 265 {lab=IN3}
N 1220 -25 1270 -25 {lab=VDD}
N 1220 55 1270 55 {lab=VDD}
N 1220 135 1270 135 {lab=GND}
N 1220 425 1270 425 {lab=VDD}
N 1220 505 1270 505 {lab=GND}
N 1220 585 1270 585 {lab=GND}
N 1140 175 1140 225 {lab=VDD}
N 880 265 880 275 {lab=IN3}
N 880 265 940 265 {lab=IN3}
N 880 335 880 375 {lab=GND}
N 1140 310 1140 345 {lab=GND}
N 1225 265 1390 265 {lab=#net3}
N -0 -280 0 -250 {lab=D3}
N 400 -290 400 -270 {lab=D2}
C {devices/code_shown.sym} 1080 -420 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
.lib $::180MCU_MODELS/sm141064.ngspice cap_mim
.lib $::180MCU_MODELS/sm141064.ngspice res_typical
.lib $::180MCU_MODELS/sm141064.ngspice moscap_typical
.lib $::180MCU_MODELS/sm141064.ngspice mimcap_typical
* .lib $::180MCU_MODELS/sm141064.ngspice res_statistical
"}
C {symbols/cap_mim_2f0fF.sym} 610 -350 2 0 {name=C1
W=10e-6
L=10e-6
model=cap_mim_2f0fF
spiceprefix=X
m=1}
C {symbols/cap_mim_2f0fF.sym} 470 -350 2 0 {name=C2
W=10e-6
L=10e-6
model=cap_mim_2f0fF
spiceprefix=X
m=1}
C {symbols/cap_mim_2f0fF.sym} 740 -350 2 0 {name=C4
W=10e-6
L=10e-6
model=cap_mim_2f0fF
spiceprefix=X
m=1}
C {symbols/cap_mim_2f0fF.sym} 320 -350 2 0 {name=C5
W=10e-6
L=10e-6
model=cap_mim_2f0fF
spiceprefix=X
m=1}
C {symbols/cap_mim_2f0fF.sym} 190 -350 2 0 {name=C3
W=10e-6
L=10e-6
model=cap_mim_2f0fF
spiceprefix=X
m=1}
C {symbols/cap_mim_2f0fF.sym} 60 -350 2 0 {name=C6
W=10e-6
L=10e-6
model=cap_mim_2f0fF
spiceprefix=X
m=1}
C {symbols/cap_mim_2f0fF.sym} -60 -350 2 0 {name=C7
W=10e-6
L=10e-6
model=cap_mim_2f0fF
spiceprefix=X
m=1}
C {symbols/cap_mim_2f0fF.sym} -190 -350 2 0 {name=C8
W=10e-6
L=10e-6
model=cap_mim_2f0fF
spiceprefix=X
m=1}
C {SAR ADC project/inv2.sym} -680 405 0 0 {name=x1}
C {SAR ADC project/T_gate.sym} 90 215 0 0 {name=x2}
C {SAR ADC project/T_gate.sym} 90 665 0 0 {name=x3}
C {gnd.sym} -640 365 0 0 {name=l2 lab=GND}
C {gnd.sym} -560 605 1 0 {name=l3 lab=GND}
C {gnd.sym} -550 155 1 0 {name=l4 lab=GND}
C {gnd.sym} -560 525 1 0 {name=l5 lab=GND}
C {vdd.sym} -440 -435 0 0 {name=l6 lab=VDD}
C {vsource.sym} -440 -345 0 0 {name=V1 value=3.3 savecurrent=false}
C {gnd.sym} -440 -285 0 0 {name=l7 lab=GND}
C {vdd.sym} -640 195 0 1 {name=l8 lab=VDD}
C {vdd.sym} -550 445 3 0 {name=l9 lab=VDD}
C {vdd.sym} -560 -5 3 1 {name=l10 lab=VDD}
C {vsource.sym} -900 325 0 0 {name=VIN value=3.3 savecurrent=false}
C {gnd.sym} -900 390 0 0 {name=l14 lab=GND}
C {vdd.sym} -555 75 3 1 {name=l11 lab=VDD}
C {SAR ADC project/inv2.sym} 220 395 0 0 {name=x4}
C {SAR ADC project/T_gate.sym} 990 205 0 0 {name=x5}
C {SAR ADC project/T_gate.sym} 990 655 0 0 {name=x6}
C {gnd.sym} 260 355 0 0 {name=l1 lab=GND}
C {gnd.sym} 340 595 1 0 {name=l12 lab=GND}
C {gnd.sym} 350 145 1 0 {name=l13 lab=GND}
C {gnd.sym} 340 515 1 0 {name=l15 lab=GND}
C {vdd.sym} 260 185 0 1 {name=l16 lab=VDD}
C {vdd.sym} 350 435 3 0 {name=l17 lab=VDD}
C {vdd.sym} 340 -15 3 1 {name=l18 lab=VDD}
C {vsource.sym} 0 315 0 0 {name=VIN1 value=3.3 savecurrent=false}
C {gnd.sym} 0 380 0 0 {name=l19 lab=GND}
C {vdd.sym} 345 65 3 1 {name=l20 lab=VDD}
C {SAR ADC project/inv2.sym} 1100 385 0 0 {name=x7}
C {SAR ADC project/T_gate.sym} 1870 195 0 0 {name=x8}
C {SAR ADC project/T_gate.sym} 1870 645 0 0 {name=x9}
C {gnd.sym} 1140 345 0 0 {name=l21 lab=GND}
C {gnd.sym} 1220 585 1 0 {name=l22 lab=GND}
C {gnd.sym} 1230 135 1 0 {name=l23 lab=GND}
C {gnd.sym} 1220 505 1 0 {name=l24 lab=GND}
C {vdd.sym} 1140 175 0 1 {name=l25 lab=VDD}
C {vdd.sym} 1230 425 3 0 {name=l26 lab=VDD}
C {vdd.sym} 1220 -25 3 1 {name=l27 lab=VDD}
C {vsource.sym} 880 305 0 0 {name=VIN2 value=3.3 savecurrent=false}
C {gnd.sym} 880 370 0 0 {name=l28 lab=GND}
C {vdd.sym} 1225 55 3 1 {name=l29 lab=VDD}
C {lab_wire.sym} 860 -480 0 0 {name=p5 sig_type=std_logic lab=OUT}
C {devices/code_shown.sym} 1715 -425 0 0 {name=NGSPICE1 only_toplevel=true
value="
.control
save all

alter @VIN[DC] = 0.0
alter @VIN[PULSE] = [ 0 3.3 100u 300p 300p 50u 100u 0 ]

alter @VIN1[DC] = 0.0
alter @VIN1[PULSE] = [ 0 3.3 150u 300p 300p 100u 200u 0 ]

alter @VIN2[DC] = 0.0
alter @VIN2[PULSE] = [ 0 3.3 250u 300p 300p 200u 400u 0 ]

tran 1u 2m

write 3bit_CDAC_tb.raw
.endc
"}
C {lab_pin.sym} 0 -255 3 0 {name=p1 sig_type=std_logic lab=D3}
C {lab_pin.sym} 400 -275 3 0 {name=p2 sig_type=std_logic lab=D2}
C {lab_pin.sym} 610 -290 3 0 {name=p3 sig_type=std_logic lab=D1
}
C {lab_pin.sym} -80 275 2 0 {name=p4 sig_type=std_logic lab=D1
}
C {lab_pin.sym} 820 265 2 0 {name=p6 sig_type=std_logic lab=D2}
C {lab_pin.sym} 1700 255 2 0 {name=p7 sig_type=std_logic lab=D3}
C {lab_wire.sym} -815 285 0 0 {name=p8 sig_type=std_logic lab=IN1
}
C {lab_wire.sym} 110 275 0 0 {name=p9 sig_type=std_logic lab=IN2
}
C {lab_wire.sym} 960 265 0 0 {name=p10 sig_type=std_logic lab=IN3}
C {gnd.sym} 740 -290 0 0 {name=l30 lab=GND}
