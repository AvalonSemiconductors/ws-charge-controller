v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -190 -190 -30 -190 {lab=VDD}
N -110 -30 -40 -30 {lab=VDD}
N -40 -30 50 -30 {lab=VDD}
N -160 0 -150 0 {lab=MINUS}
N 90 0 100 0 {lab=PLUS}
N -110 0 50 0 {lab=VDD}
N -30 -190 0 -190 {lab=VDD}
N 50 30 50 80 {lab=#net1}
N -110 30 -110 80 {lab=#net2}
N -70 110 10 110 {lab=#net2}
N -50 60 -50 110 {lab=#net2}
N -110 60 -50 60 {lab=#net2}
N -180 170 -110 170 {lab=VSS}
N -110 150 -110 170 {lab=VSS}
N -110 140 -110 150 {lab=VSS}
N -110 170 50 170 {lab=VSS}
N 50 140 50 170 {lab=VSS}
N -120 110 -110 110 {lab=VSS}
N -120 110 -120 140 {lab=VSS}
N -120 140 -110 140 {lab=VSS}
N 50 110 60 110 {lab=VSS}
N 60 110 60 140 {lab=VSS}
N 50 140 60 140 {lab=VSS}
N 0 -190 230 -190 {lab=VDD}
N 230 -190 230 -160 {lab=VDD}
N 230 -130 240 -130 {lab=VDD}
N 240 -160 240 -130 {lab=VDD}
N 230 -160 240 -160 {lab=VDD}
N 230 -100 230 80 {lab=OUT}
N 50 170 230 170 {lab=VSS}
N 230 140 230 170 {lab=VSS}
N 230 110 240 110 {lab=VSS}
N 240 110 240 140 {lab=VSS}
N 230 140 240 140 {lab=VSS}
N -280 150 -280 170 {lab=VSS}
N -300 170 -280 170 {lab=VSS}
N -280 170 -180 170 {lab=VSS}
N 50 50 190 50 {lab=#net1}
N 190 50 190 110 {lab=#net1}
N 200 30 230 30 {lab=OUT}
N 140 30 140 50 {lab=#net1}
N 190 -130 190 50 {lab=#net1}
N 0 -190 0 -30 {lab=VDD}
N 0 -30 -0 -0 {lab=VDD}
C {ipin.sym} -190 -190 0 0 {name=p1 lab=VDD}
C {ipin.sym} 100 0 2 0 {name=p2 lab=PLUS}
C {ipin.sym} -300 170 0 0 {name=p3 lab=VSS}
C {opin.sym} 230 -20 0 0 {name=p4 lab=OUT}
C {ipin.sym} -160 0 2 1 {name=p5 lab=MINUS}
C {symbols/pfet_06v0.sym} 210 -130 0 0 {name=M3
L=1.1u
W=64u
nf=4
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
C {symbols/pfet_06v0.sym} -130 0 0 0 {name=M4
L=1.1u
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
C {symbols/pfet_06v0.sym} 70 0 0 1 {name=M5
L=1.1u
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
C {symbols/nfet_06v0.sym} -90 110 0 1 {name=M6
L=1.4u
W=3u
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
C {symbols/nfet_06v0.sym} 30 110 0 0 {name=M7
L=1.4u
W=3u
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
C {symbols/nfet_06v0.sym} 210 110 0 0 {name=M8
L=1.4u
W=64u
nf=4
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
C {symbols/cap_mim_2f0fF.sym} 170 30 1 0 {name=C1
W=5e-6
L=5e-6
model=cap_mim_2f0fF
spiceprefix=X
m=1}
