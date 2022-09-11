module TopModule (
    input sys_clk,          // clk input
    input sys_rst_n,        // reset input
	input btn2,				// second button
	output wire extraLed,	// extra external led
    output reg [5:0] led    // 6 LEDS pin
);

reg [32:0] counter;
reg [3:0] lastLed = 3'b0;
reg up = 1'b0;

integer speed = 20;

wire outLed;

booleanGate #(.TYPE ("AND")) andGate(
	.s_in1 (!sys_rst_n),
	.s_in2 (!btn2),
	.s_out (outLed)
);

//assign extraLed = !outLed;

always @(posedge sys_clk) begin
    if (counter < 32'd27000000/speed)       // 0.5s delay
        counter <= counter + 1'd1;
    else
        counter <= 32'd0;
end

always @(posedge sys_clk) begin
    if (counter == 32'd27000000/speed) begin      // 0.5s delay
		led[5:0] <= ~(6'b000001 << lastLed);

		if (up) begin
			lastLed = lastLed + 1;
			if(lastLed == 5) begin 
				up = 1'b0;
			end
		end
		else begin
			if(lastLed == 0) begin
				up = 1'b1;
			end
			else begin
				lastLed = lastLed - 1;
			end
		end
	end
    else
        led <= led;
end


endmodule
