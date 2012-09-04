// Provides function implementations for Fraction class.
// Chapter 13 exercise 2 and 4
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

int gcd(int u, int v)
{
    int temp;
    while (v != 0) {
        temp = u % v;
        u = v;
        v = temp;
    }

    return u;
}

- (void) reduce
{
    int u = self.numerator;
    int v = self.denominator;
    int divisor = gcd(u, v);

    self.numerator /= divisor;
    self.denominator /= divisor;
}

Fraction* add(Fraction* f1, Fraction* f2)
{
    Fraction* result = [[Fraction alloc] init];
    result.numerator = (f1.numerator * f2.denominator) +
        (f1.denominator * f2.numerator);
    result.denominator = f1.denominator * f2.denominator;
    [result reduce];

    return result;
}

@end
