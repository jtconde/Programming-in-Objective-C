// factorial.m -- calculates the first 10 factorials.
// Chapter 5 exercise 3

#import <Foundation/Foundation.h>

int main(int argc, char const *argv[])
{
    @autoreleasepool {
        int n, i;
        int factorial;

        for(n = 1; n < 11; n++) {
            i = n - 1;
            factorial = n;
            while (i >= 1) {
                factorial *= i;
                --i;
            }
            NSLog(@"%i! = %i", n, factorial);
        }
    }

    return 0;
}