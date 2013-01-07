// Provides function implementations for Fraction class.
// Chapter 15 exercise 7
#import "Fraction.h"

@implementation Fraction

@synthesize numerator, denominator;

- (void)print
{
    NSLog(@"%i/%i", numerator, denominator);
}


- (double)convertToNum
{
    if (denominator != 0)
        return (double) numerator / denominator;
    else
        return NAN;
}

- (NSString *)convertToString
{
    if (numerator == denominator) {
        if (numerator == 0)
            return @"0";
        else
            return @"1";
    }
    else if (denominator == 1)
        return [NSString stringWithFormat:@"%i", numerator];
    else
        return [NSString stringWithFormat:@"%i/%i", numerator, denominator];
}

- (void)setTo:(int)num over:(int)denom
{
    numerator = num;
    denominator = denom;
}

- (Fraction *)add:(Fraction *) f
{
    Fraction *sum = [[Fraction alloc] init];
    sum.numerator = numerator * f.denominator + denominator * f.numerator;
    sum.denominator = denominator * f.denominator;
    [sum reduce];

    return sum;
}

- (Fraction *)subtract:(Fraction *)f
{
    Fraction *difference = [[Fraction alloc] init];
    difference.numerator = numerator * f.denominator -
                         denominator * f.numerator;
    difference.denominator = denominator * f.denominator;
    [difference reduce];

    return difference;
}

- (Fraction *)multiply:(Fraction *)f
{
    Fraction *product = [[Fraction alloc] init];
    product.numerator = numerator * f.numerator;
    product.denominator = denominator * f.denominator;
    [product reduce];

    return product;
}

- (Fraction *)divide:(Fraction *)f
{
    Fraction *quotient = [[Fraction alloc] init];
    quotient.numerator = numerator * f.denominator;
    quotient.denominator = denominator * f.numerator;

    [quotient reduce];
    return quotient;
}

- (void)reduce
{
    int u = numerator;
    int v = denominator;
    int temp;
    
    if (u == 0)
        return;
    else if (u < 0)
        u = -u;
    while (v != 0) {
        temp = u % v;
        u = v;
        v = temp;
    }

    numerator /= u;
    denominator /= u;
}

@end
