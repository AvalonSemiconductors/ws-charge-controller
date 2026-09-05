v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -180 -130 -140 -130 {lab=VSS}
N -180 -150 -140 -150 {lab=VDD}
N -30 40 30 40 {lab=CURREF}
N 70 -30 70 10 {lab=VDD}
N 70 40 80 40 {lab=VDD}
N 80 10 80 40 {lab=VDD}
N 70 10 80 10 {lab=VDD}
N 0 100 200 100 {lab=CURREF}
N 0 40 0 100 {lab=CURREF}
N -190 180 70 180 {lab=PROG}
N -190 30 -190 180 {lab=PROG}
N -190 30 -170 30 {lab=PROG}
N -210 30 -190 30 {lab=PROG}
N 70 70 70 120 {lab=PROG}
N 70 120 70 180 {lab=PROG}
N 200 100 220 100 {lab=CURREF}
N 200 270 220 270 {lab=CTRL}
N 860 150 860 200 {lab=VSS}
N 960 80 960 220 {lab=CONTROL}
N 820 220 830 220 {lab=#net1}
N 820 90 820 220 {lab=#net1}
N 960 80 990 80 {lab=CONTROL}
N 890 220 960 220 {lab=CONTROL}
N 450 80 540 80 {lab=#net2}
N 450 50 450 80 {lab=#net2}
N 450 80 450 110 {lab=#net2}
N 430 20 430 140 {lab=VSS}
N 430 140 430 160 {lab=VSS}
N 430 160 430 170 {lab=VSS}
N 430 170 450 170 {lab=VSS}
N 370 80 430 80 {lab=VSS}
N 400 100 540 100 {lab=#net3}
N 280 100 340 100 {lab=#net4}
N 580 160 580 200 {lab=VSS}
N 540 220 550 220 {lab=#net3}
N 540 100 540 220 {lab=#net3}
N 680 90 680 220 {lab=HALFWAY}
N 610 220 680 220 {lab=HALFWAY}
N 530 -40 530 80 {lab=#net2}
N 530 -40 820 -40 {lab=#net2}
N 820 -40 820 70 {lab=#net2}
N 790 90 820 90 {lab=#net1}
N 680 90 730 90 {lab=HALFWAY}
N 200 450 220 450 {lab=DISABLE}
N 280 270 280 450 {lab=#net4}
N 280 100 280 270 {lab=#net4}
N -410 50 -170 50 {lab=MINUS}
N 280 450 280 500 {lab=#net4}
C {lab_pin.sym} -140 -130 2 0 {name=p26 sig_type=std_logic lab=VSS}
C {iopin.sym} -180 -130 2 0 {name=p27 lab=VSS}
C {lab_pin.sym} -140 -150 2 0 {name=p30 sig_type=std_logic lab=VDD}
C {iopin.sym} -180 -150 2 0 {name=p31 lab=VDD}
C {lab_pin.sym} -130 -30 1 0 {name=p1 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -130 110 3 0 {name=p2 sig_type=std_logic lab=VSS}
C {symbols/pfet_06v0.sym} 50 40 0 0 {name=M1
L=1u
W=46u
nf=23
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
C {iopin.sym} 990 80 0 0 {name=p3 lab=CONTROL}
C {lab_pin.sym} 70 -30 1 0 {name=p4 sig_type=std_logic lab=VDD}
C {iopin.sym} 70 180 1 0 {name=p5 lab=PROG}
C {voltage_ref.sym} -350 50 0 0 {name=x2}
C {lab_pin.sym} -460 -20 1 0 {name=p6 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -460 120 3 0 {name=p7 sig_type=std_logic lab=VSS}
C {ipin.sym} 200 450 0 0 {name=p8 lab=DISABLE}
C {lab_pin.sym} -210 50 3 0 {name=p9 sig_type=std_logic lab=MINUS}
C {lab_pin.sym} -210 30 1 0 {name=p10 sig_type=std_logic lab=PLUS}
C {opamp_medium.sym} 970 80 0 0 {name=x3}
C {lab_pin.sym} 860 10 1 0 {name=p11 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 860 150 2 0 {name=p12 sig_type=std_logic lab=VSS}
C {symbols/ppolyf_u_1k_6p0.sym} 450 20 0 0 {name=R1
W=1e-6
L=2e-5
model=ppolyf_u_1k_6p0
spiceprefix=X
m=1}
C {symbols/ppolyf_u_1k_6p0.sym} 450 140 0 0 {name=R3
W=1e-6
L=2e-5
model=ppolyf_u_1k_6p0
spiceprefix=X
m=1}
C {lab_pin.sym} 450 170 3 0 {name=p14 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 580 20 1 0 {name=p15 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 580 160 2 0 {name=p16 sig_type=std_logic lab=VSS}
C {symbols/ppolyf_u_1k_6p0.sym} 370 100 1 0 {name=R4
W=1e-6
L=5e-5
model=ppolyf_u_1k_6p0
spiceprefix=X
m=1}
C {lab_pin.sym} 450 -10 1 0 {name=p17 sig_type=std_logic lab=VDD}
C {symbols/ppolyf_u_1k_6p0.sym} 580 220 1 0 {name=R5
W=1e-6
L=8.8e-5
model=ppolyf_u_1k_6p0
spiceprefix=X
m=1}
C {symbols/ppolyf_u_1k_6p0.sym} 760 90 1 0 {name=R6
W=1e-6
L=6e-5
model=ppolyf_u_1k_6p0
spiceprefix=X
m=1}
C {lab_pin.sym} 760 70 1 0 {name=p13 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 710 90 1 0 {name=p18 sig_type=std_logic lab=HALFWAY}
C {symbols/ppolyf_u_1k_6p0.sym} 860 220 1 0 {name=R2
W=1e-6
L=8e-5
model=ppolyf_u_1k_6p0
spiceprefix=X
m=1}
C {lab_pin.sym} 190 100 1 0 {name=p19 sig_type=std_logic lab=CURREF}
C {ipin.sym} 200 270 0 0 {name=p20 lab=CTRL}
C {symbols/diode_pd2nw_06v0.sym} 250 270 3 0 {name=D1
model=diode_pd2nw_06v0
r_w=8u
r_l=2u
m=1}
C {symbols/diode_pd2nw_06v0.sym} 250 450 3 0 {name=D3
model=diode_pd2nw_06v0
r_w=8u
r_l=2u
m=1}
C {symbols/diode_pd2nw_06v0.sym} 250 100 3 0 {name=D2
model=diode_pd2nw_06v0
r_w=8u
r_l=2u
m=1}
C {opamp_medium.sym} -20 40 0 0 {name=x1}
C {opamp_medium.sym} 690 90 0 0 {name=x4}
C {lab_pin.sym} 280 560 3 0 {name=p21 sig_type=std_logic lab=VSS}
C {symbols/cap_mim_2f0fF.sym} 280 530 0 0 {name=C1
W=3e-6
L=3e-6
model=cap_mim_2f0fF
spiceprefix=X
m=1}
