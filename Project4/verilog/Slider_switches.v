/*****************************************************************************
 *                                                                           *
 * Module:       Altera_UP_Avalon_Parallel_Port                              *
 * Description:                                                              *
 *      This module can read and/or write data to a parallel I/O port based  *
 *   on various user selected parameters. It has some predefined             *
 *   configurations for some devices on the Altera DE boards.                *
 *                                                                           *
 *****************************************************************************/

module Slider_switches (
     // Inputs
	clk,
	reset,
	
	address,
	byteenable,
	chipselect,
	read,
	write,
	writedata,

	SW,

	// Bidirectionals


	// Outputs

	readdata
);

/*****************************************************************************
 *                           Parameter Declarations                          *
 *****************************************************************************/

// DW represents the Data Width minus 1
parameter DW = 9;

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

input		[DW:0]	SW;

// Bidirectionals

// Outputs

output	reg	[31:0]	readdata;

/*****************************************************************************
 *                 Internal wires and registers Declarations                 *
 *****************************************************************************/
// Internal Wires

// Internal Registers
reg			[DW:0]	data;

reg			[DW:0]	data_in;


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
	data_in <= SW;

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






/*****************************************************************************
 *                            Combinational logic                            *
 *****************************************************************************/

// Output Assignments


// Internal Assignments

/*****************************************************************************
 *                              Internal Modules                             *
 *****************************************************************************/


endmodule

