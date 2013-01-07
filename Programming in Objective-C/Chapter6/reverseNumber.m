 // Reverses the digits of a number.
// Chapter 6 exercise 5

#import <Foundation/Foundation.h>

int main()
{
    @autoreleasepool {
        int number, originalNumber, reversed;
        char sign;


        NSLog(@"Enter a number: ");
        scanf("%i", &originalNumber);

        if (originalNumber < 0) {
            sign = '-';
            number = originalNumber * (-1);
        }

        NSLog(@"The reversed number is:");
        do {
            reversed = number % 10;
            NSLog(@"%i", reversed);
            number /= 10;
        }
        while (number != 0);
        if (originalNumber < 0)
            NSLog(@"%c", sign);
    }

    return 0;
}