#ifndef PE43711_H
#define PE43711_H

extern struct gainStruct gainStatus;

extern void intToBinArray(uint8_t in, uint8_t* out);
extern uint8_t setAttenuation(float atten, struct gainStruct *gainStatus);

#endif

