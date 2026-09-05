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
N 0 -190 0 0 {lab=VDD}
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
N 230 -100 230 80 {lab=i1}
N 50 170 230 170 {lab=VSS}
N 230 140 230 170 {lab=VSS}
N 230 110 240 110 {lab=VSS}
N 240 110 240 140 {lab=VSS}
N 230 140 240 140 {lab=VSS}
N 180 80 180 110 {lab=#net1}
N 180 110 190 110 {lab=#net1}
N 180 60 180 80 {lab=#net1}
N 50 60 180 60 {lab=#net1}
N 180 -130 180 60 {lab=#net1}
N 180 -130 190 -130 {lab=#net1}
N 290 -70 650 -70 {lab=VDD}
N 290 -70 290 -40 {lab=VDD}
N 290 0 290 30 {lab=VSS}
N 290 30 650 30 {lab=VSS}
N 230 -20 290 -20 {lab=i1}
N 240 -130 290 -130 {lab=VDD}
N 290 -130 290 -70 {lab=VDD}
N 240 110 290 110 {lab=VSS}
N 290 30 290 110 {lab=VSS}
N 700 -90 700 -40 {lab=#net3}
N 700 -40 700 20 {lab=#net3}
N 590 -40 700 -40 {lab=#net3}
N 650 -120 730 -120 {lab=VDD}
N 650 -120 650 -70 {lab=VDD}
N 730 -120 740 -120 {lab=VDD}
N 650 50 740 50 {lab=VSS}
N 650 30 650 50 {lab=VSS}
N 740 -90 750 -90 {lab=VDD}
N 750 -120 750 -90 {lab=VDD}
N 740 -120 750 -120 {lab=VDD}
N 740 50 750 50 {lab=VSS}
N 750 20 750 50 {lab=VSS}
N 740 20 750 20 {lab=VSS}
N 740 -60 740 -10 {lab=OUT}
N 740 -40 830 -40 {lab=OUT}
N -40 -30 -40 -0 {lab=VDD}
C {ipin.sym} -190 -190 0 0 {name=p1 lab=VDD}
C {ipin.sym} 100 0 2 0 {name=p2 lab=PLUS}
C {ipin.sym} -180 170 0 0 {name=p3 lab=VSS}
C {opin.sym} 830 -40 0 0 {name=p4 lab=OUT}
C {ipin.sym} -160 0 2 1 {name=p5 lab=MINUS}
C {symbols/pfet_06v0.sym} 210 -130 0 0 {name=M3
L=1.1u
W=3u
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
C {symbols/pfet_06v0.sym} -130 0 0 0 {name=M4
L=1.1u
W=3u
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
W=3u
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
C {schmitt.sym} 440 -20 0 0 {name=x1}
C {symbols/pfet_06v0.sym} 720 -90 0 0 {name=M9
L=0.55u
W=24u
nf=3
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
C {symbols/nfet_06v0.sym} 720 20 0 0 {name=M10
L=0.70u
W=24u
nf=3
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
C {lab_pin.sym} 230 -20 0 0 {name=p6 sig_type=std_logic lab=i1}
