// Defines the Fraction class
// Chapter 13 exercise 2 and 4
#import <Foundation/Foundation.h>

@interface Fraction : NSObject

@property int numerator, denominator;

// displays the fraction
- (void)   print;

//Sets the numerator and the denominator.
- (void)   setTo:(int) n over:(int) d;

// converts the fraction to a float number.
- (double) convertToNum;

// Finds the greatest common divisor between u and v
int gcd(int u, int v);

// Reduces the fraction
- (void)   reduce;

Fraction* add(Fraction* f1, Fraction* f2);

@end
