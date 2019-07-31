#ifndef MEASURE_H_
#define MEASURE_H_

#define S11 	11
#define S21		21

#define SHORT	1
#define OPEN 	2
#define LOAD	3
#define THRU	4

extern struct MAX2871Struct max2871Status;
extern struct txStruct txStatus;
extern struct receiverStruct receiverStatus;

void measure(int8_t Sxx, float startFreq, float stopFreq, uint32_t numSteps, float power, struct MAX2871Struct *max2871Status, struct txStruct *txStatus, struct receiverStruct *receiverStatus);
void setEcal(uint8_t position);
#endif
