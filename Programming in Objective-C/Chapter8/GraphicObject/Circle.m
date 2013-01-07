// Provides funtion implementations for the Circle class.
// Chapter 8 exercise 5
#import "Circle.h"

@implementation Circle

@synthesize radius;

- (double) area
{
    return M_PI * radius * radius;
}

- (double) circumference
{
    return 2 * M_PI * radius;
}
@end
