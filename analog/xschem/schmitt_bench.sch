v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 710 -320 1300 140 {flags=graph
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
y2=5
x1=0
color="4 7"
node="A
Y_F"}
B 2 710 -780 1300 -320 {flags=graph
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
y1=-0.001
x1=0
color=4
node=i(V3)
y2=0.001}
N 60 50 60 90 {lab=GND}
N 240 60 240 70 {lab=GND}
N 60 70 240 70 {lab=GND}
N -30 70 60 70 {lab=GND}
N -30 50 -30 70 {lab=GND}
N 230 40 240 40 {lab=A}
N 230 -10 230 40 {lab=A}
N 60 -10 230 -10 {lab=A}
N 240 -30 240 20 {lab=#net1}
N -30 -30 240 -30 {lab=#net1}
N -30 -30 -30 -10 {lab=#net1}
N 590 20 590 50 {lab=Y}
N 540 20 590 20 {lab=Y}
N 590 140 590 170 {lab=Y_F}
N 540 140 590 140 {lab=Y_F}
N 210 160 240 160 {lab=A}
N 210 -10 210 160 {lab=A}
N 130 220 240 220 {lab=GND}
N 240 180 240 220 {lab=GND}
N 130 140 240 140 {lab=#net2}
N 130 140 130 160 {lab=#net2}
C {devices/code_shown.sym} -540 -170 0 0 {name=NGSPICE only_toplevel=true
value="
.option method=gear
.param baser=2e-6
.control
save all
tran 1n 3u
remzerovec
write schmitt_bench.raw
.endc
"}
C {devices/code_shown.sym} -1030 120 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include /run/media/veracrypt1/gf180mcu-project-template/analog/xschem/extracted/schmitt_f.spice
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
.lib $::180MCU_MODELS/sm141064.ngspice res_typical
.lib $::180MCU_MODELS/sm141064.ngspice diode_typical
"}
C {vsource.sym} 60 20 0 0 {name=V1 value="SIN(2.5 2.5 1meg 0 0 0)" savecurrent=false}
C {gnd.sym} 60 90 0 0 {name=l52 lab=GND}
C {vsource.sym} -30 20 0 0 {name=V2 value="5" savecurrent=false}
C {lab_pin.sym} 60 -10 0 0 {name=p1 sig_type=std_logic lab=A}
C {lab_pin.sym} 590 50 0 0 {name=p2 sig_type=std_logic lab=Y}
C {devices/launcher.sym} 455 375 0 0 {name=h1
descr="Click left mouse button here with control key
pressed to load/unload waveforms in graph."
tclcommand="
xschem raw_read $netlist_dir/[file tail [file rootname [xschem get current_name]]].raw
"
}
C {schmitt.sym} 390 40 0 0 {name=x1}
C {extracted/schmitt_f.sym} 390 160 0 0 {name=x2}
C {lab_pin.sym} 590 170 0 0 {name=p3 sig_type=std_logic lab=Y_F}
C {vsource.sym} 130 190 0 0 {name=V3 value="5" savecurrent=false}
C {gnd.sym} 170 220 0 0 {name=l1 lab=GND}
