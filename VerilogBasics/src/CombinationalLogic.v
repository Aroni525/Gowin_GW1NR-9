module booleanGate #(parameter TYPE = "AND")(
		input wire s_in1,
		input wire s_in2,
		output reg s_out
);
	
always @(s_in1, s_in2) begin
	if (TYPE == "AND") begin
		s_out <= (s_in1 & s_in2);
	end
	else if (TYPE == "OR") begin
		s_out <= (s_in1 | s_in2);
	end
	
end


endmodule
