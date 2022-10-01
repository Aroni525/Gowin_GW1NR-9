module ledBlinker(
	input wire sig,
	input wire reset,
	input wire clock,
	output reg led,
	output reg div
); 

always @(posedge sig) begin
	led <= ~led;
end

reg [2:0] divider = 2'b00;

always @(posedge clock or posedge reset) begin
	if(reset) begin
		divider <= 2'b00;
		div <= 1'b0;
	end 
	else begin 
		divider <= divider + 2'b01;

		if(divider == 2'b11) begin
			div <= ~div;
		end
	end
end

endmodule

