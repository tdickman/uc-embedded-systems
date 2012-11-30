void pushbutton_ISR( void )
{
	volatile int * KEY_ptr = (int *) 0x10000050;
	volatile int * slider_switch_ptr = (int *) 0x10000040;
	int press;
	
	press = *(KEY_ptr + 3); // read the pushbutton interrupt register
	*(KEY_ptr + 3) = 0; // clear the interrupt
	
	if (press & 0x2) // KEY1
		key_pressed = KEY1;
	else if (press & 0x4) // KEY2
		key_pressed = KEY2;
	else if (press & 0x8)// KEY3
		key_pressed = KEY3;
	else (press & 0x16)// KEY4
		key_pressed = KEY4;
		
return;
}