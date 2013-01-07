// Chapter 15 exercise 7
#import "Fraction.h"

int main()
{
    @autoreleasepool {
        Fraction *aFrac = [[Fraction alloc] init];
        Fraction *bFrac = [[Fraction alloc] init];
        Fraction *cFrac = [[Fraction alloc] init];
        [aFrac setTo: 4 over: 13];
        [bFrac setTo: 8 over: 15];
        [cFrac setTo: 3 over: 5];
        NSArray *fracArray = [NSArray arrayWithObjects: aFrac, bFrac, cFrac, nil];

        // Displays the values of the fractions with a simple for loop
        NSLog(@"Using a regular for loop: ");
        int i = 0;
        for (i = 0; i < [fracArray count]; i++) {
            NSLog(@"Fraction #%i: %@", i + 1, [fracArray objectAtIndex: i]);
        }
        NSLog(@" ");

        // Displays the values of the fractions with fast enumeration
        NSLog(@"Using fast enumeration: ");
        for (Fraction *frac in fracArray) {
            NSLog(@"Fraction #%lu: %@", [fracArray indexOfObject: frac] + 1, frac);
        }
        NSLog(@" ");

        // Using NSLog to display fractions
        NSLog(@"Using %%@ in NSLog:");
        NSLog(@"Fraction #1: %@", aFrac);
        NSLog(@"Fraction #2: %@", bFrac);
        NSLog(@"Fraction #3: %@", cFrac);
    }

    return 0;
}
