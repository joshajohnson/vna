#ifndef COMMANDPARSER_H_
#define COMMANDPARSER_H_

extern struct MAX2871Struct max2871Status;
extern struct txStruct txStatus;
extern struct receiverStruct receiverStatus;

void commandParser(struct MAX2871Struct *max2871Status, struct txStruct *txStatus, struct receiverStruct *receiverStatus);

#endif
