// Rectangle.m -- Defines a Rectangle class.
// Chapter 4 exercise 7

#import <Foundation/Foundation.h>

//---- interface ----//
@interface Rectangle: NSObject
- (void) setWidth: (int) w;
- (void) setHeight: (int) h;
- (int) width;
- (int) height;
- (int) area;
- (int) perimeter;

@end

//---- implementation ----//
@implementation Rectangle
{
    int height;
    int width;
}

- (void) setWidth: (int) w
{
    width = w;
}

- (void) setHeight: (int) h
{
    height = h;
}

- (int) height
{
    return height;
}

- (int) width
{
    return width;
}

- (int) area
{
    return height * width;
}

- (int) perimeter
{
    return (height + width) * 2;
}

@end

//---- test program ----//
int main(int argc, char const *argv[])
{

    @autoreleasepool {
        Rectangle* rect;
        rect = [[Rectangle alloc] init];

        [rect setHeight: 1440];
        [rect setWidth: 900];
        int area = [rect area];
        int perimeter = [rect perimeter];

        NSLog (@"This is a Rectangle with %i height and %i width.",
            [rect height], [rect width]);
        NSLog (@"Area of Rectangle: %i", area);
        NSLog (@"Perimeter of Rectangle: %i", perimeter);
    }

    return 0;
}