module moving_average(
	input enable, Clk, 
	input signed [7:0] X1,
	output reg signed  [7:0] Z
	);
	parameter signed A = 8'b00010101;
	
	reg signed [7:0] temp, X2, X3;
	
	always@ (posedge Clk) 
	begin
		if(enable)
			X3 = X2;
			X2 = temp;
			temp = A*X1;
			Z = temp + X2 + X3;
			//Z = 6'b010101*X1 + 6'b010101*X2 + 6'b010101*X3;
	end

endmodule

