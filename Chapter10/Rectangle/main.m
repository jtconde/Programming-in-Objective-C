// Tests the Rectangle and the Square classes
#import "Square.h"

int main()
{
    @autoreleasepool {
        Rectangle *rect = [[Rectangle alloc] initWithWidth: 16 andHeight: 24];
        Square* sq      = [[Square alloc] initWithSide: 10];

        NSLog(@"Rectangle area: %.1lf", [rect area]);
        NSLog(@"Square area: %i", [sq area]);

        if ([rect area] == 384.0 && [sq area] == 100) {
            NSLog(@"Initialization override successful.");
        }
    }

    return 0;
}
