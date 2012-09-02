// Provides function implementations of GraphicObject class.
// Chapter 8 exercise 5
#import "GraphicObject.h"

@implementation GraphicObject

@synthesize fillColor, lineColor;
@synthesize filled;

- (void) setfillColor: (int) c1 andLineColor: (int) c2 andFilled: (BOOL) fill
{
    fillColor = c1;
    lineColor = c2;
    filled = NO;
}
@end
