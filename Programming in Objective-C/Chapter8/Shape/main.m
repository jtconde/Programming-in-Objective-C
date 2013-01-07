// Tests the Rectangle class
// Chapter 8 exercises 2, 4 and 6
#import "Rectangle.h"
#import "XYPoint.h"

int main()
{
    @autoreleasepool {
        Rectangle* myRect = [[Rectangle alloc] init];
        XYPoint* myPoint = [[XYPoint alloc] init];

        [myPoint setX: 5.45 andY: 8.2];
        [myRect setWidth: 5.45 andHeight: 8.2];
        myRect.origin = myPoint;

        NSLog(@"Rectangle w = %.2lf, h = %.2lf", myRect.width, myRect.height);
        NSLog(@"Origin at (%.2lf, %.2lf)", myRect.origin.x, myRect.origin.y);
        NSLog(@"Area = %.2lf, Perimeter = %.2lf",
            [myRect area], [myRect perimeter]);
        NSLog(@"Translating origin of rectangle: ");
        [myPoint setX: 0 andY: 0];
        myRect.origin = myPoint;
        NSLog(@"Origin at (%.2lf, %.2lf)", myRect.origin.x, myRect.origin.y);

        // Testing is the rectangle contains a point;
        [myPoint setX: 16.00 andY: 19.0];
        [myRect setWidth: 5.45 andHeight: 8.2];
        myRect.origin = myPoint;
        NSLog(@"Testing containsPoint.");
        NSLog(@"Origin now at (%.2lf, %.2lf)", myRect.origin.x, myRect.origin.y);
        if ([myRect containsPoint: myPoint]) {
            NSLog(@"This rectangle contains (%.2lf, %.2lf)",
                [myPoint x], [myPoint y]);
        }
        else {
            NSLog(@"This rectangle does not contain (%.2lf, %.2lf)",
                [myPoint x], [myPoint y]);
        }

        // Testing rectangle draw.
        printf("\n\n");
        Rectangle* rect = [[Rectangle alloc] init];
        [rect setWidth: 10 andHeight: 3];
        [rect draw];

        // Testing rectangle intersect
        printf("\n\n");
        Rectangle* rect2 = [[Rectangle alloc] init];
    }

    return 0;
}
