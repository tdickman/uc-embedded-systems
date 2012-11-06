
#include <stdio.h>
#include <unistd.h>
#include <string.h>
#include "includes.h"
#include "alt_ucosii_simple_error_check.h"
#include "main.h"

OS_STK northStack[TASK_STACKSIZE];
OS_STK southStack[TASK_STACKSIZE];
OS_STK eastStack[TASK_STACKSIZE];
OS_STK westStack[TASK_STACKSIZE];

// Create our semaphores!
OS_EVENT *NE_Utensil;
OS_EVENT *NW_Utensil;
OS_EVENT *SE_Utensil;
OS_EVENT *SW_Utensil;

struct philosopher {
	char name[10];
	OS_EVENT *left;
	OS_EVENT *right;
	int state;
} north, south, west, east;

void dine(philosopher *thePhilosopher)
{
	// Try to get lock with really short timeout
	OSSemPend(thePhilosopher.left, 1, &return_code);
	if (return_code != OS_TIMEOUT) {
		// We got the fork!!
	}
}

void run(philosopher *thePhilosopher)
{
	while(true)
	{
		OSTimeDlyHMSM(0,0,5,0); // Sleep 5s
		printf("%s is hungry\n", thePhilosopher.name);
		dine(thePhilosopher);
	}
}

void philosopherLoop(void *pdata)
{
	philospher thePhilosopher = (int*)pdata;
	run(thePhilosopher);
}

// Initializes the needed semaphores, and sets the left and right pointers
void initPhilosophers()
{
	INT8U return_code = OS_NO_ERR;

	// Initialize semaphores
	NE_Utensil = OSSemCreate(1);
	NW_Utensil = OSSemCreate(1);
	SE_Utensil = OSSemCreate(1);
	SW_Utensil = OSSemCreate(1);

	// North philosopher
	north.left = NE_Utensil;
	north.right = NW_Utensil;
	north.state = 0;
	north.name = "North";
	return_code = OSTaskCreate(philosopherLoop, NULL, (void*)&northStack[TASK_STACKSIZE-1], 1);
	alt_ucosii_check_return_code(return_code);

	// South philosopher
	south.left = SW_Utensil;
	south.right = SE_Utensil;
	south.state = 0;
	south.name = "South";
	return_code = OSTaskCreate(philosopherLoop, NULL, (void*)&southStack[TASK_STACKSIZE-1], 2);
	alt_ucosii_check_return_code(return_code);

	// West philosopher
	west.left = NW_Utensil;
	west.right = SW_Utensil;
	west.state = 0;
	west.name = "West";
	return_code = OSTaskCreate(philosopherLoop, NULL, (void*)&westStack[TASK_STACKSIZE-1], 3);
	alt_ucosii_check_return_code(return_code);

	// East philosopher
	east.left = SE_Utensil;
	east.right = NE_Utensil;
	east.state = 0;
	east.name = "East";
	return_code = OSTaskCreate(philosopherLoop, NULL, (void*)&eastStack[TASK_STACKSIZE-1], 4);
	alt_ucosii_check_return_code(return_code);
}

int main (int argc, char* argv[], char* envp[])
{
	initPhilosophers();

	OSStart();

	return 0;
}
