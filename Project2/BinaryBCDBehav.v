module binary_to_BCD_behav();

	input Clk, enable;
	input [34:0] data;
	output [3:0] BCD0,BCD1,BCD2,BCD3,BCD4,BCD5,BCD6,BCD7,BCD8;
	
	wire [9:0]bit_out;
	parameter j;
	
	always@(Clk)
	begin
		if(~enable)
		begin
			if(j<'d34)
				j = j+1;
				convert = 1;
			else
			begin
				convert = 0;
				j = 0;
			end
		end
	end
	
	shift_reg_load R1(data,convert,Clk,bit_out[0]);
	shift_reg_BCD R2(bit_out[0],convert,Clk,bit_out[1]);
	shift_reg_BCD R3(bit_out[1],convert,Clk,bit_out[2]);
	shift_reg_BCD R4(bit_out[2],convert,Clk,bit_out[3]);
	shift_reg_BCD R5(bit_out[3],convert,Clk,bit_out[4]);
	shift_reg_BCD R6(bit_out[4],convert,Clk,bit_out[5]);
	shift_reg_BCD R7(bit_out[5],convert,Clk,bit_out[6]);
	shift_reg_BCD R8(bit_out[6],convert,Clk,bit_out[7]);
	shift_reg_BCD R9(bit_out[7],convert,Clk,bit_out[8]);
	shift_reg_BCD R10(bit_out[8],convert,Clk,bit_out[9]);
	
endmodule
	