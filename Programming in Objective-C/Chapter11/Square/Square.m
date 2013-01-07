// Implementation file for the Square class.
// Chapter 11 exercise 5.
#import "Square.h"
#import "Rectangle.h"

@implementation Square
{
    Rectangle* rect;
}

- (Square*) initWithSide: (int) s
{
    self = [super init];
    if (self) {
        rect = [[Rectangle alloc] initWithWidth: (int) s andHeight: (int) s];
    }

    return self;
}

- (void) setSide: (int) s
{
    [rect setWidth: s andHeight: s];
}

- (int) side
{
    return [rect width];
}

- (int) area
{
    return [rect area];
}

- (int) perimeter
{
    return [rect perimeter];
}

@end
