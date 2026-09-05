v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 210 -670 800 -210 {flags=graph
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
node=i(V2)
y2=0.001}
B 2 210 -210 800 250 {flags=graph
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
color="4 5"
node="IN
OUT"}
N -350 30 -270 30 {lab=GND}
N -270 30 -270 50 {lab=GND}
N 0 -120 -0 -70 {lab=#net1}
N -350 -120 -0 -120 {lab=#net1}
N -350 -120 -350 -30 {lab=#net1}
N 0 70 0 90 {lab=GND}
N 100 -0 110 -0 {lab=OUT}
N 110 -0 110 40 {lab=OUT}
N 110 100 110 120 {lab=#net2}
N -40 120 110 120 {lab=#net2}
N -40 10 -40 120 {lab=#net2}
N -40 -20 -40 -10 {lab=#net3}
N -100 -20 -40 -20 {lab=#net3}
N -100 40 -100 60 {lab=GND}
N -270 -50 -270 -30 {lab=IN}
N -60 -50 -60 10 {lab=#net2}
N -60 10 -40 10 {lab=#net2}
N -130 -50 -60 -50 {lab=#net2}
N -270 -50 -190 -50 {lab=IN}
C {vsource.sym} -270 0 0 0 {name=V1 value="SIN(2.5 1.0 1meg 0 0 0)" savecurrent=false}
C {vsource.sym} -350 0 0 0 {name=V2 value="5" savecurrent=false}
C {gnd.sym} -270 50 0 0 {name=l52 lab=GND}
C {gnd.sym} 0 90 0 0 {name=l1 lab=GND}
C {res.sym} 110 70 0 0 {name=R1
value=220k
footprint=1206
device=resistor
m=1}
C {vsource.sym} -100 10 0 0 {name=V3 value="2.5" savecurrent=false}
C {gnd.sym} -100 60 0 0 {name=l2 lab=GND}
C {res.sym} -160 -50 3 0 {name=R2
value=100k
footprint=1206
device=resistor
m=1}
C {lab_pin.sym} -270 -50 0 0 {name=p1 sig_type=std_logic lab=IN}
C {lab_pin.sym} 110 0 2 0 {name=p2 sig_type=std_logic lab=OUT}
C {devices/code_shown.sym} -1200 100 0 0 {name=NGSPICE only_toplevel=true
value="
.option method=gear
.param baser=2e-6
.control
save all
tran 1n 3u
remzerovec
write opamp_bench.raw
.endc
"}
C {devices/code_shown.sym} -1180 380 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include /run/media/veracrypt1/gf180mcu-project-template/analog/xschem/extracted/opamp_smol_f.spice
.include /run/media/veracrypt1/gf180mcu-project-template/analog/xschem/extracted/opamp_medium_f.spice
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
.lib $::180MCU_MODELS/sm141064.ngspice res_typical
.lib $::180MCU_MODELS/sm141064.ngspice diode_typical
.lib $::180MCU_MODELS/sm141064.ngspice mimcap_typical
.lib $::180MCU_MODELS/sm141064.ngspice cap_mim
"}
C {devices/launcher.sym} 45 595 0 0 {name=h1
descr="Click left mouse button here with control key
pressed to load/unload waveforms in graph."
tclcommand="
xschem raw_read $netlist_dir/[file tail [file rootname [xschem get current_name]]].raw
"
}
C {extracted/opamp_medium_f.sym} 110 0 0 0 {name=x1}
