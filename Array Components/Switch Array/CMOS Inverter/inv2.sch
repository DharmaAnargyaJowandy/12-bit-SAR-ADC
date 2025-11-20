v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 30 -140 70 -140 {lab=IN}
N 30 -140 30 -30 {lab=IN}
N 30 -30 70 -30 {lab=IN}
N -20 -90 30 -90 {lab=IN}
N 110 -230 110 -170 {lab=VDD}
N 110 -140 140 -140 {lab=VDD}
N 140 -200 140 -140 {lab=VDD}
N 110 -200 140 -200 {lab=VDD}
N 110 0 110 40 {lab=VSS}
N 110 -30 140 -30 {lab=VSS}
N 140 -30 140 20 {lab=VSS}
N 110 20 140 20 {lab=VSS}
N 110 -110 110 -60 {lab=OUT}
N 110 -90 230 -90 {lab=OUT}
C {symbols/nfet_03v3.sym} 90 -30 0 0 {name=M1
L=0.36u
W=2u
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
C {symbols/pfet_03v3.sym} 90 -140 0 0 {name=M2
L=0.36u
W=5u
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
C {iopin.sym} 110 -230 3 0 {name=p1 lab=VDD
}
C {iopin.sym} 110 40 1 0 {name=p2 lab=VSS}
C {ipin.sym} -20 -90 0 0 {name=p3 lab=IN}
C {opin.sym} 230 -90 0 0 {name=p4 lab=OUT
}
C {title.sym} -170 140 0 0 {name=l1 author="Dharma, Supervised by: Dhanurangga"}
