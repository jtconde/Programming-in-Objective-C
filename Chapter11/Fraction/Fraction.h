// Defines the Fraction class
// Chapter 11 exercise 1
#import <Foundation/Foundation.h>

@interface Fraction : NSObject

@property int numerator, denominator;

// displays the fraction
- (void)   print;

//Sets the numerator and the denominator.
- (void)   setTo:(int) n over:(int) d;

// converts the fraction to a float number.
- (double) convertToNum;

// Reduces the fraction
- (void)   reduce;

@end
