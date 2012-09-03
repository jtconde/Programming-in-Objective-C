// Defines the Fraction class
// Chapter 10 exercises 3 and 5
#import <Foundation/Foundation.h>

@interface Fraction:NSObject

typedef Fraction* FractionObj;

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

// Returns the number of times add: was called.
// Class method
+ (int) addCounter;

// Subtract argument from reciever
- (Fraction*)   subtract:(Fraction*) f;

// Multiply reciever by argument
- (Fraction*)   multiply:(Fraction*) f;

// Divide reciever by argument
- (Fraction*)   divide:(Fraction*) f;

// Reduces the fraction
- (void)        reduce;

@end
