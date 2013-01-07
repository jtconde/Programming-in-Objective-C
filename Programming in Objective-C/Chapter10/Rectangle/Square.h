// Definition of Square class.
// Chapter 10 exercise 2
#import "Rectangle.h"

@interface Square : Rectangle

@property int sides;

- (id) initWithSide: (int) side;
- (int) area;
- (int) perimeter;

@end
