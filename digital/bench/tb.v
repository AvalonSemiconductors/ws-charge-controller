`default_nettype none
`timescale 1ns/100ps

module tb(
	input osc,
	input por
);

`ifdef TRACE_ON
	initial begin
		$dumpfile("tb.vcd");
		$dumpvars(0, tb);
	end
`endif

reg sample_clock = 0;
integer clkdiv = 0;
always @(posedge osc) begin
	clkdiv <= clkdiv + 1;
	if(clkdiv == 170) begin
		clkdiv <= 0;
		sample_clock <= !sample_clock;
	end
end

integer fhandle;
initial begin
	fhandle = $fopen("samples.bin", "w");
	$fwrite(fhandle, "bbbb");
	$fflush(fhandle);
	$fclose(fhandle);
end

wire [3:0] out;
wire [2:0] sum = out[0] + out[1] + out[2] + out[3];

blinker dut(
	.clk_i(osc),
	.rst(por),
	.io_out(out),
	.dac_out()
);

always @(sample_clock) begin
	fhandle = $fopen("samples.bin", "a+b");
	$fwrite(fhandle, "%u", {1'b0, sum, 4'h8});
	$fflush(fhandle);
	$fclose(fhandle);
end

endmodule

`default_nettype wire
