module BCDConverter(
	input [35:0] binary,
	input enable,
	output reg [3:0] BCD10,
	output reg [3:0] BCD9,
	output reg [3:0] BCD8,
	output reg [3:0] BCD7,
	output reg [3:0] BCD6,
	output reg [3:0] BCD5,
	output reg [3:0] BCD4,
	output reg [3:0] BCD3,
	output reg [3:0] BCD2,
	output reg [3:0] BCD1,
	output reg [3:0] BCD0
	);
	
	integer i;
	
	always @(posedge enable)
	begin
			//Set BCD regs to 0
			BCD10 = 4'd0;
			BCD9 = 4'd0;
			BCD8 = 4'd0;
			BCD7 = 4'd0;
			BCD6 = 4'd0;
			BCD5 = 4'd0;
			BCD4 = 4'd0;
			BCD3 = 4'd0;
			BCD2 = 4'd0;
			BCD1 = 4'd0;
			BCD0 = 4'd0;
			
			for(i=35; i>=0; i=i-1)
			begin
				//add 3 to any column >= 5
				if(BCD10 >= 5)
					BCD10 = BCD10 + 3;
				if(BCD9 >= 5)
					BCD9 = BCD9 + 3;
				if(BCD8 >= 5)
					BCD8 = BCD8 + 3;
				if(BCD7 >= 5)
					BCD7 = BCD7 + 3;
				if(BCD6 >= 5)
					BCD6 = BCD6 + 3;
				if(BCD5 >= 5)
					BCD5 = BCD5 + 3;
				if(BCD4 >= 5)
					BCD4 = BCD4 + 3;
				if(BCD3 >= 5)
					BCD3 = BCD3 + 3;
				if(BCD2 >= 5)
					BCD2 = BCD2 + 3;
				if(BCD1 >= 5)
					BCD1 = BCD1 + 3;
				if(BCD0 >= 5)
					BCD0 = BCD0 + 3;
				
				//Shift left 1 bit
				BCD10 = BCD10 << 1;
				BCD10[0] = BCD9[3];
				
				BCD9 = BCD9 << 1;
				BCD9[0] = BCD8[3];
				
				BCD8 = BCD8 << 1;
				BCD8[0] = BCD7[3];
				
				BCD7 = BCD7 << 1;
				BCD7[0] = BCD6[3];
				
				BCD6 = BCD6 << 1;
				BCD6[0] = BCD5[3];
				
				BCD5 = BCD5 << 1;
				BCD5[0] = BCD4[3];
				
				BCD4 = BCD4 << 1;
				BCD4[0] = BCD3[3];
				
				BCD3 = BCD3 << 1;
				BCD3[0] = BCD2[3];
				
				BCD2 = BCD2 << 1;
				BCD2[0] = BCD1[3];
				
				BCD1 = BCD1 << 1;
				BCD1[0] = BCD0[3];
				
				BCD0 = BCD0 << 1;
				BCD0[0] = binary[i];
			end
	end		
	
endmodule
