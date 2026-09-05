v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 0 -40 -0 -20 {lab=#net1}
N -60 -120 0 -120 {lab=VDD}
N 0 -120 0 -100 {lab=VDD}
N 0 40 0 60 {lab=Y}
N 0 120 0 140 {lab=#net2}
N -60 230 -0 230 {lab=VSS}
N 0 200 0 230 {lab=VSS}
N 0 170 10 170 {lab=VSS}
N 10 170 10 200 {lab=VSS}
N 0 200 10 200 {lab=VSS}
N 0 90 10 90 {lab=VSS}
N 10 90 10 170 {lab=VSS}
N 0 -100 10 -100 {lab=VDD}
N 10 -100 10 -70 {lab=VDD}
N 0 -70 10 -70 {lab=VDD}
N 10 -70 10 10 {lab=VDD}
N 0 10 10 10 {lab=VDD}
N -40 -70 -40 10 {lab=A}
N -40 90 -40 170 {lab=A}
N -40 10 -40 90 {lab=A}
N -90 50 -40 50 {lab=A}
N 0 -30 160 -30 {lab=#net1}
N 160 -30 160 10 {lab=#net1}
N 10 -70 190 -70 {lab=VDD}
N 190 -70 190 10 {lab=VDD}
N 0 50 190 50 {lab=Y}
N -0 130 160 130 {lab=#net2}
N 160 90 160 130 {lab=#net2}
N 10 170 190 170 {lab=VSS}
N 190 90 190 170 {lab=VSS}
N 190 50 300 50 {lab=Y}
N 190 170 250 170 {lab=VSS}
N 250 10 250 170 {lab=VSS}
N 220 10 250 10 {lab=VSS}
N 190 -70 270 -70 {lab=VDD}
N 270 -70 270 90 {lab=VDD}
N 220 90 270 90 {lab=VDD}
C {symbols/pfet_06v0.sym} -20 -70 0 0 {name=M1
L=0.55u
W=4u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_06v0
spiceprefix=X
}
C {symbols/pfet_06v0.sym} -20 10 0 0 {name=M2
L=0.55u
W=4u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_06v0
spiceprefix=X
}
C {ipin.sym} -60 -120 0 0 {name=p1 lab=VDD}
C {symbols/nfet_06v0.sym} -20 90 0 0 {name=M3
L=0.70u
W=4u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_06v0
spiceprefix=X
}
C {symbols/nfet_06v0.sym} -20 170 0 0 {name=M4
L=0.70u
W=4u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_06v0
spiceprefix=X
}
C {ipin.sym} -60 230 0 0 {name=p3 lab=VSS}
C {ipin.sym} -90 50 0 0 {name=p2 lab=A}
C {symbols/pfet_06v0.sym} 190 30 3 0 {name=M5
L=0.55u
W=2u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_06v0
spiceprefix=X
}
C {symbols/nfet_06v0.sym} 190 70 1 0 {name=M6
L=0.70u
W=2u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_06v0
spiceprefix=X
}
C {opin.sym} 300 50 0 0 {name=p4 lab=Y}
