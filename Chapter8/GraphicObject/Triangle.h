// Defines a Traingle class.
// Chapter 8 exercise 5
#import "GraphicObject.h"

@interface Triangle: GraphicObject

@property double base, height, length, breadth;

- (void) setBase: (double) b andHeight: (double) h andLength: (double) l
    andBredth: (double) br;
- (double) area;
- (double) perimeter;
@end
