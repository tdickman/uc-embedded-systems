//****************moving_average_tb.v*********************
//Author: Joe Lovelace
//Date Created: 10/4/2012 22:02
//Modified: 10/5/2012 08:00
//
//
//Version: 1a


module moving_average_tb();

	reg Clk, Enable;
	
	reg [7:0] X1 = 8'b0000001;
	
	wire [7:0] Z;
	
	integer i;            // loop variable 
	parameter cycleTime = 10;//number of cycles

	moving_average moving_average(
	.enable(enable), .Clk(Clk), 
	 .X1(X1), .Z(Z)
	);
			
	initial begin
		Clk = 0;
		Enable = 0;
				
		for (i=0; i<cycleTime; i=i+1) begin 
			X1 = X1 + 1;
			Clk = ~Clk;
		end
	
	end	
endmodule
