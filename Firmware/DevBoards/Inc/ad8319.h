#ifndef AD8319_H
#define AD8319_H

extern struct gainStruct gainStatus;

extern void printPower(struct gainStruct *gainStatus);
extern float adcToVolts(uint32_t adcValue, uint32_t resolution);
extern float readAD8319(void);

#endif


