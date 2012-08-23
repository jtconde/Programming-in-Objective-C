// ex6.m -- predict the result that will be given by the following code.

#import <Foundation/Foundation.h>

int main(int argc, char const *argv[])
{
    @autoreleasepool {
        int answer, result;

        answer = 100;
        result = answer - 10;

        // Should print out 95.
        NSLog (@"The result is %i\n", result + 5);
    }

    return 0;
}