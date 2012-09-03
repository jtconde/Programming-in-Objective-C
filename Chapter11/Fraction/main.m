// Tests the Fraction class and its MathOps category
#import "Fraction+MathOps.h"
#import "Fraction+Comparison.h"

int main()
{
    @autoreleasepool {
        Fraction* a = [[Fraction alloc] init];
        Fraction* b = [[Fraction alloc] init];
        Fraction* c = [[Fraction alloc] init];
        Fraction* d = [[Fraction alloc] init];
        Fraction* result;
        Fraction* invResult;

        [a setTo: 1 over: 3];
        [b setTo: 2 over: 5];
        [c setTo: 3 over: 4];
        [d setTo: 6 over: 8];

        // add
        [a print];
        NSLog(@"  +");
        [b print];
        NSLog(@"-----");
        result = [a add: b];
        [result print];
        NSLog(@"\n");

        // sub
        [a print];
        NSLog(@"  -");
        [b print];
        NSLog(@"-----");
        result = [a sub: b];
        [result print];
        NSLog(@"\n");

        // mul
        [a print];
        NSLog(@"  *");
        [b print];
        NSLog(@"-----");
        result = [a mul: b];
        [result print];
        NSLog(@"\n");

        // div
        [a print];
        NSLog(@"  /");
        [b print];
        NSLog(@"-----");
        result = [a div: b];
        [result print];
        NSLog(@"\n");

        // inv
        invResult = [result inv];
        NSLog(@"Inverse of previous result: ");
        [invResult print];
        NSLog(@"\n");

        // Compare fractions
        NSLog(@"Comparing two fractions:");
        [c print];
        NSLog(@" =?");
        [d print];
        NSLog(@"-----");
        if ([c isEqualTo: d] == YES)
            NSLog(@"They are equal.");
        else
            NSLog(@"They are not equal.");
        NSLog(@"\n");

        // Testing one of NSComparisonMethods informal protocols
        [c print];
        NSLog(@">=?");
        [d print];
        NSLog(@"-----");
        if ([c isGreaterThanOrEqualTo: d] == YES)
            NSLog(@"c is greater than or equal to d");
    }

    return 0;
}
