#ifndef COMMANDPARSER_H_
#define COMMANDPARSER_H_

#define SHORT	1
#define OPEN 	2
#define LOAD	3
#define THRU	4

extern struct MAX2871Struct max2871Status;
extern struct txStruct txStatus;
extern struct receiverStruct receiverStatus;

void commandParser(struct MAX2871Struct *max2871Status, struct txStruct *txStatus, struct receiverStruct *receiverStatus);

#endif
