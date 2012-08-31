// squareTable.m -- displays a table of n and n^2 for n = 1 to 10
// Chapter 5 exercise 1

#import <Foundation/Foundation.h>

int main(int argc, const char *argv[])
{
    @autoreleasepool {
        int n;

        NSLog(@"n\t| n^2");
        NSLog(@"----------------");
        for (n = 1; n <= 10; n++) {
            NSLog(@"%i\t| %i", n, n * n);
        }
    }

    return 0;
}
