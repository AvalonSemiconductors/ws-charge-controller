v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 120 -20 120 170 {lab=B}
N 60 -20 60 170 {lab=A}
N -80 200 -80 230 {lab=#net1}
N -120 170 -120 260 {lab=EN}
N -80 120 -80 140 {lab=VDD}
N -80 170 -70 170 {lab=VDD}
N -70 140 -70 170 {lab=VDD}
N -80 140 -70 140 {lab=VDD}
N 90 -20 90 20 {lab=VDD}
N -80 290 -80 310 {lab=VSS}
N -80 260 -70 260 {lab=VSS}
N -70 260 -70 290 {lab=VSS}
N -80 290 -70 290 {lab=VSS}
N 90 120 90 170 {lab=VSS}
N 10 -250 50 -250 {lab=VSS}
N 10 -220 50 -220 {lab=VDD}
N -160 210 -120 210 {lab=EN}
N 40 70 60 70 {lab=A}
N 120 70 140 70 {lab=B}
N -80 210 90 210 {lab=#net1}
N -150 -60 -150 210 {lab=EN}
N -150 -60 90 -60 {lab=EN}
C {symbols/pfet_06v0.sym} 90 -40 1 0 {name=M1
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
C {symbols/nfet_06v0.sym} 90 190 3 0 {name=M2
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
C {symbols/pfet_06v0.sym} -100 170 0 0 {name=M3
L=0.55u
W=1u
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
C {symbols/nfet_06v0.sym} -100 260 0 0 {name=M4
L=0.70u
W=1u
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
C {lab_pin.sym} -80 120 0 0 {name=p2 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 90 20 3 0 {name=p1 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -80 310 0 0 {name=p3 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 90 120 1 0 {name=p4 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 10 -250 0 0 {name=p26 sig_type=std_logic lab=VSS}
C {iopin.sym} 50 -250 0 0 {name=p27 lab=VSS}
C {lab_pin.sym} 10 -220 0 0 {name=p30 sig_type=std_logic lab=VDD}
C {iopin.sym} 50 -220 0 0 {name=p31 lab=VDD}
C {ipin.sym} -160 210 0 0 {name=p5 lab=EN}
C {iopin.sym} 140 70 0 0 {name=p6 lab=B}
C {iopin.sym} 40 70 2 0 {name=p7 lab=A}
