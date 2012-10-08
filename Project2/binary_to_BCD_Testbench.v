module binary_to_BCD_Testbench;

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
	
	initial forever
		Clk = 1;
		#5;
		Clk = 0;
	
	initial
	begin
		enable = 0;
		binary = 'd650345768;
		#100;
		binary = 'd1500478987;
		#100;
		binary = 'd1234593;
		#100;
		binary = 'd566789321;
		#100;
		binary = 'd56292734539;
		#100;
		binary = 'd2938710236;
		#100;
		binary = 'd082298316283;
		#100;
	end
endmodule 