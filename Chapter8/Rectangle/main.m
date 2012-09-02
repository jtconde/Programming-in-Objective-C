// Tests the Rectangle class
// Chapter 8 exercises 7 and 8
#import "Rectangle.h"

int main()
{
    @autoreleasepool {

        // Testing rectangle draw.
        printf("\n\n");
        Rectangle* rect = [[Rectangle alloc] init];
        [rect setWidth: 10 andHeight: 3];
        NSLog(@"Drawing rectangle of width %.0lf and height %.0lf:",
                [rect width], [rect height]);
        [rect draw];

        // Testing rectangle intersect
        printf("\n\n");

        XYPoint* point1 = [[XYPoint alloc] init];
        XYPoint* point2 = [[XYPoint alloc] init];
        Rectangle* rect2 = [[Rectangle alloc] init];
        Rectangle* rect3 = [[Rectangle alloc] init];
        Rectangle* rect4;

        [point1 setX: 200 andY: 420];
        [point2 setX: 400 andY: 300];

        [rect2 setWidth: 250 andHeight: 75];
        [rect3 setWidth: 100 andHeight: 180];
        rect2.origin = point1;
        rect3.origin = point2;

        rect4 = [rect2 intersect: rect3];

        NSLog(@"Rectangle #1 with width %.1lf and height %.1lf",
            [rect2 width], [rect2 height]);
        NSLog(@"Rectangle #2 with width %.1lf and height %.1lf",
            [rect3 width], [rect3 height]);
        NSLog(@"Resulting Intersection = width: %.2lf height: %.2lf",
            [rect4 width], [rect4 height]);
    }

    return 0;
}
