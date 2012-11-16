
#include <stdio.h>
#include <unistd.h>
#include <string.h>
#include "includes.h"
#include "alt_ucosii_simple_error_check.h"
#include "main.h"

OS_STK stack[NUM_PHILOSOPHERS][TASK_STACKSIZE];

// Create our semaphores!
OS_EVENT *utensil[NUM_PHILOSOPHERS];

typedef struct {
	char name;
	OS_EVENT *left;
	OS_EVENT *right;
	int state;
	int count;
} philosopher;
philosopher philosophers[NUM_PHILOSOPHERS];

void dine(philosopher *thePhilosopher)
{
	INT8U return_code;
	// Try to get lock with really short timeout
	OSSemPend(thePhilosopher->left, 1, &return_code);
	if (return_code != OS_TIMEOUT) {
		// We got the fork!!
		OSSemPend(thePhilosopher->right, 1, &return_code);
		if (return_code != OS_TIMEOUT) { // Success
			thePhilosopher->count++;
			printf("%c I'm eating. I've eaten %d times.\n", thePhilosopher->name, thePhilosopher->count);
			OSTimeDlyHMSM(0,0,5,0); // Sleep 5s
			printf("%c I'm done eating.\n", thePhilosopher->name);
			OSSemPost(thePhilosopher->right);
			OSSemPost(thePhilosopher->left);
		} else { // Failure
			OSSemPost(thePhilosopher->left);
			printf("%c Couldn't get second fork, swapping forks.\n", thePhilosopher->name);
			OS_EVENT *temp;
			temp = thePhilosopher->left;
			thePhilosopher->left = thePhilosopher->right;
			thePhilosopher->right = temp;
		}
	}
}

void run(philosopher *thePhilosopher)
{
	while(1)
	{
		OSTimeDlyHMSM(0,0,5,0); // Sleep 5s
		printf("%c is hungry\n", thePhilosopher->name);
		dine(thePhilosopher);
	}
}

void philosopherLoop(void *pdata)
{
	philosopher *thePhilosopher = (philosopher*)pdata;
	run(thePhilosopher);
}

// Initializes the needed semaphores, and sets the left and right pointers
void initPhilosophers()
{
	INT8U return_code = OS_NO_ERR;

	char names[4] = {'N', 'E', 'S', 'W'};

	// Initialize semaphores
	int i;
	for (i=0; i<NUM_PHILOSOPHERS; i++) {
		utensil[i] = OSSemCreate(1);
	}

	// Initialize philosophers
	for (i=0; i<NUM_PHILOSOPHERS; i++) {
		philosophers[i].left = utensil[i];
		philosophers[i].right = utensil[(i+1)%NUM_PHILOSOPHERS];
		philosophers[i].state = 0;
		philosophers[i].count = 0;
		philosophers[i].name = names[i];
		return_code = OSTaskCreate(philosopherLoop, &philosophers[i], (void*)&stack[i][TASK_STACKSIZE-1], i);
		alt_ucosii_check_return_code(return_code);
	}
}

int main (int argc, char* argv[], char* envp[])
{
	initPhilosophers();

	OSStart();

	return 0;
}
