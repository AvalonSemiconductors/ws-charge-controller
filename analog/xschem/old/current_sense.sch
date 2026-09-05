v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -250 -230 -210 -230 {lab=VSS}
N -250 -250 -210 -250 {lab=VDD}
N 140 10 140 150 {lab=#net1}
N 140 150 160 150 {lab=#net1}
N 220 -10 260 -10 {lab=PLUS}
N 220 150 260 150 {lab=MINUS}
N -130 -0 -100 0 {lab=#net2}
N -270 180 -270 210 {lab=VSS}
N -290 210 -270 210 {lab=VSS}
N -290 -0 -290 90 {lab=VMSR}
N -290 -0 -250 0 {lab=VMSR}
N -480 0 -330 0 {lab=VMSR}
N -460 -120 -460 20 {lab=SET}
N -480 20 -460 20 {lab=SET}
N -460 60 -450 60 {lab=SET}
N -460 20 -460 60 {lab=SET}
N -330 0 -290 -0 {lab=VMSR}
N -290 -20 -290 -0 {lab=VMSR}
N -390 -110 -390 140 {lab=#net3}
N -630 140 -390 140 {lab=#net3}
N -630 10 -630 140 {lab=#net3}
N -1020 -170 -1020 -150 {lab=VDD}
N -1020 -120 -1010 -120 {lab=VDD}
N -1010 -150 -1010 -120 {lab=VDD}
N -1020 -150 -1010 -150 {lab=VDD}
N -1020 -60 -1010 -60 {lab=VDD}
N -1010 -120 -1010 -60 {lab=VDD}
N -1020 70 -900 70 {lab=VSS}
N -1020 70 -1020 90 {lab=VSS}
N -1020 40 -1010 40 {lab=VSS}
N -1010 40 -1010 70 {lab=VSS}
N -900 40 -890 40 {lab=VSS}
N -890 40 -890 70 {lab=VSS}
N -900 70 -890 70 {lab=VSS}
N -1060 -60 -1060 40 {lab=EN}
N -1060 40 -1060 120 {lab=EN}
N -1060 120 -930 120 {lab=EN}
N -1060 -200 -1060 -120 {lab=#net3}
N -940 -200 -940 40 {lab=#net3}
N -1060 -200 -940 -200 {lab=#net3}
N -630 10 -620 10 {lab=#net3}
N -630 -40 -630 10 {lab=#net3}
N -940 -40 -630 -40 {lab=#net3}
N -1140 -10 -1020 -10 {lab=OUT}
N -1020 -30 -1020 -10 {lab=OUT}
N -1020 -10 -1020 10 {lab=OUT}
N -1020 -10 -900 -10 {lab=OUT}
N -900 -10 -900 10 {lab=OUT}
N -290 90 -290 150 {lab=VMSR}
N -0 70 -0 90 {lab=VSS}
N -100 -0 -100 110 {lab=#net2}
N -100 110 -30 110 {lab=#net2}
N 30 110 40 110 {lab=#net1}
N 40 10 40 110 {lab=#net1}
N 190 -50 190 -30 {lab=VSS}
N 140 -70 140 -10 {lab=#net4}
N 140 -70 150 -70 {lab=#net4}
N 190 -50 220 -50 {lab=VSS}
N 220 -70 220 -50 {lab=VSS}
N 140 -10 160 -10 {lab=#net4}
N 40 -10 140 -10 {lab=#net4}
N 40 10 140 10 {lab=#net1}
C {opamp_smol.sym} -110 0 0 1 {name=x1}
C {lab_pin.sym} -250 -230 0 0 {name=p26 sig_type=std_logic lab=VSS}
C {iopin.sym} -210 -230 0 0 {name=p27 lab=VSS}
C {lab_pin.sym} -250 -250 0 0 {name=p30 sig_type=std_logic lab=VDD}
C {iopin.sym} -210 -250 0 0 {name=p31 lab=VDD}
C {lab_pin.sym} 0 70 0 0 {name=p1 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 0 -70 1 0 {name=p2 sig_type=std_logic lab=VDD}
C {symbols/ppolyf_u_1k_6p0.sym} 190 150 3 0 {name=R3
W=1e-6
L=1e-5
model=ppolyf_u_1k
spiceprefix=X
m=1}
C {ipin.sym} 260 -10 2 0 {name=p6 lab=PLUS}
C {ipin.sym} 260 150 2 0 {name=p7 lab=MINUS}
C {comparator.sym} -630 10 0 1 {name=x2}
C {lab_pin.sym} -520 -60 1 0 {name=p8 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -520 80 3 0 {name=p9 sig_type=std_logic lab=VSS}
C {symbols/ppolyf_u_1k_6p0.sym} -160 0 1 0 {name=R5
W=1e-6
L=1e-5
model=ppolyf_u_1k
spiceprefix=X
m=1}
C {lab_pin.sym} -160 -20 1 0 {name=p10 sig_type=std_logic lab=VSS}
C {symbols/ppolyf_u_1k_6p0.sym} -220 0 1 0 {name=R6
W=1e-6
L=1e-5
model=ppolyf_u_1k
spiceprefix=X
m=1}
C {lab_pin.sym} -220 -20 1 0 {name=p11 sig_type=std_logic lab=VSS}
C {symbols/ppolyf_u_1k_6p0.sym} -290 180 2 0 {name=R7
W=1e-6
L=9e-6
model=ppolyf_u_1k
spiceprefix=X
m=1}
C {lab_pin.sym} -270 180 2 0 {name=p13 sig_type=std_logic lab=VSS}
C {symbols/ppolyf_u_1k_6p0.sym} -460 -150 2 0 {name=R9
W=1e-6
L=1e-5
model=ppolyf_u_1k
spiceprefix=X
m=1}
C {lab_pin.sym} -440 -150 2 0 {name=p14 sig_type=std_logic lab=VSS}
C {lab_pin.sym} -460 -240 1 0 {name=p15 sig_type=std_logic lab=VDD}
C {iopin.sym} -450 60 0 0 {name=p16 lab=SET}
C {opin.sym} -1140 -10 2 0 {name=p17 lab=OUT}
C {lab_pin.sym} -290 -20 0 0 {name=p22 sig_type=std_logic lab=VMSR}
C {symbols/nfet_06v0.sym} -370 -110 0 0 {name=M1
L=12u
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
C {lab_pin.sym} -350 -110 2 0 {name=p18 sig_type=std_logic lab=VSS}
C {lab_pin.sym} -350 -140 1 0 {name=p19 sig_type=std_logic lab=VDD}
C {symbols/ppolyf_u_1k_6p0.sym} -460 -210 2 0 {name=R11
W=1e-6
L=1e-5
model=ppolyf_u_1k
spiceprefix=X
m=1}
C {lab_pin.sym} -440 -210 2 0 {name=p21 sig_type=std_logic lab=VSS}
C {ipin.sym} -930 120 2 0 {name=p20 lab=EN}
C {symbols/pfet_06v0.sym} -1040 -60 0 0 {name=M2
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
C {symbols/nfet_06v0.sym} -1040 40 0 0 {name=M3
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
C {symbols/pfet_06v0.sym} -1040 -120 0 0 {name=M4
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
C {lab_pin.sym} -1020 -170 2 0 {name=p23 sig_type=std_logic lab=VDD}
C {symbols/nfet_06v0.sym} -920 40 0 0 {name=M5
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
C {lab_pin.sym} -1020 90 0 0 {name=p24 sig_type=std_logic lab=VSS}
C {symbols/ppolyf_u_1k_6p0.sym} 190 -10 1 0 {name=R2
W=1e-6
L=1e-5
model=ppolyf_u_1k
spiceprefix=X
m=1}
C {symbols/ppolyf_u_1k_6p0.sym} 0 110 1 0 {name=R1
W=1e-6
L=1e-6
model=ppolyf_u_1k
spiceprefix=X
m=1}
C {lab_pin.sym} 190 -30 0 0 {name=p3 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 190 170 0 0 {name=p4 sig_type=std_logic lab=VSS}
C {symbols/ppolyf_u_1k_6p0.sym} 190 -70 3 0 {name=R8
W=1e-6
L=1e-5
model=ppolyf_u_1k
spiceprefix=X
m=1}
