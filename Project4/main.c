
#include <stdio.h>
#include <unistd.h>
#include <string.h>
#include "includes.h"
#include "alt_ucosii_simple_error_check.h"
#include "main.h"

OS_STK stack[2][TASK_STACKSIZE];

volatile int ISRState = -1;
volatile int complete = FALSE;
volatile int killTask = FALSE;

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
	if ( deathIsNeeded() ) { return; }
	complete = TRUE;
	return;
}

void emergency(void *pdata) {

}

void broken(void *pdata) {

}

void turnLane(void *pdata) {

}

void pedestrian(void *pdata) {

}

void normal(void *pdata) {
	if ( sleepAndSeeIfDeathIsNeeded(10) ) { return; } // Sleep 10 seconds

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
	INT8U return_code;
	return_code = OSTaskCreate(monitorThread, NULL, (void*)&stack[0][TASK_STACKSIZE-1], 0);
	alt_ucosii_check_return_code(return_code);

	OSStart();

	return 0;
}
