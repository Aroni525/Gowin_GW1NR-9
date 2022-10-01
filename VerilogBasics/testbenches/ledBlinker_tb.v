`timescale 1ns / 1ns

module ledBlinker_tb ();

reg clk;
reg rst;
reg in;
wire out_led;
wire out_div;

ledBlinker dut (
	.sig (in),
	.reset (rst),
	.clock (clk),
	.led (out_led),
	.div (out_div)
);

initial begin
	clk = 1'b0;
	forever #10 clk = ~clk;
end

initial begin 
	rst = 1'b1;
	#1
	rst = 1'b0;
	#200
	rst = 1'b1;
	#70
	rst = 1'b0;
end

initial begin

	$monitor("time = %3d, input = %b, led = %b, div = %b",
		 $time, in, out_led, out_div);

	in = 1'b0;
	#50
	in = 1'b1;
	#50
	
	in = 1'b0;
	#50
	in = 1'b1;
	#50

	in = 1'b0;
	#50
	in = 1'b1;
	#50

	in = 1'b0;
	#300
	in = 1'b1;
	#100
	in = 1'b0;

	$stop;
end

endmodule
