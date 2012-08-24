// temperature.m -- converts 27 degrees Fahrenheit to Celsius
// Chapter 4 exercise 2

#import <Foundation/Foundation.h>

int main(int argc, char const *argv[])
{
    @autoreleasepool {
        float fahrenheit = 27;
        float celsius;

        celsius = (fahrenheit - 32) / 1.8;
        NSLog (@"27 degrees fahrenheit is %g degrees celsius", celsius);
    }

    return 0;
}