// Tests the Fraction class.
// Chapter 10 exercises 3 and 5
#import "Fraction.h"

int main()
{
    @autoreleasepool {
        FractionObj a = [[Fraction alloc] init];
        FractionObj b = [[Fraction alloc] init];
        FractionObj result;

        [a setTo: 1 over: 3];
        [b setTo: 2 over: 5];

        [a print];
        NSLog(@"  +");
        [b print];
        NSLog(@"-----");
        result = [a add: b];
        [result print];

        NSLog(@"Fraction's add method was called %i time(s).",
            [Fraction addCounter]);
    }

    return 0;
}
