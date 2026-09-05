v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 20 -910 610 -450 {flags=graph
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x2=3e-05
divx=5
subdivx=1

unitx=1
dataset=-1
y1=-0.005
x1=0
color=4
node=i(v2)
y2=0}
B 2 1120 -230 1710 230 {flags=graph
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x2=3e-05
divx=5
subdivx=1

unitx=1
dataset=-1
y1=0
y2=6
x1=0
color="4 7 1"
node="OUT
x1.VMSR
SET"}
B 2 1120 -690 1710 -230 {flags=graph
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x2=3e-05
divx=5
subdivx=1

unitx=1
dataset=-1
y1=-2
x1=0
color=7
node=i(v1)
y2=0}
N -80 90 -80 110 {lab=GND}
N -80 20 120 20 {lab=VDD}
N -80 20 -80 30 {lab=VDD}
N 720 20 730 20 {lab=PLUS}
N 730 20 890 20 {lab=PLUS}
N 810 160 810 180 {lab=GND}
N 40 40 120 40 {lab=GND}
N 420 80 440 80 {lab=SET}
N 440 80 440 90 {lab=SET}
N 420 60 480 60 {lab=OUT}
N 440 80 480 80 {lab=SET}
N 120 100 120 110 {lab=#net1}
N 40 40 40 170 {lab=GND}
N 40 170 120 170 {lab=GND}
N 720 340 720 360 {lab=GND}
N 680 20 720 20 {lab=PLUS}
N -70 -10 -70 20 {lab=VDD}
N 670 170 720 170 {lab=MINUS}
N 770 90 810 90 {lab=#net2}
N 810 90 810 100 {lab=#net2}
N 720 170 720 280 {lab=MINUS}
C {devices/code_shown.sym} -660 -170 0 0 {name=NGSPICE only_toplevel=true
value="
.option method=gear
.param baser=2e-6
.control
save all
tran 1n 30u
remzerovec
write current_sense_bench.raw
.endc
"}
C {devices/code_shown.sym} -980 60 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include /run/media/veracrypt1/gf180mcu-project-template/analog/xschem/extracted/power_fet_f.spice
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
.lib $::180MCU_MODELS/sm141064.ngspice res_typical
.lib $::180MCU_MODELS/sm141064.ngspice diode_typical
.lib $::180MCU_MODELS/sm141064.ngspice mimcap_typical
.lib $::180MCU_MODELS/sm141064.ngspice cap_mim
"}
C {vsource.sym} -80 60 0 0 {name=V2 value="5" savecurrent=false}
C {gnd.sym} -80 110 0 0 {name=l52 lab=GND}
C {devices/launcher.sym} -45 305 0 0 {name=h1
descr="Click left mouse button here with control key
pressed to load/unload waveforms in graph."
tclcommand="
xschem raw_read $netlist_dir/[file tail [file rootname [xschem get current_name]]].raw
"
}
C {current_sense.sym} 270 50 0 0 {name=x1}
C {gnd.sym} 40 40 1 0 {name=l1 lab=GND}
C {vsource.sym} 890 50 0 0 {name=V1 value="5" savecurrent=false}
C {gnd.sym} 890 80 0 0 {name=l2 lab=GND}
C {vsource.sym} 810 130 0 0 {name=V3 value="SIN(2.5 2.5 0.1meg 0 0 0)" savecurrent=false}
C {gnd.sym} 810 180 0 0 {name=l3 lab=GND}
C {lab_pin.sym} 120 60 0 0 {name=p1 sig_type=std_logic lab=PLUS}
C {lab_pin.sym} 120 80 0 0 {name=p2 sig_type=std_logic lab=MINUS}
C {lab_pin.sym} 680 20 0 0 {name=p3 sig_type=std_logic lab=PLUS}
C {lab_pin.sym} 670 170 0 0 {name=p4 sig_type=std_logic lab=MINUS}
C {res.sym} 440 120 0 0 {name=R2
value=6k
footprint=1206
device=resistor
m=1}
C {gnd.sym} 440 150 0 0 {name=l5 lab=GND}
C {lab_pin.sym} 480 60 2 0 {name=p5 sig_type=std_logic lab=OUT}
C {lab_pin.sym} 480 80 2 0 {name=p6 sig_type=std_logic lab=SET}
C {res.sym} 120 140 0 0 {name=R3
value=5k
footprint=1206
device=resistor
m=1}
C {vsource.sym} 720 310 0 0 {name=V4 value="2.5" savecurrent=false}
C {gnd.sym} 720 360 0 0 {name=l4 lab=GND}
C {lab_pin.sym} -70 -10 1 0 {name=p7 sig_type=std_logic lab=VDD}
C {extracted/power_fet_f.sym} 720 160 0 1 {name=x2}
