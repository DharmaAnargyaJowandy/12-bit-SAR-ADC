v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 550 -660 550 -490 {lab=#net1}
N 670 -780 760 -780 {lab=OUT}
N 760 -780 760 -330 {lab=OUT}
N 670 -330 760 -330 {lab=OUT}
N 760 -580 860 -580 {lab=OUT}
N 550 -1000 550 -940 {lab=IN}
N 180 -1000 550 -1000 {lab=IN}
N 180 -1000 180 -160 {lab=IN}
N 180 -160 550 -160 {lab=IN}
N 550 -210 550 -160 {lab=IN}
N 180 -570 250 -570 {lab=IN}
N 100 -570 180 -570 {lab=IN}
N 380 -860 430 -860 {lab=VDD}
N 380 -780 430 -780 {lab=VDD}
N 380 -700 430 -700 {lab=GND}
N 380 -410 430 -410 {lab=VDD}
N 380 -330 430 -330 {lab=GND}
N 380 -250 430 -250 {lab=GND}
N 300 -660 300 -610 {lab=VDD}
N -120 -540 -120 -510 {lab=GND}
N -120 -660 -120 -600 {lab=VDD}
N 40 -570 40 -560 {lab=IN}
N 40 -570 100 -570 {lab=IN}
N 40 -500 40 -460 {lab=GND}
N 885 -580 885 -550 {lab=OUT}
N 855 -580 885 -580 {lab=OUT}
N 885 -490 885 -465 {lab=GND}
N 300 -525 300 -490 {lab=GND}
N 385 -570 550 -570 {lab=#net1}
C {title.sym} -10 -30 0 0 {name=l1 author="Dharma, supervised by dhanurangga"}
C {SAR ADC project/inv2.sym} 260 -450 0 0 {name=x1}
C {SAR ADC project/T_gate.sym} 1030 -640 0 0 {name=x2}
C {SAR ADC project/T_gate.sym} 1030 -190 0 0 {name=x3}
C {gnd.sym} 300 -490 0 0 {name=l2 lab=GND}
C {gnd.sym} 380 -250 1 0 {name=l3 lab=GND}
C {gnd.sym} 390 -700 1 0 {name=l4 lab=GND}
C {gnd.sym} 380 -330 1 0 {name=l5 lab=GND}
C {vdd.sym} -120 -660 0 0 {name=l6 lab=VDD}
C {vsource.sym} -120 -570 0 0 {name=V1 value=3.3 savecurrent=false}
C {gnd.sym} -120 -510 0 0 {name=l7 lab=GND}
C {vdd.sym} 300 -660 0 1 {name=l8 lab=VDD}
C {vdd.sym} 390 -410 3 0 {name=l9 lab=VDD}
C {vdd.sym} 380 -860 3 1 {name=l10 lab=VDD}
C {vsource.sym} 40 -530 0 0 {name=VIN value=3.3 savecurrent=false}
C {gnd.sym} 40 -465 0 0 {name=l14 lab=GND}
C {lab_wire.sym} 100 -570 0 0 {name=p1 sig_type=std_logic lab=IN}
C {lab_wire.sym} 825 -580 0 0 {name=p2 sig_type=std_logic lab=OUT}
C {devices/code_shown.sym} 990 -935 0 0 {name=NGSPICE1 only_toplevel=true
value="
.control
save all

alter @VIN[DC] = 0.0
alter @VIN[PULSE] = [ 0 3.3 0 10u 10u 480u 1m 0 ]

op
dc vin 0 3.3 0.01
tran 1u 2m

write switch_tb.raw
.endc
"}
C {vdd.sym} 385 -780 3 1 {name=l11 lab=VDD}
C {gnd.sym} 885 -470 0 0 {name=l12 lab=GND}
C {devices/code_shown.sym} 1000 -630 0 0 {name=MODELS1 only_toplevel=true
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
C {symbols/cap_mim_1f5fF.sym} 885 -520 0 0 {name=C1
W=10e-6
L=10e-6
model=cap_mim_1f5fF
spiceprefix=X
m=1}
