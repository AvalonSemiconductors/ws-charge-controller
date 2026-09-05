v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 870 -470 1460 -10 {flags=graph
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-1.1566984e-07
x2=2.9884317e-05
divx=5
subdivx=1

unitx=1
dataset=-1
color=7
node=I(V1)
y2=5e-4
y1=-0.0005}
B 2 240 -250 830 210 {flags=graph
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-1.1566984e-07
x2=2.9884317e-05
divx=5
subdivx=1

unitx=1
dataset=-1
color=4
node=vref
y1=0.65
y2=0.75
hilight_wave=0}
B 2 240 -710 830 -250 {flags=graph
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-1.1566984e-07
x2=2.9884317e-05
divx=5
subdivx=1

unitx=1
dataset=-1
color=4
node=net1
y1=0
y2=6}
N -110 -70 -110 -30 {lab=#net1}
N -110 -70 -10 -70 {lab=#net1}
N -110 30 -110 70 {lab=GND}
N -110 70 -10 70 {lab=GND}
N 40 0 70 0 {lab=VREF}
C {vsource.sym} -110 0 0 0 {name=V1 value="PULSE(5 6 15u 0.1u 0.1u 100u 200u 0)" savecurrent=false}
C {devices/code_shown.sym} -550 -370 0 0 {name=NGSPICE only_toplevel=true
value="
.control
save all
tran 1n 30u
remzerovec
write voltage_ref_bench.raw
.endc
"}
C {devices/code_shown.sym} -1130 -60 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include /run/media/veracrypt1/gf180mcu-project-template/analog/xschem/extracted/voltage_ref_f.spice
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
.lib $::180MCU_MODELS/sm141064.ngspice res_typical
.lib $::180MCU_MODELS/sm141064.ngspice diode_typical
"}
C {devices/launcher.sym} 175 285 0 0 {name=h1
descr="Click left mouse button here with control key
pressed to load/unload waveforms in graph."
tclcommand="
xschem raw_read $netlist_dir/[file tail [file rootname [xschem get current_name]]].raw
"
}
C {devices/lab_pin.sym} 70 0 2 0 {name=l53 sig_type=std_logic lab=VREF}
C {gnd.sym} -110 70 0 0 {name=l52 lab=GND}
C {extracted/voltage_ref_f.sym} 100 0 0 0 {name=x1}
