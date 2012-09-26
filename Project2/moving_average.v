module moving_average(
	input enable, Clk, 
	input signed [7:0] X1, X2, X3,
	output signed reg [7:0] Z
	);
	
	always@ (posedge Clk) begin
		Z = (1/3)*X1 + (1/3)*X2 + (1/3)*X3;
		//Z = 6'b010101*X1 + 6'b010101*X2 + 6'b010101*X3;
	end

endmodule

