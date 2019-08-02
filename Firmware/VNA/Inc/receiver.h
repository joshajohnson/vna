#ifndef RECEIVER_H_
#define RECEIVER_H_

#define NUM_SAMPLES 	16

#define SWITCH_OFF		0
#define SWITCH_THROUGH 	1
#define SWITCH_REV 		2

// Deg > 90
#define M1  			0.012
#define B1				(-1.5)

// Deg < 90
#define M2  			0.008
#define B2				(-2)

extern struct MAX2871Struct max2871Status;
extern struct txStruct txStatus;

typedef struct receiverStruct{
	uint8_t switchPos;
	float gainVoltage;
	float phaseVoltage;
	float prevPhase1;
	float prevPhase2;
	float gainDB;
	float phaseDeg;
	float refVoltage;
	float refDelta;
}receiverStruct;

void setInputSwitch(uint8_t direction, struct receiverStruct *receiverStatus);
void readGainPhaseVoltage(struct receiverStruct *receiverStatus);
void gainVoltageToDB(struct receiverStruct *receiverStatus);
void phaseVoltageToDeg(struct receiverStruct *recieverStatus, struct MAX2871Struct *max2817Status);
void readAD8302vRef(struct receiverStruct *receiverStatus);

#endif
