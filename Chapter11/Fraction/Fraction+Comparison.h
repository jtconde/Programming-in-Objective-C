// Comparison category for the Fraction class.
// Chapter 11 exercises 2 and 3.
#import "Fraction.h"

@interface Fraction (NSComparisonMethods)

- (BOOL) isEqualTo: (id) object;
- (BOOL) isLessThanOrEqualTo: (id) object;
- (BOOL) isLessThan: (id) object;
- (BOOL) isGreaterThanOrEqualTo: (id) object;
- (BOOL) isGreaterThan: (id) object;
- (BOOL) isNotEqualTo: (id) object;
- (int) compare: (Fraction*) f;

@end
