void ISR_Button_Switch( void )
{
	volatile int * KEY_ptr = (int *) 0x10000050;
	volatile int * slider_switch_ptr = (int *) 0x10000040;
	int press;
	char ISRstate;
	
	press = *(KEY_ptr + 3); // read the pushbutton interrupt register
	*(KEY_ptr + 3) = 0; // clear the interrupt
	
	sw = *(slider_switch_ptr + 1); // read the switch interrupt register
	*(slider_switch_ptr + 1) = 0; // clear the interrupt
	
	if (press & 0x2) // KEY1
		tiz_woz = totheleft;
		
	else if (press & 0x4) // KEY2
		tiz_woz = partymode;
		
	else if (press & 0x8)// KEY3 
		if(incoming > current)
			// Kill Current State
			NailGunToHead = 1;
			tiz_woz = mutilated;
		
	else if (sw & 0x2) // SW
		if(incoming > current)
			//Kill Current State
			NailGunToHead = 1;
			tiz_woz = FIRE;
		
	else (sw & 0x1) // SW
		if(incoming > current)
			//Kill Current State
			NailGunToHead = 1;
			tiz_woz = CharlieManuel;
return;
}