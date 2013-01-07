// Chapter 13 exercise 10
#import <Foundation/Foundation.h>

void (^exchange) (int* pint1, int* pint2) =
            ^(int* pint1, int* pint2) {
                int temp;

                temp = *pint1;
                *pint1 = *pint2;
                *pint2 = temp;

            };

int main()
{
    @autoreleasepool {
        // I refuse to use the author's asine, ugly and completely
        // hard to read i1 variable name
        // seriously who does that?!
        // just by changing it to a and b makes it so much
        // easier to understand!
        int a = -5, b = 66, *p1 = &a, *p2 = &b;

        NSLog(@"a = %i, b = %i", a, b);
        exchange(p1, p2);
        NSLog(@"a = %i, b = %i", a, b);
    }
}

/*
block_exchange output:

2012-09-03 19:53:59.177 run[95471:707] a = -5, b = 66
2012-09-03 19:53:59.180 run[95471:707] a = 66, b = -5

*/
