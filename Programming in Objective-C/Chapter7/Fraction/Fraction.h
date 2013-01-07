// Defines the Fraction class
// Implemented Chapter 7 exercises 1, 2, 3 and 4 all together in this
// directory.

#import <Foundation/Foundation.h>

@interface Fraction:NSObject

@property int numerator, denominator;

/**
 * prints a fraction. If it detects an improper fraction, print displays it
 * in mixed form.
 *
 * @BOOL {[shouldReduce]} indicates whether the function should be reduced
 * for display.
 */
- (void)   print:(BOOL) shouldReduce;

/**
 * Sets the numerator and the denominator.
 */
- (void)   setTo:(int) n over:(int) d;

// converts the fraction to a float number.
- (double) convertToNum;

// Add argument to reciever
- (Fraction*)   add:(Fraction*) f;

// Subtract argument from reciever
- (Fraction*)   subtract:(Fraction*) f;

// Multiply reciever by argument
- (Fraction*)   multiply:(Fraction*) f;

// Divide reciever by argument
- (Fraction*)   divide:(Fraction*) f;

// Reduces the fraction
- (void)        reduce;
@end
