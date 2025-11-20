v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -30 50 -30 70 {lab=GND}
N -30 50 70 50 {lab=GND}
N 70 0 70 50 {lab=GND}
N -30 -40 -30 -10 {lab=IN}
N -30 -40 20 -40 {lab=IN}
N 70 -140 70 -80 {lab=VDD}
N -160 -20 -160 10 {lab=GND}
N -160 -140 -160 -80 {lab=VDD}
N 150 -40 200 -40 {lab=OUT}
C {SAR ADC project/inv2.sym} 30 80 0 0 {name=x1}
C {vdd.sym} 70 -140 0 0 {name=l1 lab=VDD}
C {vdd.sym} -160 -140 0 0 {name=l2 lab=VDD}
C {vsource.sym} -160 -50 0 0 {name=V1 value=3.3 savecurrent=false}
C {vsource.sym} -30 20 0 0 {name=VIN value=3.3 savecurrent=false}
C {gnd.sym} -160 10 0 0 {name=l3 lab=GND}
C {gnd.sym} -30 70 0 0 {name=l4 lab=GND}
C {noconn.sym} 200 -40 2 0 {name=l5}
C {lab_wire.sym} -10 -40 0 0 {name=p1 sig_type=std_logic lab=IN
}
C {lab_wire.sym} 180 -40 0 0 {name=p2 sig_type=std_logic lab=OUT}
C {devices/code_shown.sym} 260 -50 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/code_shown.sym} 240 -560 0 0 {name=NGSPICE1 only_toplevel=true
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
let ivdd = -v1#branch*1e4
plot vout vin ivdd

setplot op1

write inverter_tb.raw
.endc
"}
C {title.sym} -190 130 0 0 {name=l6 author="Dharma, Supervised by Dhanurangga
"}
