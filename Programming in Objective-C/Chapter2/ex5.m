// ex5.m -- Corrects a syntactic error from the code given
// in Chapter 2 Exercise 5.

#import <Foundation/Foundation.h>

int main(int argc, char const *argv[])
{
    @autoreleasepool {
        int sum;

        /* Compute result */
        sum = 25 + 37 + 19;

        // Display results
        NSLog (@"The answer is %i", sum);
    }
    return 0;
}