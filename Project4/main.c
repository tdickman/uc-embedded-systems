
#include <stdio.h>
#include <unistd.h>
#include <string.h>
#include "includes.h"
#include "alt_ucosii_simple_error_check.h"
#include "main.h"
#include "address_map.h"

OS_STK stack[3][TASK_STACKSIZE];
OS_STK stack2[TASK_STACKSIZE];
OS_STK stack3[TASK_STACKSIZE];

volatile int ISRState = NORMAL_MODE;
volatile int complete = FALSE;
volatile int killTask = FALSE;
volatile int curISRState = NORMAL_MODE;

volatile int* pushbutton_ptr	= (int *) PUSHBUTTON_BASE;
volatile int* slider_switch_ptr = (int *) SLIDER_SWITCH_BASE;
volatile int* red_LED_ptr		= (int *) RED_LED_BASE;
volatile int* green_LED_ptr		= (int *) GREEN_LED_BASE;

// Cause the current task to return immediately
void causeDeath() {
	printf("Causing death...\n");
	INT8U return_code;
	killTask = TRUE;
	return_code = OSTimeDlyResume(0); // Cause sleep function to immediately resume
	if (return_code == OS_TIME_NOT_DLY) {
		printf("CauseDeath() returned OS_TIME_NOT_DLY\n");
	} else if (return_code == OS_TASK_NOT_EXIST) {
		printf("CauseDeath() returned OS_TASK_NOT_EXIST\n");
	} else if (return_code == OS_PRIO_INVALID) {
		printf("CauseDeath() returned OS_PRIO_INVALID\n");
	}
}

// Sleeps and then returns true if the task should immediately return
int sleepAndSeeIfDeathIsNeeded(int seconds) {
	OSTimeDlyHMSM(0, 0, seconds, 0); // Sleep
	if (killTask) {
		killTask = FALSE;
		return TRUE;
	}
	return FALSE;
}

void poller() {
	int lastBtn;
	int pushbutton_old, slider_switch_old;
	pushbutton_old = *pushbutton_ptr;
	slider_switch_old = *slider_switch_ptr;
	while (1) {
		printf("Poller started...\n");
		// Stay here until someone changes
		//while( (*pushbutton_ptr == pushbutton_old) );
		while( ((pushbutton_old & ~*pushbutton_ptr) == 0x0) & (( (*slider_switch_ptr & 0x3) == (slider_switch_old & 0x3) ))) {
			if ((~pushbutton_old & *pushbutton_ptr) != 0x0) {
				pushbutton_old = *pushbutton_ptr;
				slider_switch_old = *slider_switch_ptr;
			}
		}

		printf("Something was pressed\n");

		// Update values
		pushbutton_old = *pushbutton_ptr;
		slider_switch_old = *slider_switch_ptr;

		// Check what was pressed
		if (( ~(*pushbutton_ptr) & BTN_BROKEN) == BTN_BROKEN ) { // Broken
			printf("Broken mode detected\n");
			lastBtn = BROKEN_MODE;
		} else if (( *slider_switch_ptr & SW_MANUAL_MODE) == SW_MANUAL_MODE ){ // Check if Emergency, broken, or manual
			printf("Manual mode detected\n");
			lastBtn = MANUAL_MODE;
		} else if ( ( ~(*pushbutton_ptr) & BTN_EMERGENCY) == BTN_EMERGENCY ) { // Emergency
			printf("Emergency mode detected\n");
			lastBtn = EMERGENCY_MODE;
		} else if ( ( ~(*pushbutton_ptr) & BTN_TURN) == BTN_TURN) { // Turn
			printf("Turn\n");
			lastBtn = TURN_MODE;
		} else if ( ( ~(*pushbutton_ptr) & BTN_PEDESTRIAN) == BTN_PEDESTRIAN) { // Pedestrian
			printf("Pedestrian\n");
			lastBtn = PEDESTRIAN_MODE;
		}

		ISRState = lastBtn; // Set new mode
		// Determine if E|B|M mode
		if (ISRState < 3) {
			if (ISRState < curISRState) { // New task is higher priority
				// kill current task
				causeDeath();
			} else if ( (curISRState == BROKEN_MODE) & (ISRState == BROKEN_MODE) ) { // New button is broken mode, and we are in broken mode
				ISRState = NORMAL_MODE;
				causeDeath();
			}
		}
	}
}

void manual() {
	printf("Entering manual state\n");
	if (SW1 == 0) {
		*(green_LED_ptr) = MRED | SGRE;
		SLEEP(10); // Sleep 10 seconds
		*(green_LED_ptr) = MRED | SYEL;
		SLEEP(2);
		*(green_LED_ptr) = MRED | SRED;
		SLEEP(2);
	} else {
		*(green_LED_ptr) = MGRE | SRED;
		SLEEP(10);
		*(green_LED_ptr) = MYEL | SRED;
		SLEEP(2);
		*(green_LED_ptr) = MRED | SRED;
		SLEEP(2);
	}
	return;
}

void emergency() {
	printf("Entering emergency state\n");
	int i;
	for (i=0; i<=10; i++) {
		*(green_LED_ptr) = MRED | SRED;
		SLEEP(1);
		*(green_LED_ptr) = 0;
		SLEEP(1);
	}
}

void broken() {
	printf("Entering broken state\n");
	while (1) {
		*(green_LED_ptr) = MYEL | SRED;
		SLEEP(1);
		*(green_LED_ptr) = 0;
		SLEEP(1);
	}
}

void turnLane() {
	printf("Entering turn lane mode\n");
	*(green_LED_ptr) = SRED | MGRE | MTUR;
	SLEEP(10);
	*(green_LED_ptr) = SRED | MYEL;
	SLEEP(2);
	*(green_LED_ptr) = SRED | MRED;
	SLEEP(2);
}

void pedestrian() {
	printf("Entering pedestrian mode\n");
	*(green_LED_ptr) = MRED | SRED | PED;
	SLEEP(10);
	complete = TRUE;
}

void normal() {
	printf("Starting Normal sequence\n");
	*(green_LED_ptr) = MRED | SGRE;
	SLEEP(10); // Sleep 10 seconds
	*(green_LED_ptr) = MRED | SYEL;
	SLEEP(2);
	*(green_LED_ptr) = MRED | SRED;
	SLEEP(2);
	*(green_LED_ptr) = MGRE | SRED;
	SLEEP(10);
	*(green_LED_ptr) = MYEL | SRED;
	SLEEP(2);
	*(green_LED_ptr) = MRED | SRED;
	SLEEP(2);
}

// This function is initiated in a separate thread, since nothing after
//  OSStart()
void monitorThread(void *pdata) {
	while (1) {
		printf("Beginning of monitor thread.\n");
		curISRState = ISRState;
		switch (ISRState) {
			case MANUAL_MODE:
				ISRState = NORMAL_MODE; // Clear flag
				manual();
				break;
			case EMERGENCY_MODE:
				ISRState = NORMAL_MODE; // Clear flag
				emergency();
				break;
			case BROKEN_MODE:
				ISRState = NORMAL_MODE; // Clear flag
				broken();
				break;
			case TURN_MODE:
				ISRState = NORMAL_MODE; // Clear flag
				turnLane();
				break;
			case PEDESTRIAN_MODE:
				ISRState = NORMAL_MODE; // Clear flag
				pedestrian();
				break;
			default:
				ISRState = NORMAL_MODE; // Clear flag
				normal();
				break;
		}
	}
}

int main (int argc, char* argv[], char* envp[])
{
	printf("We just started up!\n");
	/*while(1){
		if ( ( ~(*pushbutton_ptr) & BTNh_PEDESTRIAN) == BTN_PEDESTRIAN) {
			printf("PED\n");
		} else {
			printf("PED is jumping\n");
		}
		*(green_LED_ptr) = *pushbutton_ptr;
	}*/
	//while (1)
	//	poller();

	printf("Starting...\n");

	*(red_LED_ptr) = 0;
	*(green_LED_ptr) = 0;

	INT8U return_code;
	return_code = OSTaskCreate(monitorThread, NULL, (void*)&stack2[TASK_STACKSIZE-1], 0);
	alt_ucosii_check_return_code(return_code);

	return_code = OSTaskCreate(poller, NULL, (void*)&stack3[TASK_STACKSIZE-1], 1);
	alt_ucosii_check_return_code(return_code);

	OSStart();

	return 0;
}
