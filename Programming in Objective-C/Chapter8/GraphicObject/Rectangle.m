// Provides function implementations for the Rectangle class.
// Chapter 8 exercise 5
#import "Rectangle.h"

@implementation Rectangle

@synthesize width, height;

- (void) setWidth: (double) w andHeight: (double) h
{
    width = w;
    height = h;
}

- (double) area
{
    return height * width;
}

- (double) perimeter
{
    return 2 * (width + height);
}
@end
