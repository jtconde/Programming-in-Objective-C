// Evaluates the following:
//  (3.31 * 10^-8 + 2.01 * 10^-7) / (7.16 * 10^-6 + 2.01 * 10^-8)
// Chapter 4 exercise 5

#import <Foundation/Foundation.h>

int main(int argc, char const *argv[])
{
    @autoreleasepool {
        float result;
        result = (3.31 * 10e-8 + 2.01 * 10e-7) / (
                7.16 * 10e-6 + 2.01 * 10e-8);

        NSLog (@"The result is %e", result);
    }

    return 0;
}