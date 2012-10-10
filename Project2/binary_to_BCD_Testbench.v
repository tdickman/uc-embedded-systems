module binary_to_BCD_Testbench();

	reg Clk, enable;
	reg [35:0] data;
	wire [3:0] BCD0,BCD1,BCD2,BCD3,BCD4,BCD5,BCD6,BCD7,BCD8,BCD9,BCD10;
	
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
		#100 Clk = ~Clk;	
	end
	
	initial
	begin
		Clk = 0;
		enable = 0;
		#100
		enable = 1;
		data = 'd650345768;
		#10000;
		enable = 0;
		#500
		enable = 1;
		data = 'd1500478987;
		#10000;
		enable = 0;
		#500
		enable = 1;
		data = 'd1234593;
		#10000;
		enable = 0;
		#500
		enable = 1;
		data = 'd566789321;
		#10000;
		enable = 0;
		#500
		enable = 1;
		data = 'd56292734539;
		#10000;
		enable = 0;
		#500
		enable = 1;
		data = 'd2938710236;
		#10000;
		enable = 0;
		#500
		enable = 1;
		data = 'd82298316283;
		#10000;
		enable = 0;
		#500
		enable = 1;
		$stop;
	end
endmodule 