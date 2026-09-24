v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 80 -50 80 -30 {lab=DVDD}
N 80 30 80 50 {lab=BAT}
N 80 -30 90 -30 {lab=DVDD}
N 90 -30 90 -0 {lab=DVDD}
N 80 -0 90 -0 {lab=DVDD}
N 20 -0 40 -0 {lab=GATE}
N 30 -0 30 120 {lab=GATE}
N 30 120 200 120 {lab=GATE}
N 200 10 200 120 {lab=GATE}
N 80 -40 240 -40 {lab=DVDD}
N 240 -40 240 -20 {lab=DVDD}
N 240 10 250 10 {lab=DVDD}
N 250 -20 250 10 {lab=DVDD}
N 240 -20 250 -20 {lab=DVDD}
N 80 40 240 40 {lab=BAT}
C {symbols/pfet_06v0.sym} 60 0 0 0 {name=M1
L=1u
W=46.72u
nf=10
m=7920
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_06v0
spiceprefix=X
}
C {iopin.sym} 80 -50 3 0 {name=p1 lab=DVDD}
C {iopin.sym} 80 50 1 0 {name=p2 lab=BAT}
C {ipin.sym} 20 0 0 0 {name=p3 lab=GATE}
C {symbols/pfet_06v0.sym} 220 10 0 0 {name=M2
L=1u
W=76.465u
nf=10
m=7260
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_06v0
spiceprefix=X
}
