// Chapter 12 exercise 3
#import <Foundation/Foundation.h>
#define MAX3(a, b, c) (((a) > (b)) ? ((a) > (c)) ? (a) : (c): \
                ((b) > (c)) ? (b) : (c))

int main()
{
    @autoreleasepool {
        int a = 4529;
        int b = 32462;
        int c = 35;
        int result = MAX3(a, b, c);

        NSLog(@"The maximum of %d, %d and %d is %d", a, b, c, result);
    }

    return 0;
}
