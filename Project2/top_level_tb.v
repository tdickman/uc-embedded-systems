//****************moving_average_tb.v*********************
//Author: Joe Lovelace
//Date Created: 10/4/2012 22:02
//Modified: 10/5/2012 08:00
//
//
//Version: 1a


module top_level_tb();

	reg Clk, toggleBtn;
	
	wire [6:0] HEX0,HEX1,HEX2;
	
	wire LEDG;
	
	reg reset_n;
	
	integer i;            // loop variable 
	parameter cycleTime = 10;//number of cycles

	top_level top_level(.toggleBtn(toggleBtn),.CLOCK_50(Clk),
				.HEX0(HEX0),.HEX1(HEX1),.HEX2(HEX2),.LEDG(LEDG), .reset_n(reset_n));
			
	initial begin
		
		Clk = 0;
		toggleBtn = 1;
		reset_n = 1;
		#1 Clk = ~Clk;
		reset_n = 0;
		#1 Clk = ~Clk;
		reset_n = 1;
		
				
		for (i=0; i<2; i=i+1) begin 
			#1 Clk = ~Clk;
		end
		
		for (i=0; i<cycleTime; i=i+1) begin 
			#1 Clk = ~Clk;
		end
		
		toggleBtn = 0;
		for (i=0; i<2; i=i+1) begin 
			#1 Clk = ~Clk;
		end
	
	end	
endmodule
