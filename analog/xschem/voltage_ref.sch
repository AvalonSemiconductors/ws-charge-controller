v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -70 -170 -30 -170 {lab=VDD}
N -30 -170 -30 -130 {lab=VDD}
N -40 -100 -30 -100 {lab=VDD}
N -40 -130 -40 -100 {lab=VDD}
N -40 -130 -30 -130 {lab=VDD}
N 10 -100 10 -70 {lab=#net1}
N -30 -70 10 -70 {lab=#net1}
N 10 -100 110 -100 {lab=#net1}
N -30 -170 150 -170 {lab=VDD}
N 150 -170 150 -130 {lab=VDD}
N 150 -100 160 -100 {lab=VDD}
N 160 -130 160 -100 {lab=VDD}
N 150 -130 160 -130 {lab=VDD}
N 150 -170 370 -170 {lab=VDD}
N 370 -170 370 -130 {lab=VDD}
N 370 -100 380 -100 {lab=VDD}
N 380 -130 380 -100 {lab=VDD}
N 370 -130 380 -130 {lab=VDD}
N 110 -100 110 -60 {lab=#net1}
N 110 -60 330 -60 {lab=#net1}
N 330 -100 330 -60 {lab=#net1}
N -30 -70 -30 30 {lab=#net1}
N 150 -70 150 30 {lab=#net2}
N 110 30 110 60 {lab=#net2}
N 110 30 150 30 {lab=#net2}
N 10 60 110 60 {lab=#net2}
N -80 60 -30 60 {lab=VSS}
N 150 60 210 60 {lab=VSS}
N -30 90 -30 110 {lab=#net3}
N -60 140 -50 140 {lab=VSS}
N -70 -190 -70 -170 {lab=VDD}
N -30 170 -30 240 {lab=#net4}
N -30 300 -30 350 {lab=VSS}
N -30 300 10 300 {lab=VSS}
N 10 300 150 300 {lab=VSS}
N 150 90 150 240 {lab=#net5}
N 370 -70 370 110 {lab=VREF}
N 340 140 350 140 {lab=VSS}
N 370 170 370 240 {lab=#net6}
N 150 300 370 300 {lab=VSS}
N 370 60 470 60 {lab=VREF}
C {ipin.sym} -70 -170 0 0 {name=p1 lab=VDD}
C {ipin.sym} -30 330 0 0 {name=p2 lab=VSS}
C {opin.sym} 470 60 0 0 {name=p3 lab=VREF}
C {symbols/pfet_06v0.sym} -10 -100 0 1 {name=M1
L=5u
W=10u
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
C {symbols/pfet_06v0.sym} 130 -100 0 0 {name=M2
L=5u
W=10u
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
C {symbols/pfet_06v0.sym} 350 -100 0 0 {name=M3
L=5u
W=10u
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
C {symbols/nfet_06v0.sym} -10 60 0 1 {name=M4
L=2.5u
W=10u
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
C {symbols/nfet_06v0.sym} 130 60 0 0 {name=M5
L=2.5u
W=10u
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
C {lab_pin.sym} -80 60 0 0 {name=p4 sig_type=std_logic lab=VSS}
C {lab_pin.sym} -30 350 0 0 {name=p5 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 210 60 0 1 {name=p6 sig_type=std_logic lab=VSS}
C {symbols/ppolyf_u_1k_6p0.sym} -30 140 0 0 {name=R1
W=1e-6
L=5e-6
model=ppolyf_u_1k_6p0
spiceprefix=X
m=1}
C {lab_pin.sym} -70 -190 0 0 {name=p8 sig_type=std_logic lab=VDD}
C {symbols/ppolyf_u_1k_6p0.sym} 370 140 0 0 {name=R2
W=1e-6
L=5e-6
model=ppolyf_u_1k_6p0
spiceprefix=X
m=1}
C {lab_pin.sym} -60 140 0 0 {name=p7 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 340 140 0 0 {name=p10 sig_type=std_logic lab=VSS}
C {symbols/diode_pd2nw_06v0.sym} 370 270 0 0 {name=D3
model=diode_pd2nw_06v0
r_w=5u
r_l=1u
m=1}
C {symbols/diode_pd2nw_06v0.sym} 150 270 0 0 {name=D1
model=diode_pd2nw_06v0
r_w=5u
r_l=1u
m=1}
C {symbols/diode_pd2nw_06v0.sym} -30 270 0 0 {name=D2
model=diode_pd2nw_06v0
r_w=5u
r_l=1u
m=1}
