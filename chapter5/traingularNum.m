// triangularNum.m -- calculates the traingular number between 5 and 50
// in increments of 5. Chapter 5 exercise 2

#import <Foundation/Foundation.h>

int main(int argc, char const *argv[])
{
    @autoreleasepool {
        int n;
        NSLog(@"--- Triangular Numbers between 5 and 50 ---");
        for (n = 5; n <= 50; n += 5) {
            NSLog(@"\t\t%i", (n * (n + 1)) / 2);
        }
    }

    return 0;
}