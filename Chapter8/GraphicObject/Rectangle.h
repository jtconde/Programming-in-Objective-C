// Function definition for Rectangle Class.
// Chapter 8 exercise 5
#import "GraphicObject.h"

@interface Rectangle: GraphicObject

@property double width, height;

- (void) setWidth: (double) w andHeight: (double) h;
- (double) area;
- (double) perimeter;
@end
