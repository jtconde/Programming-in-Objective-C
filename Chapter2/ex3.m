// ex3.m -- What output would you expect from the following program?
// Chapter 2 Exercise 3

#import <Foundation/Foundation.h>

int main(int argc, const char* argv[])
{
    @autoreleasepool {
        int i;
        i = 1;

        // Decreases the periods each time it prints a new line
        // but increases i starting from the third line.
        NSLog (@"Testing...");
        NSLog (@"....%i", i);
        NSLog (@"...%i", i + 1);
        NSLog (@"..%i", i + 2);
    }

    return 0;
}