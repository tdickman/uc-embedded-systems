module FIR_top_level;

	//I/O
	input toggleBtn;
	output [6:0] HEX0,HEX1,HEX2,HEX3;
	
	reg [7:0] signed X1,X2,X3,Z;
	reg enable;
	interger = i;
		
	initial
	begin
		X1 <= 8'b00000000;
		X2 <= 8'b00000000;
		X3 <= 8'b00000000;
		i = 0;
		enable = 1'b0;
	end
	
	always @(posedge enable)
	begin
		X1 <= 8'b00000000;
		X2 <= 8'b00000000;
		X3 <= 8'b00000000;
		i = 0;
	end
	
	always @(negedge toggleBtn)
	begin
		enable = ~enable;
	end
	
	always @(posedge Clk)
	begin
		X3 = X2;
		X2 = X1;
		i = i + 'd1;
	end
		
	random_number(enable,CLk,X1);
	
	moving_average(enable,Clk,X1,X2,X3,Z);
	
endmodule