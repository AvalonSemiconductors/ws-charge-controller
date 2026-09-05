v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 880 420 1470 880 {flags=graph
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x2=1e-6
divx=5
subdivx=1

unitx=1
dataset=-1
y1=0
y2=6
x1=0
color=4
node=Y}
B 2 880 -500 1470 -40 {flags=graph
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x2=1e-6
divx=5
subdivx=1

unitx=1
dataset=-1
y1=-0.001
x1=0
color=4
node=i(V2)
y2=0.001}
B 2 880 -40 1470 420 {flags=graph
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x2=1e-6
divx=5
subdivx=1

unitx=1
dataset=-1
y1=0
y2=6
x1=0
color="4 7"
node="A
B"}
N 80 130 280 130 {lab=#net1}
N 80 130 80 160 {lab=#net1}
N 80 220 140 220 {lab=GND}
N 140 220 140 270 {lab=GND}
N 140 220 210 220 {lab=GND}
N 250 150 280 150 {lab=GND}
N 250 150 250 220 {lab=GND}
N 210 220 250 220 {lab=GND}
N 240 160 280 160 {lab=A}
N 240 140 240 160 {lab=A}
N 140 140 240 140 {lab=A}
N 140 140 140 160 {lab=A}
N 210 150 210 160 {lab=B}
N 210 150 230 150 {lab=B}
N 230 150 230 180 {lab=B}
N 230 180 280 180 {lab=B}
N 580 180 620 180 {lab=Y}
N 620 180 620 210 {lab=Y}
C {devices/code_shown.sym} -210 -80 0 0 {name=NGSPICE only_toplevel=true
value="
.option method=gear
.param baser=2e-6
.control
save all
tran 1n 1u
remzerovec
write nand_bench.raw
.endc
"}
C {devices/code_shown.sym} -530 150 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include /foss/designs/extracted/nand_f.spice
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
.lib $::180MCU_MODELS/sm141064.ngspice res_typical
.lib $::180MCU_MODELS/sm141064.ngspice diode_typical
"}
C {vsource.sym} 80 190 0 0 {name=V2 value="5" savecurrent=false}
C {gnd.sym} 140 270 0 0 {name=l52 lab=GND}
C {vsource.sym} 140 190 0 0 {name=V1 value="PULSE(0 5 50n 1n 1n 100n 200n 0)" savecurrent=false}
C {vsource.sym} 210 190 0 0 {name=V3 value="PULSE(0 5 100n 1n 1n 100n 200n 0)" savecurrent=false}
C {lab_pin.sym} 620 210 0 0 {name=p2 sig_type=std_logic lab=Y}
C {devices/launcher.sym} 265 325 0 0 {name=h1
descr="Click left mouse button here with control key
pressed to load/unload waveforms in graph."
tclcommand="
xschem raw_read $netlist_dir/[file tail [file rootname [xschem get current_name]]].raw
"
}
C {lab_pin.sym} 140 140 0 0 {name=p1 sig_type=std_logic lab=A}
C {lab_pin.sym} 210 150 0 0 {name=p3 sig_type=std_logic lab=B}
C {extracted/nand_f.sym} 430 160 0 0 {name=x1}
