
#include <stdio.h>
#include <unistd.h>
#include <string.h>
#include "includes.h"
#include "alt_ucosii_simple_error_check.h"
#include "main.h"
#include "address_map.h"
// #include "InterruptsHandler.c"

OS_STK stack[2][TASK_STACKSIZE];

volatile int ISRState = -1;
volatile int complete = FALSE;
volatile int killTask = FALSE;

volatile int* pushbutton_ptr	= (int *) PUSHBUTTON_BASE;
volatile int* slider_switch_ptr = (int *) SLIDER_SWITCH_BASE;
volatile int* red_LED_ptr		= (int *) RED_LED_BASE;
volatile int* green_LED_ptr		= (int *) GREEN_LED_BASE;

// Cause the current task to return immediately
void causeDeath() {
	killTask = TRUE;
	OSTimeDlyResume(1); // Cause sleep function to immediately resume
}

// Sleeps and then returns true if the task should immediately return
int sleepAndSeeIfDeathIsNeeded(int seconds) {
	OSTimeDlyHMSM(0, 0, seconds, 0); // Sleep
	if (killTask) {
		complete = TRUE;
		killTask = FALSE;
		return TRUE;
	}
	return FALSE;
}

void ISRGuy() {

}

void manual(void *pdata) {
	//if ( deathIsNeeded() ) { return; }
	complete = TRUE;
	return;
}

void emergency(void *pdata) {
	printf("Entering emergency state\n");
	while (1) {
		*(green_LED_ptr) = MRED | SRED;
		SLEEP(1);
		*(green_LED_ptr) = 0;
		SLEEP(1);
	}
}

void broken(void *pdata) {
	printf("Entering broken state\n");
	while (1) {
		*(green_LED_ptr) = MYEL | SRED;
		SLEEP(1);
		*(green_LED_ptr) = 0;
		SLEEP(1);
	}
}

void turnLane(void *pdata) {
	printf("Entering turn lane mode\n");
	*(green_LED_ptr) = SRED | MTUR;
	SLEEP(10);
	*(green_LED_ptr) = SRED | MYEL;
	SLEEP(2);
	*(green_LED_ptr) = SRED | MRED;
	SLEEP(2);
}

void pedestrian(void *pdata) {
	printf("Entering pedestrian mode\n");
	*(green_LED_ptr) = MRED | SRED | PED;
	SLEEP(10);
}

void normal(void *pdata) {
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
	printf("I just slept 12s!\n");
}

// This function is initiated in a separate thread, since nothing after
//  OSStart()
void monitorThread(void *pdata) {
	INT8U return_code;
	switch (ISRState) {
		case MANUAL_MODE:
			return_code = OSTaskCreate(manual, NULL, (void*)&stack[1][TASK_STACKSIZE-1], 1);
			alt_ucosii_check_return_code(return_code);
			break;
		case EMERGENCY_MODE:
			return_code = OSTaskCreate(emergency, NULL, (void*)&stack[1][TASK_STACKSIZE-1], 1);
			alt_ucosii_check_return_code(return_code);
			break;
		case BROKEN_MODE:
			return_code = OSTaskCreate(broken, NULL, (void*)&stack[1][TASK_STACKSIZE-1], 1);
			alt_ucosii_check_return_code(return_code);
			break;
		case TURN_MODE:
			return_code = OSTaskCreate(turnLane, NULL, (void*)&stack[1][TASK_STACKSIZE-1], 1);
			alt_ucosii_check_return_code(return_code);
			break;
		case PEDESTRIAN_MODE:
			return_code = OSTaskCreate(pedestrian, NULL, (void*)&stack[1][TASK_STACKSIZE-1], 1);
			alt_ucosii_check_return_code(return_code);
			break;
		default:
			return_code = OSTaskCreate(normal, NULL, (void*)&stack[1][TASK_STACKSIZE-1], 1);
			alt_ucosii_check_return_code(return_code);
			break;
		ISRState = -1; // Clear flag
		while (!complete); // Wait for the launched task to complete
	}
}

int main (int argc, char* argv[], char* envp[])
{
	printf("Starting...\n");

	*(red_LED_ptr) = 0;
	*(green_LED_ptr) = 0;

	INT8U return_code;
	return_code = OSTaskCreate(turnLane, NULL, (void*)&stack[0][TASK_STACKSIZE-1], 0);
	alt_ucosii_check_return_code(return_code);

	OSStart();

	return 0;
}
