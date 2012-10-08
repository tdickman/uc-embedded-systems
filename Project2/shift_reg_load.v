module shift_reg_load(data,enable,Clk,out_bit);
	/*Define I/O */
	input Clk, enable;
	input [35:0]data;
	reg [35:0]q;
	output reg out_bit;
	
	always@(posedge Clk)
	begin	
		if(enable)
			begin	
				out_bit=q[35];
				q[35:1]=q[34:0];
				q[0]=1'bx;
			end
		else
		begin
			q <= data;
			out_bit <= 0;
		end
	end
endmodule
