v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 100 -250 130 -250 {lab=VDD}
N 100 -220 130 -220 {lab=VSS}
N 380 -30 380 -20 {lab=#net1}
N 420 -70 420 -60 {lab=VDD}
N 420 -60 430 -60 {lab=VDD}
N 430 -60 430 -30 {lab=VDD}
N 420 -30 430 -30 {lab=VDD}
N 380 -20 380 50 {lab=#net1}
N 420 80 420 90 {lab=VSS}
N 420 80 430 80 {lab=VSS}
N 430 50 430 80 {lab=VSS}
N 420 50 430 50 {lab=VSS}
N 420 0 420 20 {lab=OSC}
N 430 -60 580 -60 {lab=VDD}
N 580 -30 590 -30 {lab=VDD}
N 590 -60 590 -30 {lab=VDD}
N 580 -60 590 -60 {lab=VDD}
N 420 -0 540 -0 {lab=OSC}
N 540 -30 540 -0 {lab=OSC}
N 580 10 690 10 {lab=#net2}
N 690 10 690 160 {lab=#net2}
N 280 160 690 160 {lab=#net2}
N 580 0 580 10 {lab=#net2}
N 280 80 280 160 {lab=#net2}
N 580 10 580 20 {lab=#net2}
N 540 0 540 50 {lab=OSC}
N 430 80 580 80 {lab=VSS}
N 580 80 590 80 {lab=VSS}
N 590 50 590 80 {lab=VSS}
N 580 50 590 50 {lab=VSS}
N 210 -70 380 -70 {lab=#net1}
N 380 -70 380 -30 {lab=#net1}
N -60 -60 -60 80 {lab=#net2}
N -60 -60 70 -60 {lab=#net2}
N -130 -80 70 -80 {lab=COMP}
N -130 -90 -130 -80 {lab=COMP}
N -130 -80 -130 -70 {lab=COMP}
N -110 -120 -110 -40 {lab=VSS}
N -110 -40 -110 -10 {lab=VSS}
N -110 -10 -110 30 {lab=VSS}
N -110 30 -110 60 {lab=VSS}
N -130 60 -110 60 {lab=VSS}
N -130 -10 -130 -0 {lab=#net3}
N -340 0 -130 0 {lab=#net3}
N -380 30 -380 250 {lab=OSC}
N -380 250 540 250 {lab=OSC}
N 540 50 540 250 {lab=OSC}
N -340 60 -130 60 {lab=VSS}
N -340 30 -330 30 {lab=VSS}
N -330 30 -330 60 {lab=VSS}
N 810 350 810 360 {lab=VDD}
N 810 390 820 390 {lab=VDD}
N 820 360 820 390 {lab=VDD}
N 810 360 820 360 {lab=VDD}
N 600 580 810 580 {lab=VSS}
N 600 550 610 550 {lab=VSS}
N 610 550 610 580 {lab=VSS}
N 560 520 560 550 {lab=#net4}
N 560 520 600 520 {lab=#net4}
N 600 390 600 520 {lab=#net4}
N 600 390 770 390 {lab=#net4}
N 810 510 950 510 {lab=#net5}
N 1250 490 1270 490 {lab=POR}
N 810 420 810 520 {lab=#net5}
N -60 80 280 80 {lab=#net2}
N 810 420 1040 420 {lab=#net5}
N 820 360 1040 360 {lab=VDD}
C {iopin.sym} 100 -250 2 0 {name=p1 lab=VDD}
C {lab_pin.sym} 130 -250 2 0 {name=p2 sig_type=std_logic lab=VDD}
C {iopin.sym} 100 -220 2 0 {name=p3 lab=VSS}
C {lab_pin.sym} 130 -220 2 0 {name=p4 sig_type=std_logic lab=VSS}
C {symbols/cap_mim_2f0fF.sym} -60 110 2 0 {name=C1
W=2e-5
L=2e-5
model=cap_mim_2f0_m4m5_noshield
spiceprefix=X
m=1}
C {lab_pin.sym} -60 140 3 0 {name=p7 sig_type=std_logic lab=VSS}
C {opin.sym} 420 10 0 0 {name=p12 lab=OSC}
C {symbols/pfet_06v0.sym} 400 -30 0 0 {name=M1
L=0.55u
W=8u
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
C {lab_pin.sym} 420 -70 1 0 {name=p8 sig_type=std_logic lab=VDD}
C {symbols/nfet_06v0.sym} 400 50 0 0 {name=M3
L=0.70u
W=8u
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
C {lab_pin.sym} 420 90 3 0 {name=p9 sig_type=std_logic lab=VSS}
C {symbols/pfet_06v0.sym} 560 -30 0 0 {name=M2
L=4u
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
C {symbols/nfet_06v0.sym} 560 50 0 0 {name=M4
L=8u
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
C {comparator.sym} 220 -70 0 0 {name=x2}
C {lab_pin.sym} 110 -140 1 0 {name=p11 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 110 0 3 0 {name=p13 sig_type=std_logic lab=VSS}
C {symbols/ppolyf_u_1k_6p0.sym} -130 -120 2 0 {name=R4
W=1e-6
L=7e-6
model=ppolyf_u_1k_6p0
spiceprefix=X
m=1}
C {symbols/ppolyf_u_1k_6p0.sym} -130 -40 2 0 {name=R5
W=1e-6
L=1e-6
model=ppolyf_u_1k_6p0
spiceprefix=X
m=1}
C {lab_pin.sym} -110 -120 2 0 {name=p5 sig_type=std_logic lab=VSS}
C {lab_pin.sym} -130 -150 1 0 {name=p6 sig_type=std_logic lab=VDD}
C {symbols/nfet_06v0.sym} -360 30 0 0 {name=M5
L=0.70u
W=8u
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
C {symbols/ppolyf_u_1k_6p0.sym} -130 30 2 0 {name=R6
W=1e-6
L=1e-5
model=ppolyf_u_1k_6p0
spiceprefix=X
m=1}
C {lab_pin.sym} -20 -80 1 0 {name=p14 sig_type=std_logic lab=COMP}
C {symbols/cap_mim_2f0fF.sym} 810 550 2 0 {name=C2
W=2e-5
L=2e-5
model=cap_mim_2f0_m4m5_noshield
spiceprefix=X
m=1}
C {lab_pin.sym} 810 580 3 0 {name=p10 sig_type=std_logic lab=VSS}
C {symbols/pfet_06v0.sym} 790 390 0 0 {name=M6
L=24u
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
C {lab_pin.sym} 810 350 1 0 {name=p15 sig_type=std_logic lab=VDD}
C {symbols/nfet_06v0.sym} 580 550 0 0 {name=M7
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
C {schmitt.sym} 1100 510 0 0 {name=x1}
C {lab_pin.sym} 950 490 0 0 {name=p16 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 950 530 0 0 {name=p17 sig_type=std_logic lab=VSS}
C {opin.sym} 1270 490 0 0 {name=p18 lab=POR}
C {symbols/diode_pd2nw_06v0.sym} 1040 390 2 0 {name=D3
model=diode_pd2nw_06v0
r_w=1u
r_l=1u
m=1}
