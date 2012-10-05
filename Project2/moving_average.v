module moving_average(
	input enable_n, Clk, 
	input signed [7:0] X1,
	output signed  [7:0] Z
	);
	reg signed [13:0] Z_temp;
	assign Z[7:0] = Z_temp[13:6];
	parameter signed A = 8'b00010101;
	
	reg signed [13:0] temp, X2, X3;
	
	always@ (posedge Clk) 
	begin
		if(~enable_n) begin
			X3 = X2;
			X2 = temp;
			temp = A*X1;
			Z_temp = temp + X2 + X3;
			//Z = 6'b010101*X1 + 6'b010101*X2 + 6'b010101*X3;
		end
	end

endmodule
