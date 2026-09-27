#!/bin/bash
set -e

#TRACE_FLAGS="--trace-depth 3 --trace -DTRACE_ON -CFLAGS '-DTRACE_ON'"
verilator -DBENCH -Wno-fatal --timing --top-module tb -cc -exe ${TRACE_FLAGS} bench.cpp ./tb.v ../blinker.v ../MIDIConverter/lut_0.v ../MIDIConverter/lut_1.v ../MIDIConverter/lut_2.v ../MIDIConverter/lut_3.v
cd obj_dir
make -f Vtb.mk
cd ..
