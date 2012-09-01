// Function implementations for Rectangle Class.
// Chapter 8 exercise 2

#import "Rectangle.h"

@implementation Rectangle
{
    XYPoint* origin;
}

@synthesize width, height;

- (void) setWidth: (double) w andHeight: (double) h
{
    width = w;
    height = h;
}

- (void) setOrigin: (XYPoint*) pt
{
    origin = pt;
}

- (double) area
{
    return width * height;
}

- (double) perimeter
{
    return 2 * (width + height);
}

- (XYPoint*) origin
{
    return origin;
}
@end
