module shift_reg_BCD(bit_in,enable,Clk,q);
	/*Define I/O */
	input bit_in,enable,Clk;
	output reg [43:0]q;
	
	always@(posedge Clk)
	begin
		if(enable)
		begin	
			q[43:1]=q[42:0];
			q[0]=bit_in;
			if(q[3:0]>5)
			begin
				q[3:0]=q[3:0]+3;
			end
			if(q[7:4]>5)
			begin
				q[7:4]=q[7:4]+3;
			end
			if(q[11:8]>5)
			begin
				q[11:8]=q[11:8]+3;
			end
			if(q[15:12]>5)
			begin
				q[15:12]=q[15:12]+3;
			end
			if(q[19:16]>5)
			begin
				q[19:16]=q[19:16]+3;
			end
			if(q[23:20]>5)
			begin
				q[23:20]=q[23:20]+3;
			end
			if(q[27:24]>5)
			begin
				q[27:24]=q[27:24]+3;
			end
			if(q[31:28]>5)
			begin
				q[31:28]=q[31:28]+3;
			end
			if(q[35:32]>5)
			begin
				q[35:32]=q[35:32]+3;
			end
			if(q[39:36]>5)
			begin
				q[39:36]=q[39:36]+3;
			end
			if(q[43:40]>5)
			begin
				q[43:40]=q[43:40]+3;
			end
		end
		else
		begin
			q <=43'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
		end
	end
endmodule
