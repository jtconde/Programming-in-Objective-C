// Implements the Comparison category for the Fraction class.
// Chapter 11 exercises 2 and 3
#import "Fraction+Comparison.h"

@implementation Fraction (NSComparisonMethods)

- (BOOL) isEqualTo: (id) f
{
    if ([self compare: f] == 0)
        return YES;
    else
        return NO;
}

- (int) compare: (Fraction*) f
{
    if ([self convertToNum] == [f convertToNum])
        return 0;
    else if ([self convertToNum] > [f convertToNum])
        return 1;
    else
        return -1;
}

- (BOOL) isLessThanOrEqualTo: (id) object
{
    if ([self convertToNum] <= [object convertToNum])
        return YES;
    else
        return NO;
}

- (BOOL) isLessThan: (id) object
{
    if ([self convertToNum] < [object convertToNum])
        return YES;
    else
        return NO;
}

- (BOOL) isGreaterThanOrEqualTo: (id) object
{
    if ([self convertToNum] >= [object convertToNum])
        return YES;
    else
        return NO;
}

- (BOOL) isGreaterThan: (id) object
{
    if ([self convertToNum] > [object convertToNum])
        return YES;
    else
        return NO;
}

- (BOOL) isNotEqualTo: (id) object
{
    if ([self convertToNum] != [object convertToNum])
        return YES;
    else
        return NO;
}

@end
