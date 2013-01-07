// Displays a table of triangular numbers and formats the output so that the
// data is left justified.
// Chapter 5 exercise 4

#import <Foundation/Foundation.h>

int main(int argc, char const *argv[])
{
    @autoreleasepool {
        int n, triangularNumber;

        NSLog(@"TABLE OF TRAINGULAR NUMBERS");
        NSLog(@" n  Sum from 1 to n");
        NSLog(@"--  ---------------");

        triangularNumber = 0;
        for (n = 1; n <= 10; ++n) {
            triangularNumber += n;
            NSLog(@"%-2i %i", n, triangularNumber);
        }
    }

    return 0;
}