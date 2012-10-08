`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Ben Zerhusen
// 
// Create Date:    9/19/2012
// Design Name:    Temp_Controller
// Module Name:    BCD_2_7Seg 
// Project Name:   Temp_Controller
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments:
//
//////////////////////////////////////////////////////////////////////////////////
module BCD_2_7Seg(
	input [3:0] bcd,
	output reg [6:0] a_to_g
    );
	 
	 always @(bcd)
		case (bcd)
			4'd0:		a_to_g = 7'b1000000; //0
			4'd1:		a_to_g = 7'b1111001; //1
			4'd2:		a_to_g = 7'b0100100; //2
			4'd3:		a_to_g = 7'b0110000; //3
			4'd4:		a_to_g = 7'b0011001; //4
			4'd5:		a_to_g = 7'b0010010; //5
			4'd6:		a_to_g = 7'b0000011; //6
			4'd7:		a_to_g = 7'b1111000; //7
			4'd8:		a_to_g = 7'b0000000; //8
			4'd9:		a_to_g = 7'b0011000; //9
			4'd10:	a_to_g = 7'b1111111; //10 - added to eliminate latch warning
			4'd11:	a_to_g = 7'b1111111; //11 - added to eliminate latch warning
			4'd12:	a_to_g = 7'b1111111; //12 - added to eliminate latch warning
			4'd13:	a_to_g = 7'b1111111; //13 - added to eliminate latch warning
			4'd14:	a_to_g = 7'b1111111; //14 - added to eliminate latch warning
			4'd15:	a_to_g = 7'b1111111; //15 - added to eliminate latch warning
		endcase

endmodule
