v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 480 -500 1070 -40 {flags=graph
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
divx=5
subdivx=1

unitx=1
dataset=-1
y1=-0.005
color=4
node=i(v1)
y2=0
x1=1.12e-05
x2=1.32e-05}
B 2 480 -40 1070 420 {flags=graph
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
x1=1.12e-05
x2=1.32e-05
color="4 12"
node="OSC
POR"}
N -250 -30 -250 80 {lab=WEH}
N -250 -30 -150 -30 {lab=WEH}
N 150 10 180 10 {lab=OSC}
N 150 30 180 30 {lab=POR}
N -250 -60 -250 -30 {lab=WEH}
N -250 140 -250 150 {lab=GND}
C {devices/code_shown.sym} -1180 -240 0 0 {name=NGSPICE only_toplevel=true
value="
.TRAN 1n 30u 0 10n
.PRINT TRAN FORMAT=raw file=oscillator_bench.raw v(*) i(*)
.MEASURE TRAN oscdut DUTY v(OSC) ON=4 OFF=1
.MEASURE TRAN oscfreq FREQ v(OSC) ON=4 OFF=1
.MEASURE TRAN portime ON_TIME v(POR) ON=4.5 OFF=1
.PREPROCESS REPLACEGROUND TRUE
"}
C {devices/code_shown.sym} -1660 120 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include /run/media/veracrypt1/ws-charge-controller/analog/xschem/extracted/oscillator_f.spice
.include $::PDK_ROOT/gf180mcuD/libs.tech/xyce/design.xyce
.lib $::PDK_ROOT/gf180mcuD/libs.tech/xyce/sm141064.xyce typical
.lib $::PDK_ROOT/gf180mcuD/libs.tech/xyce/sm141064.xyce res_typical
.lib $::PDK_ROOT/gf180mcuD/libs.tech/xyce/sm141064.xyce diode_typical
.lib $::PDK_ROOT/gf180mcuD/libs.tech/xyce/sm141064.xyce mimcap_typical
.lib $::PDK_ROOT/gf180mcuD/libs.tech/xyce/sm141064.xyce cap_mim
"}
C {vsource.sym} -250 110 0 0 {name=V1 value="PULSE(0 5 100n 22n 22n 1000u 2000u 0)"}
C {gnd.sym} -250 150 0 0 {name=l2 lab=GND}
C {gnd.sym} -150 -10 1 0 {name=l1 lab=GND}
C {lab_pin.sym} 180 10 0 1 {name=p2 sig_type=std_logic lab=OSC}
C {devices/launcher.sym} -385 255 0 0 {name=h1
descr="Click left mouse button here with control key
pressed to load/unload waveforms in graph."
tclcommand="
xschem raw_read $netlist_dir/[file tail [file rootname [xschem get current_name]]].raw
"
}
C {lab_pin.sym} 180 30 0 1 {name=p1 sig_type=std_logic lab=POR}
C {lab_pin.sym} -250 -60 0 1 {name=p3 sig_type=std_logic lab=WEH}
C {extracted/oscillator_f.sym} 0 0 0 0 {name=x1}
