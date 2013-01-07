// Provides function implementations for the Complex class
#import "Complex.h"

@implementation Complex

@synthesize real, imaginary;

- (void) print
{
    NSLog(@"Complex number: %g + %gi", real, imaginary);
}

- (void) setReal:(double) r setImaginary:(double) i
{
    real = r;
    imaginary = i;
}

- (Complex*) add:(Complex*) complexNum
{
    Complex* result = [[Complex alloc] init];
    [result setReal: (real + complexNum.real) setImaginary: (imaginary + complexNum.imaginary)];

    return result;
}

@end
