#ifndef RECEIVER_H_
#define RECEIVER_H_

#define NUM_SAMPLES 	16

#define SWITCH_OFF		0
#define SWITCH_THROUGH 	1
#define SWITCH_REV 		2

extern struct MAX2871Struct max2871Status;
extern struct txStruct txStatus;

// Phase best fit coeffs
#define A11 	3978.0
#define A10		(-39296.1)
#define A9		169754.4
#define A8		(-421286.2)
#define A7		663604.5
#define A6		(-691933.3)
#define A5		483390.6
#define A4		(-224092.2)
#define A3		66804.0
#define A2		(-12047.66)
#define A1		(1264.2)
#define A0		(-220.7)

typedef struct receiverStruct{
	uint8_t switchPos;
	float gainVoltage;
	float phaseVoltage;
	float gainDB;
	float phaseDeg;
}receiverStruct;

void setInputSwitch(uint8_t direction, struct receiverStruct *recieverStatus);
void readGainPhaseVoltage(struct receiverStruct *recieverStatus);
void gainVoltageToDB(struct receiverStruct *recieverStatus);
void phaseVoltageToDeg(struct receiverStruct *recieverStatus);

#endif
