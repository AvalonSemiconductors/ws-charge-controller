v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 610 -460 1200 0 {flags=graph
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
divx=5
subdivx=1

unitx=1
dataset=-1
y1=-0.01
color=4
node=i(v1)
y2=0
x1=0
x2=2e-06}
B 2 610 0 1200 460 {flags=graph
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
x2=2e-06
color=4
node=DACOUT}
B 2 1200 0 1790 460 {flags=graph
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
x2=2e-06
color="4 7 10 12"
node="V0
V1
V2
V3"}
B 2 610 460 1200 920 {flags=graph
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
x2=2e-06
color="4 12"
node="x1.osc
x1.por"}
N -120 -30 -120 80 {lab=#net1}
N -120 -30 -50 -30 {lab=#net1}
N 250 -30 280 -30 {lab=DACOUT}
N 250 -10 280 -10 {lab=V0}
N 250 10 280 10 {lab=V1}
N 250 30 280 30 {lab=V2}
N 250 50 280 50 {lab=V3}
C {extracted/easter_egg_f.sym} 100 0 0 0 {name=x1}
C {devices/code_shown.sym} -1330 -190 0 0 {name=NGSPICE only_toplevel=true
value="
.TRAN 1n 2u 0 10n
.PRINT TRAN FORMAT=raw file=easter_egg_bench.raw v(*) i(*)
.PREPROCESS REPLACEGROUND TRUE
"}
C {devices/code_shown.sym} -1810 170 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include /run/media/veracrypt1/ws-charge-controller/analog/xschem/extracted/easter_egg_f.spice
.include $::PDK_ROOT/gf180mcuD/libs.tech/xyce/design.xyce
.lib $::PDK_ROOT/gf180mcuD/libs.tech/xyce/sm141064.xyce typical
.lib $::PDK_ROOT/gf180mcuD/libs.tech/xyce/sm141064.xyce res_typical
.lib $::PDK_ROOT/gf180mcuD/libs.tech/xyce/sm141064.xyce diode_typical
.lib $::PDK_ROOT/gf180mcuD/libs.tech/xyce/sm141064.xyce mimcap_typical
.lib $::PDK_ROOT/gf180mcuD/libs.tech/xyce/sm141064.xyce cap_mim
"}
C {devices/launcher.sym} -195 395 0 0 {name=h1
descr="Click left mouse button here with control key
pressed to load/unload waveforms in graph."
tclcommand="
xschem raw_read $netlist_dir/[file tail [file rootname [xschem get current_name]]].raw
"
}
C {vsource.sym} -120 110 0 0 {name=V1 value="PULSE(0 5 200n 22n 22n 200u 220u 0)" savecurrent=false}
C {gnd.sym} -120 140 0 0 {name=l2 lab=GND}
C {gnd.sym} -50 -10 1 0 {name=l1 lab=GND}
C {lab_pin.sym} 280 -30 0 1 {name=p2 sig_type=std_logic lab=DACOUT}
C {lab_pin.sym} 280 -10 0 1 {name=p1 sig_type=std_logic lab=V0}
C {lab_pin.sym} 280 10 0 1 {name=p3 sig_type=std_logic lab=V1}
C {lab_pin.sym} 280 30 0 1 {name=p4 sig_type=std_logic lab=V2}
C {lab_pin.sym} 280 50 0 1 {name=p5 sig_type=std_logic lab=V3}
