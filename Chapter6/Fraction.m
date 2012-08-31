// Modifies the Fraction class so that whole numbers are displayed as such.
// Chapter 6 exercise 3

#import <Foundation/Foundation.h>

@interface Fraction:NSObject

- (void) print;
- (void) setNumerator:(int) n;
- (void) setDenominator:(int) n;
- (int) numerator;
- (int) denominator;
- (double) convertToNum;
@end

@implementation Fraction
{
    int numerator;
    int denominator;
}

- (void) print
{
    if (denominator == 1) {
        NSLog(@" %i", numerator);
    }
    else if (numerator == 0) {
        NSLog(@" 0");
    }
    else {
        NSLog(@" %i/%i", numerator, denominator);
    }
}

- (void) setNumerator:(int) n
{
    numerator = n;
}

- (void) setDenominator:(int) n
{
    denominator = n;
}

- (double) convertToNum
{
    if (denominator != 0)
        return (double) numerator / denominator;
    else
        return NAN;
}

- (int) numerator
{
    return numerator;
}

- (int) denominator
{
    return denominator;
}
@end

int main()
{
    @autoreleasepool {
        Fraction* aFraction = [[Fraction alloc] init];
        Fraction* bFraction = [[Fraction alloc] init];

        [aFraction setNumerator:8];
        [aFraction setDenominator: 13];

        [aFraction print];
        NSLog (@" =");
        NSLog (@"%g", [aFraction convertToNum]);
        [bFraction print];
        NSLog (@"%g", [bFraction convertToNum]);
    }

    return 0;
}
