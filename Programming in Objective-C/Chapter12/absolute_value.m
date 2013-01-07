// Chapter 12 exercise 7
#import <Foundation/Foundation.h>
#define ABSOLUTE_VALUE(x) ( (x) < 0 ? (x) * -1 : (x) )

int main()
{
    @autoreleasepool {
        int num = -397;
        int delta = 60;

        NSLog(@"The absolute value of %d is %d.", num + delta,
            ABSOLUTE_VALUE(num + delta));

    }

    return 0;
}
