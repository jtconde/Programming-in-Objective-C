// Tests the Fraction class
// compile with:
// clang -fobjc-arc -framework Foundation Fraction.m main.m -o FractionTest
#import "Fraction.h"


int main()
{
    @autoreleasepool {
        Fraction* aFraction = [[Fraction alloc] init];
        Fraction* bFraction = [[Fraction alloc] init];
        Fraction* result;

        [aFraction setTo: -5 over: 4];
        [bFraction setTo: -3 over: 2];

        [aFraction print: NO];
        NSLog(@"/");
        [bFraction print: NO];
        NSLog(@"=");
        result = [aFraction divide: bFraction];

        [result print: NO];

        NSLog(@"Testing mixed form:");
        Fraction* improper = [[Fraction alloc] init];
        [improper setTo: 5 over: 3];
        NSLog(@"%i/%i: ", [improper numerator], [improper denominator]);
        [improper print: NO];
    }

    return 0;
}

/**
Output:

→ clang -fobjc-arc -framework Foundation Fraction.m main.m -o FractionTest
2012-08-31 21:24:36.617 FractionTest[23060:707] -5/4
2012-08-31 21:24:36.619 FractionTest[23060:707] /
2012-08-31 21:24:36.620 FractionTest[23060:707] -3/2
2012-08-31 21:24:36.621 FractionTest[23060:707] =
2012-08-31 21:24:36.622 FractionTest[23060:707] 5/6
2012-08-31 21:24:36.622 FractionTest[23060:707] Testing mixed form:
2012-08-31 21:24:36.623 FractionTest[23060:707] 5/3:
2012-08-31 21:24:36.623 FractionTest[23060:707] 1 2/3
*/
