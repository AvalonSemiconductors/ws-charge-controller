v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -190 10 -40 10 {lab=VREF}
N 100 -0 150 -0 {lab=COMPO}
N 190 30 190 70 {lab=VSS}
N 190 0 200 0 {lab=VSS}
N 200 0 200 30 {lab=VSS}
N 190 30 200 30 {lab=VSS}
N -0 70 190 70 {lab=VSS}
N -240 80 -0 80 {lab=VSS}
N -0 70 0 80 {lab=VSS}
N -240 -70 0 -70 {lab=VDD}
N -240 -70 -240 -60 {lab=VDD}
N -270 -70 -240 -70 {lab=VDD}
N -270 80 -240 80 {lab=VSS}
N -60 -10 -40 -10 {lab=R}
N 190 -60 190 -30 {lab=K}
N 190 -60 210 -60 {lab=K}
N 190 70 350 70 {lab=VSS}
N 350 -30 350 10 {lab=K}
N 190 -30 350 -30 {lab=K}
N -50 -130 -50 -10 {lab=R}
N -50 -130 -0 -130 {lab=R}
N 60 -130 190 -130 {lab=K}
N 190 -130 190 -60 {lab=K}
N -130 10 -130 20 {lab=VREF}
N 140 0 140 30 {lab=COMPO}
C {voltage_ref.sym} -130 10 0 0 {name=x2}
C {symbols/nfet_06v0.sym} 170 0 0 0 {name=M1
L=0.70u
W=8u
nf=2
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
C {ipin.sym} -270 -70 0 0 {name=p1 lab=VDD}
C {ipin.sym} -270 80 0 0 {name=p2 lab=VSS}
C {ipin.sym} -60 -10 0 0 {name=p3 lab=R}
C {iopin.sym} 210 -60 0 0 {name=p4 lab=K}
C {symbols/diode_pd2nw_06v0.sym} 30 -130 3 0 {name=D2
model=diode_pd2nw_06v0
r_w=2u
r_l=2u
m=1}
C {lab_pin.sym} -130 20 0 0 {name=p5 sig_type=std_logic lab=VREF}
C {lab_pin.sym} 140 30 0 0 {name=p6 sig_type=std_logic lab=COMPO}
C {opamp_smol.sym} 110 0 0 0 {name=x1}
C {symbols/diode_nd2ps_06v0.sym} 350 40 2 0 {name=D1
model=diode_nd2ps_06v0
r_w=2u
r_l=2u
m=1}
