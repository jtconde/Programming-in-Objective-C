// Implementation for the Calculator class
#import "Calculator.h"

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
    return 1.0 / accumulator;
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
