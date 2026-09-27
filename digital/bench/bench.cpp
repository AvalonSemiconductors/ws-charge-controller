#include "Vtb.h"
#include "verilated.h"
#include <iostream>
#include <fstream>

static Vtb top;

void clocks(int c) {
	for(int i = 0; i < c*2; i++) {
		Verilated::timeInc(710);
		top.eval();
		top.osc = !top.osc;
		if(Verilated::gotFinish()) return;
	}
}

int main(int argc, char** argv, char** env) {
#ifdef TRACE_ON
	printf("Warning: tracing is ON!\r\n");
	Verilated::traceEverOn(true);
#endif
	top.por = 1;
	clocks(4);
	top.por = 0;
	for(int i = 0; i < 330; i++) {
		std::cout << i << std::endl;
		clocks(7000000);
	}
	top.final();
}
