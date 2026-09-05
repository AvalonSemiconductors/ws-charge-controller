v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 280 40 280 60 {lab=GND}
N 280 40 280 60 {lab=GND}
N 420 40 420 60 {lab=GND}
N 420 40 420 60 {lab=GND}
N 280 -40 280 -20 {lab=VDD}
N 420 -40 420 -20 {lab=VDD}
N 360 10 380 10 {lab=GND}
N 360 10 360 60 {lab=GND}
C {devices/code.sym} -120 -40 0 0 {name=SIMULATION
only_toplevel=false 
value="
.control
op
.endc
.end
"}
C {devices/code.sym} 20 -40 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
.include design.ngspice
.lib sm141064.ngspice typical
"
spice_ignore=false}
C {devices/vsource.sym} 280 10 0 0 {name=V1 value=3.3 savecurrent=false}
C {devices/gnd.sym} 280 60 0 0 {name=l3 lab=GND}
C {devices/vdd.sym} 280 -40 0 0 {name=l1 lab=VDD}
C {devices/gnd.sym} 420 60 0 0 {name=l2 lab=GND}
C {devices/vdd.sym} 420 -40 0 0 {name=l4 lab=VDD}
C {devices/gnd.sym} 360 60 0 0 {name=l5 lab=GND}
C {gf180mcu/gf180mcuD/libs.tech/xschem/symbols/pfet3_06v0.sym} 400 10 0 0 {name=M2
L=0.55u
W=1000u
body=VDD
nf=15
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
