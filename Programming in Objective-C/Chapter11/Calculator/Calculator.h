// Defines the Calculator class

#import <Foundation/Foundation.h>

@interface Calculator : NSObject

// accumulator methods
- (void)   setAccumulator: (double) value;
- (double) changeSign;      // changes sign of the accumulator
- (double) reciprocal;      // takes the reciprocal (1 / accumulator)
- (double) xSqaured;        // squares the accumulator
- (void)   clear;
- (double) accumulator;

// memory methods
- (double) memoryClear;                       // clear memory
- (double) memoryStore;                       // set memory to accumulator
- (double) memoryRecall;                      // set accumulator to memory
- (double) memoryAdd: (double) value;         // add value to memory
- (double) memorySubtract: (double) value;    // subtract value from memory

// arithmetic methods
- (double) add: (double) value;
- (double) subtract: (double) value;
- (double) multiply: (double) value;
- (double) divide: (double) value;

@end
