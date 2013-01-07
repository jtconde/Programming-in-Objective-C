// Complex.m -- defines a Complex class

#import <Foundation/Foundation.h>

//---- interface section ----//
@interface Complex: NSObject
- (void) setReal: (double) a;
- (void) setImaginary: (double) b;
- (void) print;     // displays in the format: a + bi
- (double) real;
- (double) imaginary;

@end

//---- implementation ----//
@implementation Complex
{
    double real;
    double imaginary;
}

- (void) setReal: (double) a
{
    real = a;
}

- (void) setImaginary: (double) b
{
    imaginary = b;
}

- (void) print
{
    NSLog(@"Complex number: %g + %gi", real, imaginary);
}

- (double) real
{
    return real;
}

- (double) imaginary
{
    return imaginary;
}

@end

//---- program section ----//
int main(int argc, char const *argv[])
{
    @autoreleasepool {
        Complex* comp;
        comp = [[Complex alloc] init];

        [comp setReal: 45];
        [comp setImaginary: 80];

        NSLog (@"The real part: %g", [comp real]);
        NSLog (@"The imaginary part: %g", [comp imaginary]);
        [comp print];
    }

    return 0;
}