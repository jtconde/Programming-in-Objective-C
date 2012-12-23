// Funtion implementation of the XYPoint class
// -- modified for Chapter 18 to conform to NSCopying protocol
#import "XYPoint.h"

@implementation XYPoint

@synthesize x, y;

- (id)copyWithZone:(NSZone *)zone
{
    id newPoint = [[[self class] allocWithZone:zone] init];
    [newPoint setX:x andY:y];

    return newPoint;
}

- (void)setX:(double)xVal andY:(double)yVal
{
    x = xVal;
    y = yVal;
}
@end
