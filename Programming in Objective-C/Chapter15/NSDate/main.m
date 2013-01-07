// Tests the ElapsedDays category of NSDate class.
// Chapter 15 exercise 1
#import "NSDate+ElapsedDays.h"

int main()
{
    @autoreleasepool {
        // Create a new date for today
        NSDate *today = [NSDate date];
        // And a date to calculate with, using a specified string
        NSString *dateString = @"12/25/2011";
        NSDate *aDate = [NSDate dateWithNaturalLanguageString: dateString];
        unsigned long result;

        result = [today elapsedDays: aDate];
        if (result > 1)
            NSLog(@"%lu days have elapsed since %@.", result, dateString);
        else if (result == 0)
            NSLog(@"");
        else
            NSLog(@"%lu day has elapsed since %@.", result, dateString);
    }
    return 0;
}
