
module binary_to_BCD_Behav(Clk,enable,data,BCD0,BCD1,BCD2,BCD3,BCD4,BCD5,BCD6,BCD7,BCD8,BCD9,BCD10);

	input Clk, enable;
	input [35:0] data;
	output [3:0] BCD0,BCD1,BCD2,BCD3,BCD4,BCD5,BCD6,BCD7,BCD8,BCD9,BCD10;
	
	wire bit_out;
	integer j; 
	reg convert;
	wire [43:0] BCD;
	
	always@(posedge Clk)
	begin
		if(~enable)
		begin
			if(j<'d37)
			begin
				j = j+1;
				convert = 1;
			end else
				convert = 0;
		end else begin
			convert = 0;
			j = 0;
		end
	end
	
	assign BCD0 = BCD[3:0];
	assign BCD1 = BCD[7:4];
	assign BCD2 = BCD[11:8];
	assign BCD3 = BCD[15:12];
	assign BCD4 = BCD[19:16];
	assign BCD5 = BCD[23:20];
	assign BCD6 = BCD[27:24];
	assign BCD7 = BCD[31:28];
	assign BCD8 = BCD[35:32];
	assign BCD9 = BCD[39:36];
	assign BCD10 = BCD[43:40];
	
	shift_reg_load R1(data,convert,Clk,bit_out);
	shift_reg_BCD R2(bit_out,convert,Clk,BCD);
	
endmodule
	