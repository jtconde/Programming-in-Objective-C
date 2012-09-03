// Provides function implementations for Fraction class.
// Chapter 9 exercises 3, 4 and 5
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

- (id) add:(id) f
{
    Fraction* sum = [[Fraction alloc] init];
    sum.numerator = numerator * [f denominator] + denominator * [f numerator];
    sum.denominator = denominator * [f denominator];
    [sum reduce];

    return sum;
}

- (Fraction*) subtract:(Fraction*) f
{
    Fraction* difference = [[Fraction alloc] init];
    difference.numerator = numerator * f.denominator -
                         denominator * f.numerator;
    difference.denominator = denominator * f.denominator;
    [difference reduce];

    return difference;
}

- (Fraction*) multiply:(Fraction*) f
{
    Fraction* product = [[Fraction alloc] init];
    product.numerator = numerator * f.numerator;
    product.denominator = denominator * f.denominator;
    [product reduce];

    return product;
}

- (Fraction*) divide:(Fraction*) f
{
    Fraction* quotient = [[Fraction alloc] init];
    quotient.numerator = numerator * f.denominator;
    quotient.denominator = denominator * f.numerator;

    [quotient reduce];
    return quotient;
}

- (void) reduce
{
    int u = numerator;
    int v = denominator;
    int temp;
    while (v != 0) {
        temp = u % v;
        u = v;
        v = temp;
    }

    numerator /= u;
    denominator /= u;
}

@end
