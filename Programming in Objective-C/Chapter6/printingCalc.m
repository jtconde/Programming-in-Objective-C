// printingCalc.m -- A simple printing calculator.
// Chapter 6 exercise 4

#import <Foundation/Foundation.h>

//---- interface section ----//
@interface Calculator:NSObject

// accumulator methods
- (void) setAccumulator:(double) value;
- (void) clear;
- (double) accumulator;

// arithmetic methods
- (void) add:(double) value;
- (void) subtract:(double) value;
- (void) multiply:(double) value;
- (void) divide:(double) value;
@end

//---- implementation section ----//
@implementation Calculator
{
    double accumulator;
}

- (void) setAccumulator:(double) value
{
    accumulator = value;
}

- (void) clear
{
    accumulator = 0;
}

- (double) accumulator
{
    return accumulator;
}

- (void) add:(double) value
{
    accumulator += value;
}

- (void) subtract:(double) value
{
    accumulator -= value;
}

- (void) multiply:(double) value
{
    accumulator *= value;
}

- (void) divide:(double) value
{
    accumulator /= value;
}

@end

//---- program section ----//
int main()
{
    @autoreleasepool {
        Calculator* calc = [[Calculator alloc] init];
        double number;
        char operator;

        NSLog(@"Begin Calculations");
        scanf("%lf %c", &number, &operator);

        while (operator != 'E') {
            switch (operator) {
                case '+':
                    [calc add:number];
                    NSLog(@"= %.5lf", [calc accumulator]);
                    break;
                case '-':
                    [calc subtract:number];
                    NSLog(@"= %.5lf", [calc accumulator]);
                    break;
                case '*':
                    [calc multiply:number];
                    NSLog(@"= %.5lf", [calc accumulator]);
                    break;
                case '/':
                    if (number == 0)
                        NSLog(@"Error: Cannot divide by 0.");
                    else {
                        [calc divide:number];
                        NSLog(@"= %.5lf", [calc accumulator]);
                    }
                    break;
                case 'S':
                    [calc setAccumulator:number];
                    NSLog(@"= %.5lf", [calc accumulator]);
                    break;
                case 'E':
                    break;
                default:
                    NSLog(@"Error: Unknown Operator. Usage: number operator");
                    break;
            }
            scanf("%lf %c", &number, &operator);
        }
        NSLog(@"= %.5lf", [calc accumulator]);
        NSLog(@"End of Calculations");
    }

    return 0;
}