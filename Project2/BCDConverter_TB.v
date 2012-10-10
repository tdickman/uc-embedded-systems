module BCDConverter_TB();

	reg enable;
	reg [35:0] data;
	wire [3:0] BCD0,BCD1,BCD2,BCD3,BCD4,BCD5,BCD6,BCD7,BCD8,BCD9,BCD10;
	
	BCDConverter simulate(
		.binary(data),
		.enable(enable),
		.BCD10(BCD10),
		.BCD9(BCD9),
		.BCD8(BCD8),
		.BCD7(BCD7),
		.BCD6(BCD6),
		.BCD5(BCD5),
		.BCD4(BCD4),
		.BCD3(BCD3),
		.BCD2(BCD2),
		.BCD1(BCD1),
		.BCD0(BCD0)
	);
	
	initial
	begin
		enable = 0;
		#50;
		enable = 1;
		data = 'd650345768;
		#100;
		enable = 0;
		#50;
		enable = 1;
		data = 'd1500478987;
		#100;
		enable = 0;
		#50;
		enable = 1;
		data = 'd1234593;
		#100;
		enable = 0;
		data = 'd566789321;
		#50;
		enable = 1;
		#100;
		enable = 0;
		#50;
		enable = 1;
		data = 'd56292734539;
		#100;
		enable = 0;
		#50;
		enable = 1;
		data = 'd2938710236;
		#100;
		enable = 0;
		#50;
		enable = 1;
		data = 'd82298316283;
		#100;
		enable = 0;
		#50;
		enable = 1;
		$stop;
	end
endmodule 