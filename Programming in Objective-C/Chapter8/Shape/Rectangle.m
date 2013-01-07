// Function implementations for Rectangle Class.
// Chapter 8 exercises 2, 4 and 6.

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

- (void) translate: (XYPoint*) pt
{
    origin = pt;
}

- (BOOL) containsPoint: (XYPoint*) aPoint
{
    double wOuterBounds = width;
    double hOuterBounds = height;

    if (aPoint.x > width || aPoint.x < width ||
        aPoint.y > height || aPoint.y < height) {
        return NO;
    }
    else {
        return YES;
    }
}
@end
