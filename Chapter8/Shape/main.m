// Tests the Rectangle class
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
        NSLog(@"Origin at (%.2lf, %.2lf)", [[myRect origin] x], myRect.origin.y);
        NSLog(@"Area = %.2lf, Perimeter = %.2lf",
            [myRect area], [myRect perimeter]);
    }

    return 0;
}
