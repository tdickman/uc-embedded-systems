/*****************************************************************************
 *                                                                           *
 * Module:       Altera_UP_Avalon_Parallel_Port                              *
 * Description:                                                              *
 *      This module can read and/or write data to a parallel I/O port based  *
 *   on various user selected parameters. It has some predefined             *
 *   configurations for some devices on the Altera DE boards.                *
 *                                                                           *
 *****************************************************************************/

module Expansion_JP2 (
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

	GPIO_1,

	// Outputs

	irq,
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
inout		[35:0]	GPIO_1;

// Outputs

output	reg			irq;
output	reg	[31:0]	readdata;

/*****************************************************************************
 *                 Internal wires and registers Declarations                 *
 *****************************************************************************/
// Internal Wires
wire		[DW:0]	new_capture;

// Internal Registers
reg			[DW:0]	data;
reg			[DW:0]	direction;
reg			[DW:0]	interrupt;
reg			[DW:0]	capture;

reg			[DW:0]	data_in;
reg			[DW:0]	data_out;

reg			[DW:0]	last_data_in;

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
	data_in <= {GPIO_1[35:26], GPIO_1[23:12], GPIO_1[9:0]};

// Output Registers
always @(posedge clk)
begin
	if (reset == 1'b1)
		irq <= 1'b0;
	else
		irq <= (|(interrupt & capture));
end

always @(posedge clk)
begin
	if (reset == 1'b1)
		readdata <= 32'h00000000;
	else if (chipselect == 1'b1)
	begin
		if (address == 2'h0)
			readdata <= {{(31-DW){1'b0}}, data_in};
		else if (address == 2'h1)
			readdata <= {{(31-DW){1'b0}}, direction};
		else if (address == 2'h2)
			readdata <= {{(31-DW){1'b0}}, interrupt};
		else if (address == 2'h3)
			readdata <= {{(31-DW){1'b0}}, capture};
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
begin
	if (reset == 1'b1)
		direction <= {(DW + 1){1'b0}};
	else if ((chipselect == 1'b1) &&
			(write == 1'b1) &&
			(address == 2'h1))
		direction <= writedata[DW:0];
end

always @(posedge clk)
begin
	if (reset == 1'b1)
		interrupt <= {(DW + 1){1'b0}};
	else if ((chipselect == 1'b1) &&
			(write == 1'b1) &&
			(address == 2'h2))
		interrupt <= writedata[DW:0];
end

always @(posedge clk)
begin
	if (reset == 1'b1)
		capture <= {(DW + 1){1'b0}};
	else if ((chipselect == 1'b1) &&
			(write == 1'b1) &&
			(address == 2'h3))
		capture <= {(DW + 1){1'b0}};
	else
		capture <= capture | new_capture;
end

always @(posedge clk)
	data_out <= data;

always @(posedge clk)
begin
	if (reset == 1'b1)
		last_data_in <= {DW{1'b0}};
	else
		last_data_in <= data_in;
end

/*****************************************************************************
 *                            Combinational logic                            *
 *****************************************************************************/

// Output Assignments
assign GPIO_1[11:10] = 2'hZ;
assign GPIO_1[25:24] = 2'hZ;
generate
	for (i=0; i <= DW; i = i + 1)
	begin : assign_data_out
		if (i <= 9)
			assign GPIO_1[i]	= direction[i] ? data_out[i] : 1'bZ;
		else if (i <= 21)
			assign GPIO_1[i+2]	= direction[i] ? data_out[i] : 1'bZ;
		else
			assign GPIO_1[i+4]	= direction[i] ? data_out[i] : 1'bZ;
	end
endgenerate


// Internal Assignments
assign new_capture = ~data_in & last_data_in;

/*****************************************************************************
 *                              Internal Modules                             *
 *****************************************************************************/


endmodule

