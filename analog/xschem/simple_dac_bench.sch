v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 600 -200 1190 260 {flags=graph
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
color="4"
node="OUT"}
B 2 600 -660 1190 -200 {flags=graph
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
x2=1e-5}
N -200 -40 -200 70 {lab=#net1}
N -200 -40 -110 -40 {lab=#net1}
N 190 40 220 40 {lab=OUT}
N -420 0 -110 -0 {lab=#net2}
N -420 0 -420 70 {lab=#net2}
N -630 20 -110 20 {lab=#net3}
N -630 20 -630 70 {lab=#net3}
N -830 40 -110 40 {lab=#net4}
N -830 40 -830 70 {lab=#net4}
C {vsource.sym} -200 100 0 0 {name=V1 value=5 savecurrent=false}
C {gnd.sym} -200 130 0 0 {name=l2 lab=GND}
C {gnd.sym} -110 -20 1 0 {name=l1 lab=GND}
C {lab_pin.sym} 220 40 0 1 {name=p4 sig_type=std_logic lab=OUT}
C {devices/launcher.sym} -365 365 0 0 {name=h1
descr="Click left mouse button here with control key
pressed to load/unload waveforms in graph."
tclcommand="
xschem raw_read $netlist_dir/[file tail [file rootname [xschem get current_name]]].raw
"
}
C {devices/code_shown.sym} -1100 -80 0 0 {name=NGSPICE only_toplevel=true
value="
.TRAN 1n 10u 0 10n
.PRINT TRAN FORMAT=raw file=simple_dac_bench.raw v(*) i(*)
.PREPROCESS REPLACEGROUND TRUE
"}
C {devices/code_shown.sym} -1580 280 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include /foss/designs/charger/xschem/extracted/simple_dac_f.spice
.include $::PDK_ROOT/gf180mcuD/libs.tech/xyce/design.xyce
.lib $::PDK_ROOT/gf180mcuD/libs.tech/xyce/sm141064.xyce typical
.lib $::PDK_ROOT/gf180mcuD/libs.tech/xyce/sm141064.xyce res_typical
.lib $::PDK_ROOT/gf180mcuD/libs.tech/xyce/sm141064.xyce diode_typical
.lib $::PDK_ROOT/gf180mcuD/libs.tech/xyce/sm141064.xyce mimcap_typical
.lib $::PDK_ROOT/gf180mcuD/libs.tech/xyce/sm141064.xyce cap_mim
"}
C {vsource.sym} -420 100 0 0 {name=V2 value="PULSE(0 5 2u 2n 2n 2u 4u 0)" savecurrent=false}
C {gnd.sym} -420 130 0 0 {name=l3 lab=GND}
C {vsource.sym} -630 100 0 0 {name=V3 value="PULSE(0 5 3u 2n 2n 2u 4u 0)" savecurrent=false}
C {gnd.sym} -630 130 0 0 {name=l4 lab=GND}
C {vsource.sym} -830 100 0 0 {name=V4 value="PULSE(0 5 4u 2n 2n 2u 4u 0)" savecurrent=false}
C {gnd.sym} -830 130 0 0 {name=l5 lab=GND}
C {extracted/simple_dac_f.sym} 40 20 0 0 {name=x1}
