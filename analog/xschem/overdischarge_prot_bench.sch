v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 350 -530 940 -70 {flags=graph
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
divx=5
subdivx=1

unitx=1
dataset=-1
y1=-0.001
color=4
node=i(v1)
y2=0
x1=0
x2=1e-5}
B 2 350 -70 940 390 {flags=graph
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
divx=5
subdivx=1

unitx=1
dataset=-1
y1=0
y2=5
x1=0
x2=1e-5
color="4 7"
node="VDD
SAFE"}
B 2 350 390 940 850 {flags=graph
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
divx=5
subdivx=1

unitx=1
dataset=-1
y1=0
y2=5
x1=0
x2=1e-5
color="7 4"
node="x1.plus
x1.minus"}
N -360 -20 -260 -20 {lab=VDD}
N -360 -20 -360 90 {lab=VDD}
N -290 -0 -260 0 {lab=GND}
N 40 -10 70 -10 {lab=SAFE}
N -370 -20 -360 -20 {lab=VDD}
N -270 10 -260 10 {lab=GND}
N -270 0 -270 10 {lab=GND}
N -260 10 -260 30 {lab=GND}
N 40 10 70 10 {lab=PU}
N 40 30 70 30 {lab=PD}
C {devices/code_shown.sym} -1140 -200 0 0 {name=NGSPICE only_toplevel=true
value="
.TRAN 1n 10u 0 10n
.PRINT TRAN FORMAT=raw file=overdischarge_prot_bench.raw v(*) i(*)
.PREPROCESS REPLACEGROUND TRUE
.MEASURE TRAN final1 MAX v(PU)
.MEASURE TRAN final2 MAX v(PD)
*.control
*save all
*tran 1n 10u
*remzerovec
*write overdischarge_prot_bench.raw
*.endc
"}
C {devices/code_shown.sym} -1620 160 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include /run/media/veracrypt1/ws-charge-controller/analog/xschem/extracted/overdischarge_prot_f.spice
.include $::PDK_ROOT/gf180mcuD/libs.tech/xyce/design.xyce
.lib $::PDK_ROOT/gf180mcuD/libs.tech/xyce/sm141064.xyce typical
.lib $::PDK_ROOT/gf180mcuD/libs.tech/xyce/sm141064.xyce res_typical
.lib $::PDK_ROOT/gf180mcuD/libs.tech/xyce/sm141064.xyce diode_typical
.lib $::PDK_ROOT/gf180mcuD/libs.tech/xyce/sm141064.xyce mimcap_typical
.lib $::PDK_ROOT/gf180mcuD/libs.tech/xyce/sm141064.xyce cap_mim
"}
C {devices/launcher.sym} -495 335 0 0 {name=h1
descr="Click left mouse button here with control key
pressed to load/unload waveforms in graph."
tclcommand="
xschem raw_read $netlist_dir/[file tail [file rootname [xschem get current_name]]].raw
"
}
C {vsource.sym} -360 120 0 0 {name=V1 value="SIN(2.5 1.5 50k 0 0 90)" savecurrent=false}
C {gnd.sym} -360 150 0 0 {name=l2 lab=GND}
C {gnd.sym} -290 0 1 0 {name=l1 lab=GND}
C {lab_pin.sym} 70 -10 0 1 {name=p2 sig_type=std_logic lab=SAFE}
C {lab_pin.sym} -370 -20 2 1 {name=p1 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 70 10 0 1 {name=p3 sig_type=std_logic lab=PU}
C {lab_pin.sym} 70 30 0 1 {name=p4 sig_type=std_logic lab=PD}
C {extracted/overdischarge_prot_f.sym} -100 10 0 0 {name=x1}
