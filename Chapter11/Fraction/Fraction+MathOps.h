// Extending Fraction class with category MathOps
// Chapter 11 exercise 1

#import "Fraction.h"

@interface Fraction (MathOps)

- (Fraction*) add: (Fraction*) f;
- (Fraction*) sub: (Fraction*) f;
- (Fraction*) mul: (Fraction*) f;
- (Fraction*) div: (Fraction*) f;
// Returns the inversion of the reciever
- (Fraction*) inv;

@end
