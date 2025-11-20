v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -120 -540 -120 -510 {lab=GND}
N -120 -660 -120 -600 {lab=VDD}
N 420 -650 510 -650 {lab=OUT}
N 130 -730 180 -730 {lab=VDD}
N 130 -650 180 -650 {lab=IN}
N 130 -570 180 -570 {lab=GND}
N 40 -580 40 -550 {lab=GND}
N 40 -650 40 -640 {lab=IN}
N 40 -650 130 -650 {lab=IN}
N 300 -850 300 -810 {lab=GND}
N 300 -530 300 -440 {lab=VDD}
C {vdd.sym} -120 -660 0 0 {name=l6 lab=VDD}
C {vsource.sym} -120 -570 0 0 {name=V1 value=3.3 savecurrent=false}
C {gnd.sym} -120 -510 0 0 {name=l7 lab=GND}
C {SAR ADC project/T_gate.sym} 780 -510 0 0 {name=x2}
C {gnd.sym} 140 -570 1 0 {name=l4 lab=GND}
C {vdd.sym} 130 -730 3 1 {name=l10 lab=VDD}
C {vsource.sym} 40 -610 0 0 {name=VIN value=3.3 savecurrent=false}
C {gnd.sym} 40 -550 0 0 {name=l1 lab=GND}
C {devices/code_shown.sym} 550 -505 0 0 {name=MODELS1 only_toplevel=true
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
C {lab_wire.sym} 80 -650 0 0 {name=p1 sig_type=std_logic lab=IN}
C {lab_wire.sym} 465 -650 0 0 {name=p2 sig_type=std_logic lab=OUT}
C {vdd.sym} 300 -440 3 1 {name=l3 lab=VDD}
C {gnd.sym} 300 -850 1 0 {name=l5 lab=GND}
C {noconn.sym} 510 -650 0 0 {name=l2}
C {devices/code_shown.sym} 545 -970 0 0 {name=NGSPICE2 only_toplevel=true
value="
.control
save all

alter @VIN[DC] = 0.0
alter @VIN[PULSE] = [ 0 3.3 0 10u 10u 480u 1m 0 ]

op
dc vin 0 3.3 0.01
tran 1u 2m

setplot dc1
let vout = v(out)
plot vout

setplot tran1
let vout = v(out)
let vin = v(in)
plot vout vin 

write switch_tb.raw
.endc
"}
C {title.sym} -5 -295 0 0 {name=l8 author="Dharma, Supervised by : Dhanurangga
"}
