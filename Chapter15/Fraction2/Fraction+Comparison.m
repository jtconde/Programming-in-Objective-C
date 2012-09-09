#import "Fraction+Comparison.h"

@implementation Fraction (Comparison)

- (NSComparisonResult) compareFrac: (Fraction *) frac
{
    if ([self convertToNum] == [frac convertToNum])
        return NSOrderedSame;
    if ([self convertToNum] < [frac convertToNum])
        return NSOrderedAscending;
    else
        return NSOrderedDescending;
}

@end
