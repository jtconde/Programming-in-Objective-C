#import <Foundation/Foundation.h>

int main(int argc, char *argv[])
{
    @autoreleasepool {
        int p, d;
        BOOL isPrime;
        NSMutableArray *primes = [[NSMutableArray alloc] init];

        for (p = 2; p <= 50; ++p) {
            isPrime = YES;
            for (d = 2; d < p; ++d) {
                if (p % d == 0) {
                    isPrime = NO;
                }
            }
            if (isPrime == YES) {
                NSNumber *primeNum = [NSNumber numberWithInteger:p];
                [primes addObject:primeNum];
            }
        }

        if ([primes writeToFile:@"primes.pl" atomically:YES] == NO) {
            NSLog(@"Save to file failed!");
        }
        else {
            NSLog(@"Wrote primes to file primes.pl.");
        }
    }

    return 0;
}
