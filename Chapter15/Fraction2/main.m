#import "Fraction+Comparison.h"

int main()
{
    @autoreleasepool {
        Fraction *aFrac = [[Fraction alloc] init];
        Fraction *bFrac = [[Fraction alloc] init];
        Fraction *cFrac = [[Fraction alloc] init];
        [aFrac setTo: 4 over: 13];
        [bFrac setTo: 8 over: 15];
        [cFrac setTo: 3 over: 5];
        NSMutableArray *fracArray = [[NSMutableArray alloc] init];
        [fracArray addObject: cFrac];
        [fracArray addObject: aFrac];
        [fracArray addObject: bFrac];

        NSLog(@"Before sorting:");
        for (Fraction *frac in fracArray) {
            NSLog(@"Fraction #%lu: %@",
                [fracArray indexOfObject: frac] + 1, frac);
        }

        // Sort using the comparison method in the comparison category
        // of Fraction class
        [fracArray sortUsingSelector: @selector(compareFrac:)];

        NSLog(@"After sorting:");
        for (Fraction *frac in fracArray) {
            NSLog(@"Fraction #%lu: %@",
                [fracArray indexOfObject: frac] + 1, frac);
        }
    }

    return 0;
}
