v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -440 -40 -410 -40 {lab=VDD}
N -440 -10 -410 -10 {lab=VSS}
N 0 20 30 20 {lab=VSS}
N -0 0 -0 40 {lab=VSS}
N 80 -120 80 -0 {lab=#net1}
N 60 -0 100 -0 {lab=#net1}
N 30 20 130 20 {lab=VSS}
N 130 20 350 20 {lab=VSS}
N 260 -120 260 -0 {lab=#net2}
N 160 -0 320 0 {lab=#net2}
N 440 -120 440 -0 {lab=R2ROUT}
N 380 -0 440 -0 {lab=R2ROUT}
N 800 10 800 140 {lab=#net3}
N 660 140 800 140 {lab=#net3}
N 660 20 660 140 {lab=#net3}
N 440 0 660 -0 {lab=R2ROUT}
C {symbols/ppolyf_u_1k_6p0.sym} 30 0 3 0 {name=R6
W=1e-6
L=2e-5
model=ppolyf_u_1k_6p0
spiceprefix=X
m=1}
C {iopin.sym} -440 -40 2 0 {name=p1 lab=VDD}
C {lab_pin.sym} -410 -40 2 0 {name=p2 sig_type=std_logic lab=VDD}
C {iopin.sym} -440 -10 2 0 {name=p3 lab=VSS}
C {lab_pin.sym} -410 -10 2 0 {name=p4 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 0 40 3 0 {name=p5 sig_type=std_logic lab=VSS}
C {symbols/ppolyf_u_1k_6p0.sym} 130 0 3 0 {name=R1
W=1e-6
L=1e-5
model=ppolyf_u_1k_6p0
spiceprefix=X
m=1}
C {symbols/ppolyf_u_1k_6p0.sym} 80 -150 0 0 {name=R2
W=1e-6
L=2e-5
model=ppolyf_u_1k_6p0
spiceprefix=X
m=1}
C {lab_pin.sym} 60 -150 0 0 {name=p6 sig_type=std_logic lab=VSS}
C {symbols/ppolyf_u_1k_6p0.sym} 350 0 3 0 {name=R3
W=1e-6
L=1e-5
model=ppolyf_u_1k_6p0
spiceprefix=X
m=1}
C {symbols/ppolyf_u_1k_6p0.sym} 260 -150 0 0 {name=R4
W=1e-6
L=2e-5
model=ppolyf_u_1k_6p0
spiceprefix=X
m=1}
C {lab_pin.sym} 240 -150 0 0 {name=p7 sig_type=std_logic lab=VSS}
C {symbols/ppolyf_u_1k_6p0.sym} 440 -150 0 0 {name=R5
W=1e-6
L=2e-5
model=ppolyf_u_1k_6p0
spiceprefix=X
m=1}
C {lab_pin.sym} 420 -150 0 0 {name=p8 sig_type=std_logic lab=VSS}
C {ipin.sym} 80 -180 1 0 {name=p9 lab=D0}
C {ipin.sym} 260 -180 1 0 {name=p10 lab=D1}
C {ipin.sym} 440 -180 1 0 {name=p11 lab=D2}
C {symbols/rm1.sym} 830 10 1 0 {name=R7
W=0.6e-6
L=5e-6
model=rm1
spiceprefix=X
m=1}
C {opin.sym} 860 10 0 0 {name=p12 lab=OUT}
C {opamp_weird.sym} 810 10 0 0 {name=x1}
C {lab_pin.sym} 700 80 3 0 {name=p14 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 700 -60 1 0 {name=p15 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 480 0 3 0 {name=p13 sig_type=std_logic lab=R2ROUT}
C {lab_pin.sym} 660 140 3 0 {name=p16 sig_type=std_logic lab=FEEDBACK}
