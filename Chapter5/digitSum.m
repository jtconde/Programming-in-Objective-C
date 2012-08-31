// Calculates the sum of an integer's digits. For example, the sum of 2155's
// digits is 2 + 1 + 5 + 5 = 13.
// Chapter 5 exercise 8

#import <Foundation/Foundation.h>

int main(int argc, char const *argv[])
{
    @autoreleasepool {
        int digitSum = 0;
        int number, originalNum;

        NSLog(@"Enter a number: ");
        scanf("%i", &number);
        originalNum = number;

        do {
            digitSum += number % 10;
            number /= 10;
        }
        while (number != 0);
        NSLog(@"The sum of %i's digits is: %i", originalNum, digitSum);
    }

    return 0;
}