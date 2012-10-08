module binary_to_BCD_Testbench();

	reg Clk, enable;
	reg [35:0] data;
	wire [3:0] BCD0,BCD1,BCD2,BCD3,BCD4,BCD5,BCD6,BCD7,BCD8;
	
	binary_to_BCD_Behav simulate(
		.Clk(Clk),
		.enable(enable),
		.data(data),
		.BCD0(BCD0),
		.BCD1(BCD1),
		.BCD2(BCD2),
		.BCD3(BCD3),
		.BCD4(BCD4),
		.BCD5(BCD5),
		.BCD6(BCD6),
		.BCD7(BCD7),
		.BCD8(BCD8)
	);
	
	always begin
		#10 Clk = ~Clk;	
	end
	
	initial
	begin
		enable = 0;
		data = 'd650345768;
		#100;
		data = 'd1500478987;
		#100;
		data = 'd1234593;
		#100;
		data = 'd566789321;
		#100;
		data = 'd56292734539;
		#100;
		data = 'd2938710236;
		#100;
		data = 'd082298316283;
		#100;
	end
endmodule 