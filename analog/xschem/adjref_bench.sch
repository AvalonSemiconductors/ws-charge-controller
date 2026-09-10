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
x2=1e-06
divx=5
subdivx=1

unitx=1
dataset=-1
y1=-0.003
x1=0
color=4
node=i(V1)
y2=0}
B 2 350 -70 940 390 {flags=graph
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x2=1e-06
divx=5
subdivx=1

unitx=1
dataset=-1
y1=0
y2=6
x1=0
color=4
node=OUT}
N -220 -0 -100 -0 {lab=#net1}
N -220 -10 -220 -0 {lab=#net1}
N -220 0 -220 10 {lab=#net1}
N -100 20 -100 70 {lab=GND}
N -220 70 -100 70 {lab=GND}
N -220 70 -220 90 {lab=GND}
N -340 50 -340 70 {lab=GND}
N -340 70 -220 70 {lab=GND}
N -340 -110 -340 -10 {lab=#net2}
N -340 -110 -100 -110 {lab=#net2}
N -100 -110 -100 -20 {lab=#net2}
N -220 -70 200 -70 {lab=OUT}
N 200 -70 200 -20 {lab=OUT}
N -100 -130 -100 -110 {lab=#net2}
N -100 -130 200 -130 {lab=#net2}
N 200 -20 230 -20 {lab=OUT}
C {res.sym} -220 -40 0 0 {name=R1
value=40k
footprint=1206
device=resistor
m=1}
C {res.sym} -220 40 0 0 {name=R2
value=20k
footprint=1206
device=resistor
m=1}
C {devices/launcher.sym} -145 165 0 0 {name=h1
descr="Click left mouse button here with control key
pressed to load/unload waveforms in graph."
tclcommand="
xschem raw_read $netlist_dir/[file tail [file rootname [xschem get current_name]]].raw
"
}
C {gnd.sym} -220 90 0 0 {name=l3 lab=GND}
C {vsource.sym} -340 20 0 0 {name=V1 value="5" savecurrent=false}
C {res.sym} 200 -100 0 0 {name=R3
value=4k
footprint=1206
device=resistor
m=1}
C {lab_pin.sym} 230 -20 0 1 {name=p2 sig_type=std_logic lab=OUT}
C {devices/code_shown.sym} -1020 -100 0 0 {name=NGSPICE only_toplevel=true
value="
.option method=gear
.param baser=2e-6
.option temp=25
.control
save all
tran 1n 1u
remzerovec
write adjref_bench.raw
.endc
"}
C {devices/code_shown.sym} -1340 130 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include /run/media/veracrypt1/ws-charge-controller/analog/xschem/extracted/adjref_f.spice
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
.lib $::180MCU_MODELS/sm141064.ngspice res_typical
.lib $::180MCU_MODELS/sm141064.ngspice diode_typical
.lib $::180MCU_MODELS/sm141064.ngspice mimcap_typical
.lib $::180MCU_MODELS/sm141064.ngspice cap_mim
"}
C {adjref.sym} 50 0 0 0 {name=x1}
