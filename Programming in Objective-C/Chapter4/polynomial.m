// polynomial.m -- evaluates the polynomial 3x^2 - 5x^2 + 6 where x = 2.55
// Chapter 4 exercise 4

#import <Foundation/Foundation.h>

int main(int argc, char const *argv[])
{

    @autoreleasepool {
        float x = 2.55;
        float result = (3 * x * x * x) + (5 * x * x) + 6;

        NSLog (@"3x^3 - 5x^2 + 6 = %g when x = 2.55", result);

    }

    return 0;
}