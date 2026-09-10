v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 820 -330 1410 130 {flags=graph
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
y1=-0.02
x1=0
color=4
node=i(v2)
y2=0}
B 2 820 130 1410 590 {flags=graph
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
y2=6
x1=0
color="4 10 7"
node="S0
S1
OUT"}
B 2 820 590 1410 1050 {flags=graph
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
y1=1
y2=2.5
x1=0
color=4
node=OUT}
N -10 260 -10 280 {lab=GND}
N 120 210 150 210 {lab=GND}
N -10 190 150 190 {lab=#net1}
N -10 190 -10 200 {lab=#net1}
N 450 250 480 250 {lab=OUT}
N 130 290 170 290 {lab=S0}
N 130 230 130 290 {lab=S0}
N 130 230 150 230 {lab=S0}
N 110 320 170 320 {lab=S1}
N 110 250 110 320 {lab=S1}
N 110 250 150 250 {lab=S1}
N 130 420 130 440 {lab=GND}
N 130 290 130 360 {lab=S0}
N -90 420 -90 440 {lab=GND}
N -90 360 110 360 {lab=S1}
N 110 320 110 360 {lab=S1}
C {devices/code_shown.sym} -580 -80 0 0 {name=NGSPICE only_toplevel=true
value="
.option method=gear
.param baser=2e-6
.control
save all
tran 1n 3u
remzerovec
write refgens_bench.raw
.endc
"}
C {devices/code_shown.sym} -1000 170 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include /run/media/veracrypt1/ws-charge-controller/analog/xschem/extracted/refgens_f.spice
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
.lib $::180MCU_MODELS/sm141064.ngspice res_typical
.lib $::180MCU_MODELS/sm141064.ngspice diode_typical
.lib $::180MCU_MODELS/sm141064.ngspice mimcap_typical
.lib $::180MCU_MODELS/sm141064.ngspice cap_mim
"}
C {vsource.sym} -10 230 0 0 {name=V2 value="5" savecurrent=false}
C {gnd.sym} -10 280 0 0 {name=l52 lab=GND}
C {gnd.sym} 120 210 1 0 {name=l1 lab=GND}
C {lab_pin.sym} 480 250 2 0 {name=p1 sig_type=std_logic lab=OUT}
C {lab_pin.sym} 170 290 2 0 {name=p2 sig_type=std_logic lab=S0}
C {lab_pin.sym} 170 320 2 0 {name=p3 sig_type=std_logic lab=S1}
C {vsource.sym} 130 390 0 0 {name=V1 value="PULSE(0 5 1u 0.1n 0.1n 1u 2u 0)" savecurrent=false}
C {gnd.sym} 130 440 0 0 {name=l2 lab=GND}
C {devices/launcher.sym} 215 555 0 0 {name=h1
descr="Click left mouse button here with control key
pressed to load/unload waveforms in graph."
tclcommand="
xschem raw_read $netlist_dir/[file tail [file rootname [xschem get current_name]]].raw
"
}
C {vsource.sym} -90 390 0 0 {name=V3 value="PULSE(0 5 1.5u 0.1n 0.1n 1u 2u 0)" savecurrent=false}
C {gnd.sym} -90 440 0 0 {name=l3 lab=GND}
C {extracted/refgens_f.sym} 300 230 0 0 {name=x1}
