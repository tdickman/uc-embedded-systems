//****************slowClock.v*********************
//Author: Joe Lovelace
//Date Created: 9/19/2012 19:23
//Modified: 
//
//Version: 2b
// 
// On a 24MHz clock, Sclk should go high once a 
//      second
//________________________________________________


module slowClock (Sclk, clk);
	
	input clk;
	
	output Sclk;
	
	reg Sclk;
	
	reg [21:0] count = 22'b0000000000000000000000;
	
	always @(posedge clk) begin 
		if (count[21]==1) begin
			count = 22'b0000000000000000000000;
			Sclk <= 1; 
		end else begin
			count= count + 1;
			Sclk <= 0; 
		end 
	end
endmodule
