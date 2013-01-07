// Implementation of the XYPoint class
// Chapter 9 exercises 3, 4 and 5

#import "XYPoint.h"

@implementation XYPoint

@synthesize x, y;

- (void) setX: (int) xVal andY: (int) yVal
{
    x = xVal;
    y = yVal;
}

- (void) print
{
    NSLog(@"(%i, %i)", self.x, self.y);
}

@end
