// Trig implementation for the Calculator class.
#import "Calculator.h"

@implementation Calculator (Trig)

- (double) sin
{
    return sin([self accumulator]);
}

- (double) cos
{
    return cos([self accumulator]);
}

- (double) tan
{
    return tan([self accumulator]);
}

@end
