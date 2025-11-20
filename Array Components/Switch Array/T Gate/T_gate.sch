v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 200 -430 200 -370 {lab=Vcc}
N 200 -260 200 -210 {lab=Vss}
N 130 -430 170 -430 {lab=Vin}
N 130 -430 130 -210 {lab=Vin}
N 130 -210 170 -210 {lab=Vin}
N 230 -210 270 -210 {lab=Vout}
N 270 -430 270 -210 {lab=Vout}
N 230 -430 270 -430 {lab=Vout}
N 200 -520 200 -470 {lab=!control}
N 50 -310 130 -310 {lab=Vin}
N 270 -310 310 -310 {lab=Vout}
N 200 -170 200 -120 {lab=control}
C {title.sym} -200 30 0 0 {name=l1 author="Dharma, Supervised by : Dhanurangga
"}
C {symbols/nfet_03v3.sym} 200 -190 3 0 {name=M1
L=0.36u
W=10u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/pfet_03v3.sym} 200 -450 1 0 {name=M2
L=0.36u
W=35u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {iopin.sym} 310 -310 0 0 {name=p1 lab=Vout}
C {iopin.sym} 50 -310 2 0 {name=p2 lab=Vin}
C {iopin.sym} 200 -520 3 0 {name=p3 lab=!control}
C {iopin.sym} 200 -120 1 0 {name=p4 lab=control}
C {iopin.sym} 200 -260 3 0 {name=p5 lab=Vss
}
C {iopin.sym} 200 -370 1 0 {name=p6 lab=Vcc}
