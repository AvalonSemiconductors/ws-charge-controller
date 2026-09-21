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
N 0 40 0 100 {lab=CURREF}
N -190 180 70 180 {lab=PROG}
N -190 30 -190 180 {lab=PROG}
N -190 30 -170 30 {lab=PROG}
N 70 70 70 120 {lab=PROG}
N 70 120 70 180 {lab=PROG}
N 280 100 280 270 {lab=DIODES}
N -410 50 -170 50 {lab=MINUS}
N 280 270 280 320 {lab=DIODES}
N 0 100 190 100 {lab=CURREF}
N 250 100 280 100 {lab=DIODES}
N 250 270 280 270 {lab=DIODES}
N 280 100 400 100 {lab=DIODES}
N 440 180 440 190 {lab=VSS}
N 400 120 400 210 {lab=#net1}
N 400 210 410 210 {lab=#net1}
N 470 210 550 210 {lab=#net2}
N 550 110 550 210 {lab=#net2}
N 370 190 440 190 {lab=VSS}
N 340 190 370 190 {lab=VSS}
N 340 190 340 210 {lab=VSS}
N 690 30 690 60 {lab=VDD}
N 690 160 690 190 {lab=VSS}
N 540 110 660 110 {lab=#net2}
N 660 30 660 110 {lab=#net2}
N 660 110 660 190 {lab=#net2}
N 530 350 530 430 {lab=DISABLE}
N 570 430 580 430 {lab=VSS}
N 580 430 580 460 {lab=VSS}
N 570 460 580 460 {lab=VSS}
N 570 460 570 470 {lab=VSS}
N 570 310 570 320 {lab=VDD}
N 570 320 580 320 {lab=VDD}
N 580 320 580 350 {lab=VDD}
N 570 350 580 350 {lab=VDD}
N 530 230 530 350 {lab=DISABLE}
N 530 230 610 230 {lab=DISABLE}
N 610 -10 610 230 {lab=DISABLE}
N 610 -10 690 -10 {lab=DISABLE}
N 570 380 570 400 {lab=#net3}
N 570 380 690 380 {lab=#net3}
N 690 230 690 380 {lab=#net3}
N 830 -10 830 -0 {lab=VDD}
N 830 -0 840 -0 {lab=VDD}
N 840 -0 840 30 {lab=VDD}
N 830 30 840 30 {lab=VDD}
N 690 230 790 230 {lab=#net3}
N 790 30 790 230 {lab=#net3}
N 720 30 720 110 {lab=CONTROL}
N 720 110 720 190 {lab=CONTROL}
N 720 110 850 110 {lab=CONTROL}
N 830 60 830 110 {lab=CONTROL}
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
C {iopin.sym} 850 110 0 0 {name=p3 lab=CONTROL}
C {lab_pin.sym} 70 -30 1 0 {name=p4 sig_type=std_logic lab=VDD}
C {iopin.sym} 70 180 1 0 {name=p5 lab=PROG}
C {voltage_ref.sym} -350 50 0 0 {name=x2}
C {lab_pin.sym} -460 -20 1 0 {name=p6 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -460 120 3 0 {name=p7 sig_type=std_logic lab=VSS}
C {ipin.sym} 530 390 0 0 {name=p8 lab=DISABLE}
C {lab_pin.sym} -210 50 3 0 {name=p9 sig_type=std_logic lab=MINUS}
C {lab_pin.sym} 440 40 1 0 {name=p11 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 440 180 2 0 {name=p12 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 160 100 1 0 {name=p19 sig_type=std_logic lab=CURREF}
C {ipin.sym} 190 270 0 0 {name=p20 lab=CTRL}
C {lab_pin.sym} 280 380 3 0 {name=p21 sig_type=std_logic lab=VSS}
C {symbols/cap_mim_2f0fF.sym} 280 350 0 0 {name=C1
W=3e-6
L=3e-6
model=cap_mim_2f0fF
spiceprefix=X
m=1}
C {lab_pin.sym} 310 100 1 0 {name=p22 sig_type=std_logic lab=DIODES}
C {symbols/ppolyf_u_1k_6p0.sym} 220 100 1 0 {name=R7
W=1e-6
L=1e-5
model=ppolyf_u_1k_6p0
spiceprefix=X
m=1}
C {lab_pin.sym} 220 80 1 0 {name=p23 sig_type=std_logic lab=VSS}
C {symbols/ppolyf_u_1k_6p0.sym} 220 270 1 0 {name=R4
W=1e-6
L=1e-5
model=ppolyf_u_1k_6p0
spiceprefix=X
m=1}
C {lab_pin.sym} 220 250 1 0 {name=p24 sig_type=std_logic lab=VSS}
C {symbols/ppolyf_u_1k_6p0.sym} 440 210 1 0 {name=R1
W=1e-6
L=1e-5
model=ppolyf_u_1k_6p0
spiceprefix=X
m=1}
C {symbols/ppolyf_u_1k_6p0.sym} 370 210 1 0 {name=R2
W=1e-6
L=1e-5
model=ppolyf_u_1k_6p0
spiceprefix=X
m=1}
C {opamp_medium.sym} -20 40 0 0 {name=x1}
C {opamp_medium.sym} 550 110 0 0 {name=x3}
C {symbols/pfet_06v0.sym} 690 10 1 0 {name=M3
L=0.7u
W=32u
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
C {symbols/nfet_06v0.sym} 690 210 3 0 {name=M8
L=0.7u
W=32u
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
C {lab_pin.sym} 690 60 3 0 {name=p13 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 690 160 1 0 {name=p14 sig_type=std_logic lab=VSS}
C {symbols/pfet_06v0.sym} 550 350 0 0 {name=M2
L=0.7u
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
C {symbols/nfet_06v0.sym} 550 430 0 0 {name=M4
L=0.7u
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
C {lab_pin.sym} 570 470 3 0 {name=p15 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 570 310 1 0 {name=p16 sig_type=std_logic lab=VDD}
C {symbols/pfet_06v0.sym} 810 30 0 0 {name=M5
L=0.7u
W=32u
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
C {lab_pin.sym} 830 -10 1 0 {name=p17 sig_type=std_logic lab=VDD}
