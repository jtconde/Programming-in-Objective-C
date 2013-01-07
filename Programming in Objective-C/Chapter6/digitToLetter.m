// Extracts the digits of a number and prints its English word.
// Chapter 6 exercise 6
#import <Foundation/Foundation.h>

unsigned long long int calculateNumOfDigits(unsigned long long int number);
void printInEnglish(char digit);
char ithDigit(unsigned long long int number, int i);

int main()
{
    @autoreleasepool {
        int numOfDigits;
        unsigned long long int number;
        char digit;

        NSLog(@"Enter a number:");
        scanf("%llu", &number);

        if (number == 0) {
            NSLog(@"zero");
        }
        else {
            numOfDigits = calculateNumOfDigits(number);
            if (numOfDigits > 19) {
                NSLog(@"You have too many digits for an integer to handle.");
                NSLog(@"Maximum amount is 19. Terminating program");
            }
            else {
                int i;
                for (i = numOfDigits - 1; i >= 0; i--) {
                    digit = ithDigit(number, i);
                    printInEnglish(digit);
                }
            }

        }
    }

    return 0;
}

unsigned long long int calculateNumOfDigits(unsigned long long int number)
{
    unsigned int number_of_digits = 0;
    while (number != 0) {
        number /= 10;
        number_of_digits++;
    }

    return number_of_digits;
}

char ithDigit(unsigned long long int number, int i)
{
    while (i--) {
        number /= 10;
    }
    return (number % 10) + '0';
}

void printInEnglish(char digit)
{
    if (digit == '0')
        NSLog(@"zero");
    else if (digit == '1')
        NSLog(@"one");
    else if (digit == '2')
        NSLog(@"two");
    else if (digit == '3')
        NSLog(@"three");
    else if (digit == '4')
        NSLog(@"four");
    else if (digit == '5')
        NSLog(@"five");
    else if (digit == '6')
        NSLog(@"six");
    else if (digit == '7')
        NSLog(@"seven");
    else if (digit == '8')
        NSLog(@"eight");
    else if (digit == '9')
        NSLog(@"nine");
    else {
        NSLog(@"Error: Invalid number format.");
    }
}

/*

Output:

2012-08-31 00:11:41.696 run[11667:707] Enter a number:
28283728467264726
2012-08-31 00:11:43.597 run[11667:707] two
2012-08-31 00:11:43.599 run[11667:707] eight
2012-08-31 00:11:43.600 run[11667:707] two
2012-08-31 00:11:43.601 run[11667:707] eight
2012-08-31 00:11:43.602 run[11667:707] three
2012-08-31 00:11:43.603 run[11667:707] seven
2012-08-31 00:11:43.604 run[11667:707] two
2012-08-31 00:11:43.605 run[11667:707] eight
2012-08-31 00:11:43.606 run[11667:707] four
2012-08-31 00:11:43.608 run[11667:707] six
2012-08-31 00:11:43.609 run[11667:707] seven
2012-08-31 00:11:43.610 run[11667:707] two
2012-08-31 00:11:43.612 run[11667:707] six
2012-08-31 00:11:43.614 run[11667:707] four
2012-08-31 00:11:43.615 run[11667:707] seven
2012-08-31 00:11:43.616 run[11667:707] two
2012-08-31 00:11:43.617 run[11667:707] six

*/