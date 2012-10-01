//FIR_top_level
//Project 2: FIR machine
//
//Author: Andrew Steller
//Created: 9/24/12

//
//
//
module FIR_top_level(toggleBtn,CLOCK_50,HEX0,HEX1,HEX2,HEX3);

	//I/O Definition
	input toggleBtn;
	input CLOCK_50;
	output [6:0] HEX0,HEX1,HEX2,HEX3;
	
	//Internal Storage Registers
	reg signed [7:0] X1,X2,X3,Z;
	reg enable;
	reg [34:0] i;
	
	//Establish Initial Register Conditions
	initial
	begin
		X1 <= 8'b00000000;
		X2 <= 8'b00000000;
		X3 <= 8'b00000000;
		i <= 1'd0;
		enable = 1'b0;
	end
	
	//Intialize Registers at 'start'
	always @(posedge enable)
	begin
		X1 <= 8'b00000000;
		X2 <= 8'b00000000;
		X3 <= 8'b00000000;
		i <= 0;
	end
	
	//Button toggle for 'start' and 'stop'
	always @(negedge toggleBtn)
	begin
		enable = ~enable;
	end
	
	//Register Shift for next calculation
	always @(posedge CLOCK_50)
	begin
		if(enable)
			X3 = X2;
			X2 = X1;
			i = i + 1; //count calculations
	end
	
	//Submodule calls
	//random_number(enable,CLk,X1);
	
	//moving_average(enable,Clk,X1,X2,X3,Z);
	
endmodule
