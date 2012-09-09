// Comparison category for Fraction class
#import "Fraction.h"

@interface Fraction (Comparison)

/**
 * Compares two fractions.
 * @param frac the fraction to compare
 * @return NSOrderedSame if the reciever and the frac are equal,
 * NSOrderedAscending if the reciever is less than the frac,
 * or NSOrderedDescending if the reciever is greater than the frac.
 */
- (NSComparisonResult) compareFrac: (Fraction *) frac;
@end
