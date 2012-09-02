// Provides funtion implementations for the XYPoint class

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
