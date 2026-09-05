v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 40 -590 630 -130 {flags=graph
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x2=1.2e-05
divx=5
subdivx=1

unitx=1
dataset=-1
y1=-0.01
x1=2.279138e-07
color=4
node=i(v1)
y2=0}
B 2 950 -590 1540 -130 {flags=graph
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
divx=5
subdivx=1

unitx=1
dataset=-1
y1=-3
x1=2.279138e-07
color=7
node=i(v2)
y2=0
x2=1.2e-05}
B 2 950 -130 1540 330 {flags=graph
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
divx=5
subdivx=1

unitx=1
dataset=-1
x1=2.279138e-07
color="11 12 4"
node="CONTROL
DISABLE
x1.curref"
y2=6
y1=0
x2=1.2e-05}
N -200 60 -200 80 {lab=GND}
N -200 -30 -200 -0 {lab=VDD}
N -200 -30 30 -30 {lab=VDD}
N 330 30 330 70 {lab=PROG}
N 550 370 550 390 {lab=GND}
N 550 290 550 310 {lab=#net1}
N 330 10 600 10 {lab=CONTROL}
N 700 250 700 270 {lab=GND}
N 550 130 550 140 {lab=#net2}
N 550 130 700 130 {lab=#net2}
N 700 130 700 190 {lab=#net2}
N 330 130 330 150 {lab=GND}
N 30 30 30 80 {lab=DISABLE}
N 30 140 30 160 {lab=GND}
N 600 10 600 210 {lab=CONTROL}
N 10 -10 30 -10 {lab=GND}
N 500 10 500 210 {lab=CONTROL}
N 30 -10 30 10 {lab=GND}
C {devices/code_shown.sym} -850 -170 0 0 {name=NGSPICE only_toplevel=true
value="
.control
save all
tran 1n 12u
remzerovec
write current_ref_bench.raw
.endc
"}
C {devices/code_shown.sym} -1250 50 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
.lib $::180MCU_MODELS/sm141064.ngspice res_typical
.lib $::180MCU_MODELS/sm141064.ngspice diode_typical
.lib $::180MCU_MODELS/sm141064.ngspice mimcap_typical
.lib $::180MCU_MODELS/sm141064.ngspice cap_mim
"}
C {devices/launcher.sym} -105 265 0 0 {name=h1
descr="Click left mouse button here with control key
pressed to load/unload waveforms in graph."
tclcommand="
xschem raw_read $netlist_dir/[file tail [file rootname [xschem get current_name]]].raw
"
}
C {vsource.sym} -200 30 0 0 {name=V1 value="5" savecurrent=false}
C {gnd.sym} -200 80 0 0 {name=l52 lab=GND}
C {gnd.sym} 10 -10 1 0 {name=l1 lab=GND}
C {vsource.sym} 550 340 0 0 {name=V4 value="2.5" savecurrent=false}
C {gnd.sym} 550 390 0 0 {name=l4 lab=GND}
C {vsource.sym} 700 220 0 0 {name=V2 value="5" savecurrent=false}
C {gnd.sym} 700 270 0 0 {name=l3 lab=GND}
C {lab_pin.sym} 600 10 1 0 {name=p1 sig_type=std_logic lab=CONTROL}
C {res.sym} 330 100 0 0 {name=R1
value=7k
footprint=1206
device=resistor
m=1}
C {gnd.sym} 330 150 0 0 {name=l5 lab=GND}
C {lab_pin.sym} -200 -30 0 0 {name=p2 sig_type=std_logic lab=VDD}
C {vsource.sym} 30 110 0 0 {name=V3 value="PULSE(0 5 1u 22n 22n 3u 22u 0)" savecurrent=false}
C {gnd.sym} 30 160 0 0 {name=l2 lab=GND}
C {lab_pin.sym} 30 60 2 0 {name=p3 sig_type=std_logic lab=DISABLE}
C {power_fet_approx.sym} 640 180 0 0 {name=x2}
C {current_ref.sym} 180 0 0 0 {name=x1}
C {lab_pin.sym} 330 50 2 0 {name=p4 sig_type=std_logic lab=PROG}
