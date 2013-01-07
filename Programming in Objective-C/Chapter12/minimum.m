// Chapter 12 exercise 2
#import <Foundation/Foundation.h>
#define MINIMUM(a, b) ((a) < (b) ? (a) : (b))

int main()
{
    @autoreleasepool {
        int a = 4529;
        int b = 32462;

        NSLog(@"The minimum of %d and %d is %d", a, b, MINIMUM(a, b));
    }

    return 0;
}
