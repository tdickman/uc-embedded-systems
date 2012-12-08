#ifndef __ADDRESS_MAP__
#define __ADDRESS_MAP__

#define RED_LED_BASE 0x01003080
#define GREEN_LED_BASE 0x01003030
#define HEX3_HEX0_BASE 0x10000020
#define HEX7_HEX4_BASE 0x10000030
#define SLIDER_SWITCH_BASE 0x010030a0
#define PUSHBUTTON_BASE 0x01003090

// Map LEDs - GREEN
#define MRED 0x80
#define MYEL 0x40
#define MTUR 0x20
#define MGRE 0x10

#define SRED 0x08
#define SYEL 0x04
#define SGRE 0x02
#define PED  0x01

// Map Buttons
#define BTN_PEDESTRIAN	0x08
#define BTN_TURN		0x04
#define BTN_EMERGENCY	0x02
#define BTN_BROKEN		0x01

// Map Switches
#define SW_MANUAL_MODE	0x1
#define SW_MANUAL_OP	0x2

#endif
