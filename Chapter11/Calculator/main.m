// Tests the Trig category of the calculator class.
// Chapter 11 exercise 4
#import "Calculator+Trig.h"

int main()
{
    @autoreleasepool {
        Calculator* calc = [[Calculator alloc] init];

        NSLog(@"Taking sin, cos and tan of accumulator: ");
        [calc setAccumulator: 400.50];
        NSLog(@"Accumulator: %.3lf", [calc accumulator]);
        NSLog(@"sin = %.4lf", [calc sin]);
        NSLog(@"cos = %.4lf", [calc cos]);
        NSLog(@"tan = %.4lf", [calc tan]);
    }

    return 0;
}
