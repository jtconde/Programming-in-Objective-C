// Provides function implementations for Fraction class.
// Chapter 11 exercise 1
#import "Fraction.h"

@implementation Fraction

@synthesize numerator, denominator;

- (void) print
{
    NSLog(@"%i/%i", numerator, denominator);
}

- (double) convertToNum
{
    if (denominator != 0)
        return (double) numerator / denominator;
    else
        return NAN;
}

- (void) setTo:(int) n over:(int) d
{
    numerator = n;
    denominator = d;
}

- (void) reduce
{
    int u = self.numerator;
    int v = self.denominator;
    int temp;
    while (v != 0) {
        temp = u % v;
        u = v;
        v = temp;
    }

    self.numerator /= u;
    self.denominator /= u;
}

@end
