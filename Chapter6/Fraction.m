// Modifies the Fraction class so that whole numbers are displayed as such.
// Chapter 6 exercise 3

#import <Foundation/Foundation.h>

@interface Fraction:NSObject

@property int numerator, denominator;

- (void) print;
- (double) convertToNum;
- (void) setTo:(int) n over:(int) d;
@end

@implementation Fraction

@synthesize numerator, denominator;

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

- (void) setTo:(int) n over:(int) d
{
    numerator = n;
    denominator = d;
}

- (double) convertToNum
{
    if (denominator != 0)
        return (double) numerator / denominator;
    else
        return NAN;
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
