//****************moving_average_tb.v*********************
//Author: Joe Lovelace
//Date Created: 10/4/2012 22:02
//Modified: 10/5/2012 08:00
//
//
//Version: 1a


module top_level_tb();

	reg Clk, toggleBtn;
	
	wire [6:0] HEX0,HEX1,HEX2,HEX3;
	
	wire [7:0] LEDG;
	
	reg reset_n;
	
	integer i;            // loop variable 
	parameter cycleTime = 10;//number of cycles

	top_level top_level(.toggleBtn(toggleBtn),.CLOCK_50(Clk),
				.HEX0(HEX0),.HEX1(HEX1),.HEX2(HEX2),.HEX3(HEX3),.LEDG(LEDG), .reset_n(reset_n));
			
	initial begin
		
		Clk = 0;
		toggleBtn = 1;
		reset_n = 1;
		#10;
		reset_n = 0;
		#10;
		reset_n = 1;
		#100000;
		toggleBtn = 0;
		#100000;
		toggleBtn = 1;
		#100000;
		toggleBtn = 0;
		#100000;
	
		$display($time);
		$monitor($time);
	
		$stop;
	end

	always begin
		#10 Clk = ~Clk;	
	end
	
endmodule
