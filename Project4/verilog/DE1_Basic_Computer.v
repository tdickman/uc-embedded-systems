
module DE1_Basic_Computer (
	// Inputs
	CLOCK_50,
	CLOCK_27,
	KEY,
	SW,

	//  Communication
	UART_RXD,
	
/*****************************************************************************/
	// Bidirectionals
	GPIO_0,
	GPIO_1,

	// 	Memory
	SRAM_DQ,


/*****************************************************************************/
	// Outputs
	// 	Simple
	LEDG,
	LEDR,

	HEX0,
	HEX1,
	HEX2,
	HEX3,
	
	// 	Memory
	SRAM_ADDR,

	SRAM_CE_N,
	SRAM_WE_N,
	SRAM_OE_N,
	SRAM_UB_N,
	SRAM_LB_N,
	
	//  Communication
	UART_TXD
);

/*****************************************************************************
 *                           Parameter Declarations                          *
 *****************************************************************************/


/*****************************************************************************
 *                             Port Declarations                             *
 *****************************************************************************/
// Inputs
input				CLOCK_50;
input		[1:0]	CLOCK_27;
input		[3:0]	KEY;
input		[9:0]	SW;


//  Communication
input				UART_RXD;

// Bidirectionals
inout		[35:0]	GPIO_0;
inout		[35:0]	GPIO_1;

// 	Memory
inout		[15:0]	SRAM_DQ;

// Outputs
// 	Simple
output		[7:0]	LEDG;
output		[9:0]	LEDR;

output		[6:0]	HEX0;
output		[6:0]	HEX1;
output		[6:0]	HEX2;
output		[6:0]	HEX3;

// 	Memory
output		[17:0]	SRAM_ADDR;

output				SRAM_CE_N;
output				SRAM_WE_N;
output				SRAM_OE_N;
output				SRAM_UB_N;
output				SRAM_LB_N;

//  Communication
output				UART_TXD;

/*****************************************************************************
 *                 Internal Wires and Registers Declarations                 *
 *****************************************************************************/
// Internal Wires

// Internal Registers

// State Machine Registers

/*****************************************************************************
 *                         Finite State Machine(s)                           *
 *****************************************************************************/


/*****************************************************************************
 *                             Sequential Logic                              *
 *****************************************************************************/


/*****************************************************************************
 *                            Combinational Logic                            *
 *****************************************************************************/


/*****************************************************************************
 *                              Internal Modules                             *
 *****************************************************************************/
nios_system NiosII (
	// 1) global signals:
	.clk									(CLOCK_50),
	.reset_n								(KEY[0]),

	// the_Slider_switches
	.SW_to_the_Slider_switches				(SW),

	// the_Pushbuttons
	.KEY_to_the_Pushbuttons					({KEY[3:1], 1'b1}),

	// the_Expansion_JP1
	.GPIO_0_to_and_from_the_Expansion_JP1	(GPIO_0),

	// the_Expansion_JP2
	.GPIO_1_to_and_from_the_Expansion_JP2	(GPIO_1),

	// the_Green_LEDs
	.LEDG_from_the_Green_LEDs				(LEDG),

	// the_Red_LEDs
	.LEDR_from_the_Red_LEDs					(LEDR),
	
	// the_HEX3_HEX0
	.HEX0_from_the_HEX3_HEX0				(HEX0),
	.HEX1_from_the_HEX3_HEX0				(HEX1),
	.HEX2_from_the_HEX3_HEX0				(HEX2),
	.HEX3_from_the_HEX3_HEX0				(HEX3),
	
	// the_SRAM
	.SRAM_ADDR_from_the_SRAM				(SRAM_ADDR),
	.SRAM_CE_N_from_the_SRAM				(SRAM_CE_N),
	.SRAM_DQ_to_and_from_the_SRAM			(SRAM_DQ),
	.SRAM_LB_N_from_the_SRAM				(SRAM_LB_N),
	.SRAM_OE_N_from_the_SRAM				(SRAM_OE_N),
	.SRAM_UB_N_from_the_SRAM				(SRAM_UB_N),
	.SRAM_WE_N_from_the_SRAM				(SRAM_WE_N),

	// the_Serial_port
	.UART_RXD_to_the_Serial_port			(UART_RXD),
	.UART_TXD_from_the_Serial_port			(UART_TXD)
);

endmodule
