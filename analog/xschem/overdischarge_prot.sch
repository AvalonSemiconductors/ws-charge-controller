v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 360 180 390 180 {lab=VDDP}
N 360 210 390 210 {lab=VSSP}
N -90 -10 20 -10 {lab=PLUS}
N 160 240 160 250 {lab=VSSP}
N 150 210 160 210 {lab=VSSP}
N 150 210 150 240 {lab=VSSP}
N 150 240 160 240 {lab=VSSP}
N -20 180 160 180 {lab=#net1}
N -20 180 -20 190 {lab=#net1}
N -20 250 160 250 {lab=VSSP}
N -20 170 -20 180 {lab=#net1}
N -40 140 -40 220 {lab=VSSP}
N -20 10 -20 110 {lab=MINUS}
N -20 10 20 10 {lab=MINUS}
N 200 -0 200 210 {lab=TRIP}
N 160 -0 200 -0 {lab=TRIP}
N 200 -0 330 0 {lab=TRIP}
N 330 -50 330 0 {lab=TRIP}
N 330 0 330 50 {lab=TRIP}
N 370 -50 380 -50 {lab=VDDP}
N 380 -80 380 -50 {lab=VDDP}
N 370 -80 380 -80 {lab=VDDP}
N 370 50 380 50 {lab=VSSP}
N 380 50 380 80 {lab=VSSP}
N 370 80 380 80 {lab=VSSP}
N 370 -20 370 20 {lab=SAFE}
N -390 -150 -380 -150 {lab=VSSP}
N -380 -150 -380 -120 {lab=VSSP}
N -390 -120 -380 -120 {lab=VSSP}
N -390 -120 -390 -110 {lab=VSSP}
N -390 -230 -380 -230 {lab=VDDP}
N -380 -260 -380 -230 {lab=VDDP}
N -390 -260 -380 -260 {lab=VDDP}
N -390 -280 -390 -260 {lab=VDDP}
N -390 -200 -390 -180 {lab=S0Pn}
N -430 -230 -430 -150 {lab=S0P}
N -390 70 -380 70 {lab=VSSP}
N -380 70 -380 100 {lab=VSSP}
N -390 100 -380 100 {lab=VSSP}
N -390 100 -390 110 {lab=VSSP}
N -390 -10 -380 -10 {lab=VDDP}
N -380 -40 -380 -10 {lab=VDDP}
N -390 -40 -380 -40 {lab=VDDP}
N -390 -60 -390 -40 {lab=VDDP}
N -390 20 -390 40 {lab=S1Pn}
N -430 -10 -430 70 {lab=S1P}
N -510 -190 -430 -190 {lab=S0P}
N -510 30 -430 30 {lab=S1P}
N -40 -30 -40 -10 {lab=PLUS}
N -20 -230 -20 10 {lab=MINUS}
N 30 -320 30 -290 {lab=#net2}
N 210 -320 210 -290 {lab=#net3}
N 30 -380 210 -380 {lab=#net4}
N 30 -410 30 -380 {lab=#net4}
N -390 -190 -340 -190 {lab=S0Pn}
N -390 30 -340 30 {lab=S1Pn}
N -160 -440 -150 -440 {lab=VDDP}
N -150 -470 -150 -440 {lab=VDDP}
N -160 -470 -150 -470 {lab=VDDP}
N 30 -440 40 -440 {lab=VDDP}
N 40 -470 40 -440 {lab=VDDP}
N 30 -470 40 -470 {lab=VDDP}
N -160 -410 -160 -290 {lab=#net5}
N -160 -230 210 -230 {lab=MINUS}
C {comparator.sym} 170 0 0 0 {name=x1}
C {iopin.sym} 360 180 2 0 {name=p1 lab=VDDP}
C {lab_pin.sym} 390 180 2 0 {name=p2 sig_type=std_logic lab=VDDP}
C {iopin.sym} 360 210 2 0 {name=p3 lab=VSSP}
C {lab_pin.sym} 390 210 2 0 {name=p4 sig_type=std_logic lab=VSSP}
C {lab_pin.sym} 60 -70 1 0 {name=p5 sig_type=std_logic lab=VDDP}
C {lab_pin.sym} 60 70 3 0 {name=p6 sig_type=std_logic lab=VSSP}
C {voltage_ref.sym} -30 -10 0 0 {name=x2}
C {lab_pin.sym} -140 -80 1 0 {name=p7 sig_type=std_logic lab=VDDP}
C {lab_pin.sym} -140 60 3 0 {name=p8 sig_type=std_logic lab=VSSP}
C {symbols/nfet_06v0.sym} 180 210 2 0 {name=M1
L=0.70u
W=2u
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
C {lab_pin.sym} 160 250 3 0 {name=p9 sig_type=std_logic lab=VSSP}
C {symbols/ppolyf_u_1k_6p0.sym} -20 220 0 0 {name=R1
W=1e-6
L=2e-6
model=ppolyf_u_1k_6p0
spiceprefix=X
m=1}
C {lab_pin.sym} -40 220 0 0 {name=p10 sig_type=std_logic lab=VSSP}
C {symbols/ppolyf_u_1k_6p0.sym} -20 140 0 0 {name=R2
W=1e-6
L=8e-6
model=ppolyf_u_1k_6p0
spiceprefix=X
m=1}
C {symbols/ppolyf_u_1k_6p0.sym} 210 -260 0 0 {name=R3
W=1e-6
L=1.7e-5
model=ppolyf_u_1k_6p0
spiceprefix=X
m=1}
C {symbols/nfet_06v0.sym} 350 50 0 0 {name=M2
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
C {symbols/pfet_06v0.sym} 350 -50 0 0 {name=M3
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
C {lab_pin.sym} 370 -80 1 0 {name=p13 sig_type=std_logic lab=VDDP}
C {lab_pin.sym} 370 80 3 0 {name=p14 sig_type=std_logic lab=VSSP}
C {opin.sym} 370 0 0 0 {name=p15 lab=SAFE}
C {ipin.sym} -510 -190 0 0 {name=p16 lab=S0P}
C {ipin.sym} -510 30 0 0 {name=p17 lab=S1P}
C {symbols/pfet_06v0.sym} -410 -230 0 0 {name=M4
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
C {symbols/nfet_06v0.sym} -410 -150 0 0 {name=M5
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
C {lab_pin.sym} -390 -110 0 0 {name=p42 sig_type=std_logic lab=VSSP}
C {lab_pin.sym} -390 -280 0 0 {name=p43 sig_type=std_logic lab=VDDP}
C {symbols/pfet_06v0.sym} -410 -10 0 0 {name=M6
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
C {symbols/nfet_06v0.sym} -410 70 0 0 {name=M7
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
C {lab_pin.sym} -390 110 0 0 {name=p44 sig_type=std_logic lab=VSSP}
C {lab_pin.sym} -390 -60 0 0 {name=p45 sig_type=std_logic lab=VDDP}
C {symbols/ppolyf_u_1k_6p0.sym} -160 -260 0 0 {name=R4
W=1e-6
L=2.97e-5
model=ppolyf_u_1k_6p0
spiceprefix=X
m=1}
C {lab_pin.sym} -180 -260 0 0 {name=p30 sig_type=std_logic lab=VSSP}
C {symbols/ppolyf_u_1k_6p0.sym} 30 -260 0 0 {name=R6
W=1e-6
L=1.9e-5
model=ppolyf_u_1k_6p0
spiceprefix=X
m=1}
C {lab_pin.sym} 200 0 1 0 {name=p12 sig_type=std_logic lab=TRIP}
C {lab_pin.sym} -20 10 0 0 {name=p33 sig_type=std_logic lab=MINUS}
C {lab_pin.sym} -40 -30 0 0 {name=p34 sig_type=std_logic lab=PLUS}
C {lab_pin.sym} 10 -260 0 0 {name=p18 sig_type=std_logic lab=VSSP}
C {lab_pin.sym} 190 -260 0 0 {name=p19 sig_type=std_logic lab=VSSP}
C {symbols/pfet_06v0.sym} 10 -350 0 0 {name=M10
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
C {lab_pin.sym} 30 -350 2 0 {name=p22 sig_type=std_logic lab=VDDP}
C {symbols/pfet_06v0.sym} 190 -350 0 0 {name=M11
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
C {lab_pin.sym} 210 -350 2 0 {name=p23 sig_type=std_logic lab=VDDP}
C {symbols/pfet_06v0.sym} -180 -440 0 0 {name=M12
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
C {symbols/pfet_06v0.sym} 10 -440 0 0 {name=M14
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
C {lab_pin.sym} -160 -470 1 0 {name=p24 sig_type=std_logic lab=VDDP}
C {lab_pin.sym} 30 -470 1 0 {name=p25 sig_type=std_logic lab=VDDP}
C {lab_pin.sym} -480 -190 1 0 {name=p26 sig_type=std_logic lab=S0P}
C {lab_pin.sym} -480 30 1 0 {name=p27 sig_type=std_logic lab=S1P}
C {lab_pin.sym} -340 -190 2 0 {name=p28 sig_type=std_logic lab=S0Pn}
C {lab_pin.sym} -340 30 2 0 {name=p29 sig_type=std_logic lab=S1Pn}
C {lab_pin.sym} -200 -440 0 0 {name=p31 sig_type=std_logic lab=S1P}
C {lab_pin.sym} -10 -440 0 0 {name=p32 sig_type=std_logic lab=S1Pn}
C {lab_pin.sym} -10 -350 0 0 {name=p37 sig_type=std_logic lab=S0P}
C {lab_pin.sym} 170 -350 0 0 {name=p38 sig_type=std_logic lab=S0Pn}
