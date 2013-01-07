// Tests the GraphicObject subclasses

#import "GraphicObject.h"
#import "Rectangle.h"
#import "Triangle.h"
#import "Circle.h"

int main()
{
    @autoreleasepool {
        Rectangle* rect = [[Rectangle alloc] init];
        Triangle* tri = [[Triangle alloc] init];
        Circle* circle = [[Circle alloc] init];

        NSLog(@"Rectangle: ");
        [rect setWidth: 5.4 andHeight: 8.2];
        NSLog(@"Area of Rectangle: %.2lf", [rect area]);
        NSLog(@"Perimeter of Rectangle: %.2lf", [rect perimeter]);

        NSLog(@"Circle: ");
        [circle setRadius: 40];
        NSLog(@"Circumference: %.2lf", [circle circumference]);
        NSLog(@"Area: %.2lf", [circle area]);

        NSLog(@"Triangle: ");
        [tri setBase: 4 andHeight: 2 andLength: 4 andBredth: 3];
        NSLog(@"Area: %.2lf", [tri area]);
        NSLog(@"Perimeter: %.2lf", [tri perimeter]);
    }

    return 0;
}
