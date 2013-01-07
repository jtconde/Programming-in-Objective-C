// ex4.m -- Subtracts the value 15 from 87 and displays the result.
// Chapter 2 Exercise 4

#import <Foundation/Foundation.h>

int main(int argc, char const *argv[])
{
    int value1 = 15;
    int value2 = 87;
    int difference = value2 - value1;

    NSLog (@"Subtracting %i from %i gives %i.", value1, value2, difference);

    return 0;
}