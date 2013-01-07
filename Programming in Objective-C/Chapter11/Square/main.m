// Tests the Composite Square class.
#import "Square.h"
#import "Rectangle.h"

int main()
{
    @autoreleasepool {
        Square* mySq = [[Square alloc] initWithSide: 14];
        NSLog(@"Side = %i", [mySq side]);
        NSLog(@"Perimeter = %i", [mySq perimeter]);
        NSLog(@"Area = %i", [mySq area]);
    }

    return 0;
}
