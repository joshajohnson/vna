#ifndef GAINBLOCK_H
#define GAINBLOCK_H

typedef struct gainStruct{
	float measOutputPower;
	float setOutputPower;
	float attenuation;
}gainStruct;

extern void gainBlockSetup(struct gainStruct *gainStatus);
extern void setOutputPowerUSB(struct gainStruct *gainStatus);
extern void setOutputPower(float setPower, struct gainStruct *gainStatus);
extern void gainBlockPrintStatus(struct gainStruct *gainStatus);

#endif

