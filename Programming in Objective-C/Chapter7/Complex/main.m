// Tests the Complex class
// compile with:
// clang -fobjc-arc -framework Foundation Complex.m main.m -o ComplexTest
#import "Complex.h"

int main()
{
    @autoreleasepool {
        Complex* comp = [[Complex alloc] init];
        Complex* comp2 = [[Complex alloc] init];
        Complex* sum;

        [comp setReal: 5.3 setImaginary: 7];
        [comp2 setReal: 2.7 setImaginary: 4];

        [comp print];
        NSLog(@"+");
        [comp2 print];
        NSLog(@"=");
        sum = [comp add: comp2];
        [sum print];
    }

    return 0;
}
