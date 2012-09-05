// Implementation file for ElapsedDays category of NSDate class.
// Chapter 15 exercise 1
#import "NSDate+ElapsedDays.h"

@implementation NSDate (ElapsedDays)

- (unsigned long) elapsedDays: (NSDate *) theDate
{
    unsigned long dayCount;

    // We don't want to calculate elapsed days if theDate is a future date.
    if ([self compare: theDate] == NSOrderedAscending) {
        NSLog(@"That day is in the future.");
        return 0;
    }

    // Calculate number of days by converting seconds to days
    dayCount = (unsigned long) [self timeIntervalSinceDate: theDate];
    dayCount /= (60 * 60 * 24); // 60 seconds * 60 minutes * 24 hours

    return dayCount;
}
@end
