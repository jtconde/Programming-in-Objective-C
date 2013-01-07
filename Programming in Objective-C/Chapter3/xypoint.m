// xypoint.m -- Holds a Cartesian coordinate (x, y)

#import <Foundation/Foundation.h>

//---- interface section ----//
@interface XYPoint: NSObject

- (void) setX: (int) x;
- (void) setY: (int) y;
- (int) getX;
- (int) getY;

@end

//---- implementation section ----//
@implementation XYPoint
{
    int X;
    int Y;
}

- (void) setX: (int) x
{
    X = x;
}

- (void) setY: (int) y
{
    Y = y;
}

- (int) getX
{
    return X;
}

- (int) getY
{
    return Y;
}

@end

//---- program section ----//
int main(int argc, char const *argv[])
{
    @autoreleasepool {
        XYPoint* point;
        point = [[XYPoint alloc] init];

        [point setX: 4];
        [point setY: 5];

        NSLog (@"The point is: (%i, %i)", [point getX], [point getY]);
    }

    return 0;
}
