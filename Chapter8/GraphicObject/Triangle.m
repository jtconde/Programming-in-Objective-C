// Provides funtion implementations for the Triangle class
// Chapter 8 exercise 5
#import "Triangle.h"

@implementation Triangle

@synthesize base, height, length, breadth;

- (void) setBase: (double) b andHeight: (double) h andLength: (double) l
    andBredth: (double) br;
{
    breadth = br;
    length = l;
    base = b;
    height = h;
}

- (double) area
{
    return 0.5 * base * height;
}

- (double) perimeter
{
    return base + length + breadth;
}
@end
