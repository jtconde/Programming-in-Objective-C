// Uses the "Sieve of Erathosthenes" algorithm to find prime number
// Chapter 13 exercise 3
#import <Foundation/Foundation.h>
#define N 150

int main()
{
    @autoreleasepool {
        unsigned int P[N + 1];
        int i, j;

        printf("Prime numbers up to %i: \n", N);
        for (i = 2; i < N; ++i) {
            P[i] = 1;
        }

        for (i = 2; i < N; ++i) {
            if (P[i] == 1) {
                for (j = i; i * j < N; ++j) {
                    P[i * j] = 0;
                }
            }
        }

        for (i = 2; i < N; ++i) {
            if (P[i] == 1)
                printf("%i\n", i);
        }
    }

    return 0;
}
