v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 830 -500 1420 -40 {flags=graph
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
divx=5
subdivx=1

unitx=1
dataset=-1
y1=-1.5
color=4
node=i(v2)
y2=0
x1=4.4e-05
x2=0.000124}
B 2 830 -40 1420 420 {flags=graph
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
color="12 8 8 4"
node="CHRGb
DONEB
BAT
CAP"
x1=4.4e-05
x2=0.000124}
B 2 -20 -660 570 -200 {flags=graph
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
color="6 8 7"
node="GATE
x1.halfbat
x1.refout"
x1=4.4e-05
x2=0.000124}
B 2 -20 -1120 570 -660 {flags=graph
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
divx=5
subdivx=1

unitx=1
dataset=-1
y1=-0.02
color=4
node=i(v1)
y2=0
x1=4.4e-05
x2=0.000124}
B 2 830 420 1420 880 {flags=graph
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
color=12
node=x1.opout
x1=4.4e-05
x2=0.000124}
N 190 160 190 180 {lab=GND}
N 170 -60 210 -60 {lab=GND}
N 190 -80 190 100 {lab=#net1}
N 170 -80 190 -80 {lab=#net1}
N -180 -80 -130 -80 {lab=#net2}
N -180 -60 -130 -60 {lab=#net3}
N -270 20 -130 20 {lab=#net4}
N -270 80 -270 100 {lab=GND}
N -150 50 -130 50 {lab=PU}
N -150 70 -130 70 {lab=PD}
N 170 -40 260 -40 {lab=DONEb}
N 170 -0 260 -0 {lab=CHRGb}
N 300 30 300 40 {lab=GATE}
N 640 80 640 100 {lab=GND}
N 640 -40 640 20 {lab=#net5}
N 500 -40 640 -40 {lab=#net5}
N 170 60 370 60 {lab=BAT}
N 370 60 370 120 {lab=BAT}
N 370 120 500 120 {lab=BAT}
N 500 240 500 250 {lab=GND}
N -230 -20 -130 -20 {lab=#net6}
N -230 -140 -230 -20 {lab=#net6}
N -230 -140 -220 -140 {lab=#net6}
N -270 -80 -180 -80 {lab=#net2}
N -270 -60 -180 -60 {lab=#net3}
N 170 40 300 40 {lab=GATE}
N 300 40 450 40 {lab=GATE}
N -160 -140 -150 -140 {lab=#net7}
N -90 -140 -80 -140 {lab=GND}
N -330 -80 -330 170 {lab=GND}
N -150 -40 -130 -40 {lab=GND}
N 480 -40 500 -40 {lab=#net5}
N 480 -40 480 -30 {lab=#net5}
N 510 -30 620 -30 {lab=GND}
N 620 -30 620 80 {lab=GND}
N 620 80 640 80 {lab=GND}
N 500 180 540 180 {lab=CAP}
N 430 180 500 180 {lab=CAP}
N 430 240 500 240 {lab=GND}
N -330 170 150 170 {lab=GND}
N 150 170 190 170 {lab=GND}
C {control.sym} 20 0 0 0 {name=x1}
C {vsource.sym} 190 130 0 0 {name=V1 value="5" savecurrent=false}
C {gnd.sym} 190 180 0 0 {name=l52 lab=GND}
C {gnd.sym} 210 -60 3 0 {name=l1 lab=GND}
C {res.sym} -270 50 0 0 {name=R1
value=6k
footprint=1206
device=resistor
m=1}
C {lab_pin.sym} -150 50 0 0 {name=p3 sig_type=std_logic lab=PU}
C {lab_pin.sym} -150 70 0 0 {name=p4 sig_type=std_logic lab=PD}
C {res.sym} -190 -140 1 0 {name=R2
value=1k
footprint=1206
device=resistor
m=1}
C {lab_pin.sym} 260 -40 2 0 {name=p5 sig_type=std_logic lab=DONEb}
C {lab_pin.sym} 260 0 2 0 {name=p6 sig_type=std_logic lab=CHRGb}
C {lab_pin.sym} 300 30 2 0 {name=p7 sig_type=std_logic lab=GATE}
C {vsource.sym} 640 50 0 0 {name=V2 value="5" savecurrent=false}
C {gnd.sym} 640 100 0 0 {name=l3 lab=GND}
C {gnd.sym} 500 250 0 0 {name=l4 lab=GND}
C {lab_pin.sym} 370 100 2 0 {name=p8 sig_type=std_logic lab=BAT}
C {devices/code_shown.sym} -1100 -210 0 0 {name=NGSPICE only_toplevel=true
value="
.TRAN 1n 100u 0 10n
.PRINT TRAN FORMAT=raw file=control_bench.raw v(*) i(*)
.PREPROCESS REPLACEGROUND TRUE
*.control
*save all
*tran 1n 100u
*remzerovec
*write control_bench.raw
*.endc
"}
C {devices/code_shown.sym} -1520 60 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::PDK_ROOT/gf180mcuD/libs.tech/xyce/design.xyce
.lib $::PDK_ROOT/gf180mcuD/libs.tech/xyce/sm141064.xyce typical
.lib $::PDK_ROOT/gf180mcuD/libs.tech/xyce/sm141064.xyce res_typical
.lib $::PDK_ROOT/gf180mcuD/libs.tech/xyce/sm141064.xyce diode_typical
.lib $::PDK_ROOT/gf180mcuD/libs.tech/xyce/sm141064.xyce mimcap_typical
.lib $::PDK_ROOT/gf180mcuD/libs.tech/xyce/sm141064.xyce cap_mim
.include /run/media/veracrypt1/ws-charge-controller/analog/xschem/extracted/power_fet_f.spice
"}
C {devices/launcher.sym} -355 265 0 0 {name=h1
descr="Click left mouse button here with control key
pressed to load/unload waveforms in graph."
tclcommand="
xschem raw_read $netlist_dir/[file tail [file rootname [xschem get current_name]]].raw
"
}
C {res.sym} -300 -80 1 0 {name=R3
value=1k
footprint=1206
device=resistor
m=1}
C {res.sym} -300 -60 1 0 {name=R4
value=1k
footprint=1206
device=resistor
m=1}
C {vsource.sym} -120 -140 3 0 {name=V3 value="PULSE(0 5 2u 2n 2n 1000u 2000u 0)" savecurrent=false}
C {gnd.sym} -80 -140 3 0 {name=l6 lab=GND}
C {capa.sym} 500 210 0 0 {name=C1
m=1
value=6u
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} -270 100 0 0 {name=l5 lab=GND}
C {res.sym} 500 150 0 0 {name=R5
value=2
footprint=1206
device=resistor
m=1}
C {lab_pin.sym} 540 180 2 0 {name=p1 sig_type=std_logic lab=CAP}
C {res.sym} 430 210 0 0 {name=R6
value=100k
footprint=1206
device=resistor
m=1}
C {gnd.sym} -150 -40 1 0 {name=l2 lab=GND}
C {power_fet_approx.sym} 390 10 0 1 {name=x2}
