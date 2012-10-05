module shift_reg_BCD(bit_in,enable,Clk,out_bit);
	/*Define I/O */
	input bit_in,enable, Clk;
	reg [3:0]q;
	output reg out_bit;
	
	always@(posedge Clk)
	begin
		if(enable)
		begin	
			out_bit<=q[3];
			q[3:1]<=q[2:0];
			q[0]<=bit_in;
			if(q>5)
			begin
				q<=q+3;
			end
		end
		else
		begin
			q <='d0;
			out_bit <= 0;
		end
	end
endmodule
