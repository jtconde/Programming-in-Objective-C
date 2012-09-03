// Implementations for Complex class.
//Chapter 9 exercises 3, 4 and 5

#import "Complex.h"

@implementation Complex

@synthesize real, imaginary;

- (void) print
{
    NSLog(@"%g + %gi", real, imaginary);
}

- (void) setReal:(double) a andImaginary:(double) b
{
    real = a;
    imaginary = b;
}

- (id) add:(id) f
{
    Complex* result = [[Complex alloc] init];
    result.real = [self real] + [f real];
    result.imaginary = [self imaginary] + [f imaginary];

    return result;
}

@end
