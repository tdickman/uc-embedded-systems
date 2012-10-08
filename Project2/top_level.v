//FIR_top_level
//Project 2: FIR machine
//
//Author: Andrew Steller
//Created: 9/24/12

//
//
//
module top_level(toggleBtn,CLOCK_50,HEX0,HEX1,HEX2,LEDG,reset_n);

	//I/O Definition
	input toggleBtn;
	input CLOCK_50;
	output [6:0] HEX0,HEX1,HEX2;
	output [7:0] LEDG;
	input reset_n;
	
	//Internal Storage Registers
	reg [35:0] data;
	wire signed [7:0] X1;
	reg enable;
	reg [1:0] show7seg;
	wire [3:0] BCD0,BCD1,BCD2,BCD3,BCD4,BCD5,BCD6,BCD7,BCD8;
	wire slowClk;
	parameter A = 2'b00, B = 2'b01, C = 2'b10, D = 2'b11;
	
	//7-Segment Output
	reg [11:0] cur7Seg;
	BCD_2_7Seg	bto71(
		.bcd(cur7Seg[11:8]),
		.a_to_g(HEX2)
	);
	BCD_2_7Seg	bto72(
		.bcd(cur7Seg[7:4]),
		.a_to_g(HEX1)
	);
	BCD_2_7Seg	bto73(
		.bcd(cur7Seg[3:0]),
		.a_to_g(HEX0)
	);
	
	//Slow Clock
	slowClock slowClock(
		.Sclk(slowClk),
		.clk(CLOCK_50)
	);
	
	//Button toggle for 'start' and 'stop'
	always @(negedge toggleBtn or negedge reset_n)
	begin
		if (~reset_n)
			enable = 1;
		else
			enable = ~enable;
	end
	
	always@(posedge CLOCK_50 or negedge reset_n)
	begin
		if (~reset_n)
			data = 0;
		else
			if (enable)
				data = data + 1;
	end
	
	always@(posedge slowClk)
	begin
		case(show7seg)
			A:begin
				cur7Seg[11:8] <= 4'b1111;
				cur7Seg[7:4] <= 4'b1111;
				cur7Seg[3:0] <= 4'b1111;
				show7seg <= B;
			  end
			B:begin
				cur7Seg[11:8] <= BCD8;
				cur7Seg[7:4] <= BCD7;
				cur7Seg[3:0] <= BCD6;
				show7seg <= C;
			  end
			C:begin
				cur7Seg[11:8] <= BCD5;
				cur7Seg[7:4] <= BCD4;
				cur7Seg[3:0] <= BCD3;
				show7seg <= D;
			  end
			D:begin
				cur7Seg[11:8] <= BCD2;
				cur7Seg[7:4] <= BCD1;
				cur7Seg[3:0] <= BCD0;
				show7seg <= A;
			  end
			default: begin
						cur7Seg[11:8] <= 4'b1111;
						cur7Seg[7:4] <= 4'b1111;
						cur7Seg[3:0] <= 4'b1111;
						show7seg <= D;
					 end
		endcase
	end
	
	//Submodule calls
	lfsr lfsr1(
		.clk(CLOCK_50),
		.rst(reset_n),
		.out(X1)
	);
	
	moving_average ma1(
		.enable_n(enable),
		.Clk(slowClk),
		.X1(X1),
		.Z(LEDG)
	);
	
	BinaryBCDBehav b2bcd1(
		.Clk(CLOCK_50),
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
	
	
	
endmodule
