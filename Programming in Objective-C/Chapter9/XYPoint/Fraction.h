// Defines the Fraction class
// Chapter 9 exercises 3, 4 and 5
#import <Foundation/Foundation.h>

@interface Fraction:NSObject

@property int numerator, denominator;

- (void) print;

/**
 * Sets the numerator and the denominator.
 */
- (void)   setTo:(int) n over:(int) d;

// converts the fraction to a float number.
- (double) convertToNum;

// Add argument to reciever
- (id)   add:(id) f;

// Subtract argument from reciever
- (Fraction*)   subtract:(Fraction*) f;

// Multiply reciever by argument
- (Fraction*)   multiply:(Fraction*) f;

// Divide reciever by argument
- (Fraction*)   divide:(Fraction*) f;

// Reduces the fraction
- (void)        reduce;

@end
