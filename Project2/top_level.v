//FIR_top_level
//Project 2: FIR machine
//
//Author: Andrew Steller
//Created: 9/24/12

//
//
//
module top_level(toggleBtn,CLOCK_50,HEX0,HEX1,HEX2,LEDG);

	//I/O Definition
	input toggleBtn;
	input CLOCK_50;
	output [6:0] HEX0,HEX1,HEX2;
	output [7:0] LEDG;
	
	//Internal Storage Registers
	reg signed [7:0] X1;
	reg enable;
	reg [35:0] i;
	reg [1:0] show7seg;
	wire [3:0] BCD0,BCD1,BCD2,BCD3,BCD4,BCD5,BCD6,BCD7,BCD8;
	parameter A = 2'b00, B = 2'b01, C = 2'b10, D = 2'b11;
	
	//7-Segment Output
	reg [11:0] cur7Seg;
	BCD_2_7Seg	O1(.bcd(cur7Seg[11:8]), .a_to_g(HEX2));
	BCD_2_7Seg	O2(.bcd(cur7Seg[7:4]),  .a_to_g(HEX1));
	BCD_2_7Seg	O3(.bcd(cur7Seg[3:0]),  .a_to_g(HEX0));
	
	//Slow Clock
	slowClock slowClock(slowClk, CLOCK_50);
	
	//Establish Initial Register Conditions
	initial
	begin
		X1 <= 8'b00000000;
		i <= 1'd0;
		enable = 1'b0;
	end
	
	//Intialize Registers at 'start'
	always @(posedge enable)
	begin
		X1 <= 8'b00000000;
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
			i = i + 1; //count calculations
	end
	
	always@(posedge slowClk)
	begin
		case(show7seg)
			A:begin
				cur7Seg[11:8] <= 4'b1111;
				cur7Seg[7:4] <= 4'b1111;
				cur7Seg[3:0] <= 4'b1111;
				show7seg = 2'b01;
			  end
			B:begin
				cur7Seg[11:8] <= BCD8;
				cur7Seg[7:4] <= BCD7;
				cur7Seg[3:0] <= BCD6;
				show7seg = 2'b10;
			  end
			C:begin
				cur7Seg[11:8] <= BCD5;
				cur7Seg[7:4] <= BCD4;
				cur7Seg[3:0] <= BCD3;
				show7seg = 2'b11;
			  end
			D:begin
				cur7Seg[11:8] <= BCD2;
				cur7Seg[7:4] <= BCD1;
				cur7Seg[3:0] <= BCD0;
				show7seg = 2'b00;
			  end
			default: begin
						cur7Seg[11:8] <= 4'b1111;
						cur7Seg[7:4] <= 4'b1111;
						cur7Seg[3:0] <= 4'b1111;
						show7seg = 2'b01;
					 end
		endcase
	end
	
	//Submodule calls
	lfsr U1(enable,CLk,X1);
	
	moving_average U2(enable,Clk,X1,LEDG);
	
	BinaryBCDBehav U3(CLOCK_50,enable,data,BCD0,BCD1,BCD2,BCD3,BCD4,BCD5,BCD6,BCD7,BCD8);
	
	
	
endmodule
