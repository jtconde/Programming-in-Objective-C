// Calculator.m -- Enhances the Calculator class from Chapter 4.
// Combines Chapter 4 exercises 8, 9 and 10.

#import <Foundation/Foundation.h>

//---- interface section ----//
@interface Calculator: NSObject

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
- (double) memoryAdd:(double) value;          // add value to memory
- (double) memorySubtract: (double) value;    // subtract value from memory

// arithmetic methods
- (double) add:(double) value;
- (double) subtract:(double) value;
- (double) multiply:(double) value;
- (double) divide:(double) value;
@end

//---- implementation section ----//
@implementation Calculator
{
    double accumulator;
    double memory;
}

- (void) setAccumulator:(double) value
{
    accumulator = value;
}

- (double) changeSign
{
    return -accumulator;
}

- (double) reciprocal
{
    return 1.0/accumulator;
}

- (double) xSqaured
{
    return accumulator * accumulator;
}

- (void) clear
{
    accumulator = 0;
}

- (double) accumulator
{
    return accumulator;
}

- (double) memoryClear
{
    memory = 0;

    return accumulator;
}

- (double) memoryStore
{
    memory = accumulator;

    return accumulator;
}

- (double) memoryRecall
{
    accumulator = memory;

    return accumulator;
}

- (double) memoryAdd:(double) value
{
    memory += value;
    accumulator += value;

    return accumulator;
}

- (double) memorySubtract:(double) value
{
    memory -= value;
    accumulator -= value;

    return accumulator;
}

- (double) add:(double) value
{
    accumulator += value;

    return accumulator;
}

- (double) subtract:(double) value
{
    accumulator -= value;

    return accumulator;
}

- (double) multiply:(double) value
{
    accumulator *= value;

    return accumulator;
}

- (double) divide:(double) value
{
    accumulator /= value;

    return accumulator;
}

@end

//---- program section ----//
int main(int argc, char const *argv[])
{
    @autoreleasepool {
        Calculator* deskCalc = [[Calculator alloc] init];

        [deskCalc setAccumulator: 100.0];
        double accum = [deskCalc accumulator];

        // Testing exercise 8 methods
        NSLog (@"Starting accumulator = %g", accum);
        accum = [deskCalc add: 200.];
        NSLog (@"After adding: %g", accum);
        accum = [deskCalc divide: 15.0];
        NSLog (@"After dividing: %g", accum);
        accum = [deskCalc subtract: 10.0];
        NSLog (@"After subtracting: %g", accum);
        accum = [deskCalc multiply: 5];
        NSLog (@"After multiplying: %g", accum);

        // Testing exercise 9 methods
        accum = [deskCalc changeSign];
        NSLog (@"Changing the sign: %g", accum);
        accum = [deskCalc reciprocal];
        NSLog (@"Taking the reciprocal: %g", accum);
        accum = [deskCalc xSqaured];
        NSLog (@"Squaring it: %g", accum);
        NSLog (@"Final accumulator: %g", accum);

        // Testing exercise 10 methods
        NSLog (@"\n\n Setting memory...");
        [deskCalc memoryAdd: 200.];
        NSLog (@"Setting memory value to accumulator");
        accum = [deskCalc memoryRecall];
        NSLog (@"Accumulator value: %g", accum);
        NSLog (@"Subtracting memory...");
        accum = [deskCalc memorySubtract: 50];
        NSLog (@"Final accumulator value: %g", accum);

    }

    return 0;
}