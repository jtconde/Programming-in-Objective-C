// Tests the Fraction class
// Chapter 13 exercise 2 and 4

#import "Fraction.h"
int main()
{
    @autoreleasepool {
        Fraction* a = [[Fraction alloc] init];
        Fraction* b = [[Fraction alloc] init];
        Fraction* result;

        // Test the new reduce method + gcd function
        [a setTo: 3 over: 12];
        [a reduce];
        [a print];

        // Test the add Fraction function
        [b setTo: 4 over: 5];
        result = add(a, b);
        [result print];
    }

}
