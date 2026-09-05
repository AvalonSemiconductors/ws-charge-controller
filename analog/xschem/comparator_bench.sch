v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 750 -260 1340 200 {flags=graph
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x2=3e-06
divx=5
subdivx=1

unitx=1
dataset=-1
y1=0
y2=6
x1=0
color="4 10 7"
node="PLUS
MINUS
OUT"}
B 2 750 -720 1340 -260 {flags=graph
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x2=3e-06
divx=5
subdivx=1

unitx=1
dataset=-1
y1=-0.003
x1=0
color=4
node=i(V2)
y2=0}
B 2 -460 420 130 880 {flags=graph
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x2=3e-06
divx=5
subdivx=1

unitx=1
dataset=-1
y1=0
y2=6
x1=0
color=4
node=TESTTEST}
N 50 40 50 60 {lab=GND}
N 50 -70 400 -70 {lab=#net1}
N 50 -70 50 -20 {lab=#net1}
N 400 70 400 80 {lab=GND}
N 500 -0 520 -0 {lab=OUT}
N 300 -10 360 -10 {lab=PLUS}
N 300 -30 300 -10 {lab=PLUS}
N 300 10 360 10 {lab=MINUS}
N 300 10 300 30 {lab=MINUS}
N 120 -10 300 -10 {lab=PLUS}
N 120 -10 120 80 {lab=PLUS}
N 290 190 290 210 {lab=GND}
N 290 10 290 130 {lab=MINUS}
N 290 10 300 10 {lab=MINUS}
N -150 370 -150 380 {lab=GND}
N -170 370 -150 370 {lab=GND}
N -170 340 -170 370 {lab=GND}
N -150 280 -150 310 {lab=TESTTEST}
N -290 330 -290 350 {lab=GND}
N -290 220 -290 270 {lab=#net2}
N -290 220 -150 220 {lab=#net2}
N -150 290 -120 290 {lab=TESTTEST}
N -150 250 -140 250 {lab=#net2}
N -140 220 -140 250 {lab=#net2}
N -150 220 -140 220 {lab=#net2}
N -190 220 -190 250 {lab=#net2}
C {devices/code_shown.sym} -550 -180 0 0 {name=NGSPICE only_toplevel=true
value="
.option method=gear
.param baser=2e-6
.option temp=25
.control
save all
tran 1n 3u
remzerovec
write comparator_bench.raw
.endc
"}
C {devices/code_shown.sym} -870 50 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include /run/media/veracrypt1/gf180mcu-project-template/analog/xschem/extracted/comparator_f.spice
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
.lib $::180MCU_MODELS/sm141064.ngspice res_typical
.lib $::180MCU_MODELS/sm141064.ngspice diode_typical
"}
C {devices/launcher.sym} 395 325 0 0 {name=h1
descr="Click left mouse button here with control key
pressed to load/unload waveforms in graph."
tclcommand="
xschem raw_read $netlist_dir/[file tail [file rootname [xschem get current_name]]].raw
"
}
C {vsource.sym} 50 10 0 0 {name=V2 value="5" savecurrent=false}
C {gnd.sym} 50 60 0 0 {name=l52 lab=GND}
C {gnd.sym} 400 80 0 0 {name=l1 lab=GND}
C {lab_pin.sym} 520 0 0 1 {name=p2 sig_type=std_logic lab=OUT}
C {lab_pin.sym} 300 -30 0 1 {name=p1 sig_type=std_logic lab=PLUS}
C {lab_pin.sym} 300 30 0 1 {name=p3 sig_type=std_logic lab=MINUS}
C {vsource.sym} 120 110 0 0 {name=V1 value="SIN(2.5 2.5 1meg 0 0 0)" savecurrent=false}
C {gnd.sym} 120 140 0 0 {name=l2 lab=GND}
C {vsource.sym} 290 160 0 0 {name=V3 value="2.1" savecurrent=false}
C {gnd.sym} 290 210 0 0 {name=l3 lab=GND}
C {symbols/ppolyf_u_1k_6p0.sym} -150 340 0 0 {name=R1
W=1e-6
L=1e-6
model=ppolyf_u_1k_6p0
spiceprefix=X
m=1}
C {gnd.sym} -150 380 0 0 {name=l4 lab=GND}
C {vsource.sym} -290 300 0 0 {name=V4 value="5" savecurrent=false}
C {gnd.sym} -290 350 0 0 {name=l5 lab=GND}
C {lab_pin.sym} -120 290 0 1 {name=p4 sig_type=std_logic lab=TESTTEST}
C {symbols/nfet_06v0.sym} -170 250 0 0 {name=M1
L=0.70u
W=1u
nf=1
m=25
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_06v0
spiceprefix=X
}
C {extracted/comparator_f.sym} 510 0 0 0 {name=x1}
