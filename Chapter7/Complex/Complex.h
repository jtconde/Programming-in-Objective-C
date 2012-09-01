// Complex.m -- defines a Complex class
// Implements Chapter 7 exercises both 5 and 6.

#import <Foundation/Foundation.h>

@interface Complex: NSObject

@property double real, imaginary;

/**
 * Displays in the format: a + bi
 */
- (void) print;

/**
 * Sets both real and imaginary values
 */
- (void) setReal:(double) r setImaginary:(double) i;

/**
 * Adds two complex numbers
 * @Complex* {[complexNum]} the complex number to add
 */
- (Complex*) add:(Complex*) complexNum;

@end
