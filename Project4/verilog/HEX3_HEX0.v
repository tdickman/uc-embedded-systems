/*****************************************************************************
 *                                                                           *
 * Module:       Altera_UP_Avalon_Parallel_Port                              *
 * Description:                                                              *
 *      This module can read and/or write data to a parallel I/O port based  *
 *   on various user selected parameters. It has some predefined             *
 *   configurations for some devices on the Altera DE boards.                *
 *                                                                           *
 *****************************************************************************/

module HEX3_HEX0 (
     // Inputs
	clk,
	reset,
	
	address,
	byteenable,
	chipselect,
	read,
	write,
	writedata,


	// Bidirectionals


	// Outputs
	HEX0,
	HEX1,
	HEX2,
	HEX3,

	readdata
);

/*****************************************************************************
 *                           Parameter Declarations                          *
 *****************************************************************************/

// DW represents the Data Width minus 1
parameter DW = 31;

/*****************************************************************************
 *                             Port Declarations                             *
 *****************************************************************************/
// Inputs
input				clk;
input				reset;

input		[1:0]	address;
input		[3:0]	byteenable;
input				chipselect;
input				read;
input				write;
input		[31:0]	writedata;


// Bidirectionals

// Outputs
output		[6:0]	HEX0;
output		[6:0]	HEX1;
output		[6:0]	HEX2;
output		[6:0]	HEX3;

output	reg	[31:0]	readdata;

/*****************************************************************************
 *                 Internal wires and registers Declarations                 *
 *****************************************************************************/
// Internal Wires

// Internal Registers
reg			[DW:0]	data;

reg			[DW:0]	data_in;
reg			[DW:0]	data_out;


// State Machine Registers

// Internal Variables
genvar				i;


/*****************************************************************************
 *                         Finite State Machine(s)                           *
 *****************************************************************************/


/*****************************************************************************
 *                             Sequential logic                              *
 *****************************************************************************/

// Input Registers
always @(posedge clk)
	data_in <= data;

// Output Registers

always @(posedge clk)
begin
	if (reset == 1'b1)
		readdata <= 32'h00000000;
	else if (chipselect == 1'b1)
	begin
		if (address == 2'h0)
			readdata <= {{(31-DW){1'b0}}, data_in};
		else
			readdata <= 32'h00000000;
	end
end

// Internal Registers
always @(posedge clk)
begin
	if (reset == 1'b1)
		data <= {(DW + 1){1'b0}};
	else if ((chipselect == 1'b1) &&
			(write == 1'b1) &&
			(address == 2'h0))
		data <= writedata[DW:0];
end




always @(posedge clk)
	data_out <= data;


/*****************************************************************************
 *                            Combinational logic                            *
 *****************************************************************************/

// Output Assignments

assign HEX0 = ~data_out[ 6: 0];
assign HEX1 = ~data_out[14: 8];
assign HEX2 = ~data_out[22:16];
assign HEX3 = ~data_out[30:24];

// Internal Assignments

/*****************************************************************************
 *                              Internal Modules                             *
 *****************************************************************************/


endmodule

