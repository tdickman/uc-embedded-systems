
#ifndef ENUMERATIONS_H_
#define ENUMERATIONS_H_

#define TASK_STACKSIZE 2048

#define MANUAL_MODE 0
#define EMERGENCY_MODE 1
#define BROKEN_MODE 2
#define TURN_MODE 3
#define PEDESTRIAN_MODE 4
//#define NORMAL_MODE 5

#define FALSE 0
#define TRUE 1

#define SLEEP(n) if(sleepAndSeeIfDeathIsNeeded(n)){return;}

#endif /* ENUMERATIONS_H_ */
