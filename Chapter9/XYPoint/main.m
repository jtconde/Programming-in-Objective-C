// Tests Fraction, Complex and XYPoint classes
// Chapter 9 exercises 3, 4 and 5.

#import "Fraction.h"
#import "Complex.h"
#import "XYPoint.h"

int main()
{
    @autoreleasepool {
        Fraction* f1 = [[Fraction alloc] init];
        Fraction* f2 = [[Fraction alloc] init];
        Complex* c1 = [[Complex alloc] init];
        Complex* c2 = [[Complex alloc] init];
        XYPoint* point = [[XYPoint alloc] init];
        [point setX: 9 andY: 10];
        id dataValue = point;
        id result, dataValue1, dataValue2;

        // Exercise 4: using id datatype with Complex and Fraction objects
        dataValue1 = c1;
        dataValue2 = c2;
        [dataValue1 setReal: 18.0 andImaginary: 2.5];
        [dataValue2 setReal: -5.0 andImaginary: 3.2];

        [c1 print]; NSLog(@"        +"); [c2 print];
        NSLog(@"--------");
        result = [dataValue1 add: dataValue2];
        [result print];
        NSLog(@"\n");

        dataValue1 = f1;
        dataValue2 = f2;
        [dataValue1 setTo: 1 over: 10];
        [dataValue2 setTo: 2 over: 15];

        [f1 print]; NSLog(@"   +"); [f2 print];
        NSLog(@"----");
        result = [f1 add: f2];
        [result print];

        NSLog(@"\n");
        NSLog(@"XYPoint with id datatype:");
        [dataValue print];

        // Exercise 5 questions about classes:
        NSLog(@"\n\n");
        Fraction* fraction = [[Fraction alloc] init];
        Complex* complex = [[Complex alloc] init];
        id number = [[Complex alloc] init];

        if (! [fraction isMemberOfClass: [Complex class]]) {
            NSLog(@"fraction is not a member of Complex class");
        }
        if (! [complex isMemberOfClass: [NSObject class]]) {
            NSLog(@"complex is not a member of NSObject class");
        }
        if ([complex isKindOfClass: [NSObject class]]) {
            NSLog(@"complex is a kind of NSObject class");
        }
        if ([fraction isKindOfClass: [Fraction class]]) {
            NSLog(@"fraction is a kind of Fraction class");
        }
        if ([fraction respondsToSelector: @selector (print)]) {
            NSLog(@"fraction responds to print");
        }
        if ([complex respondsToSelector: @selector (print)]) {
            NSLog(@"complex responds to print");
        }
        if ([Fraction instancesRespondToSelector: @selector (print)]) {
            NSLog(@"Fraction responds to print");
        }
        if ([number respondsToSelector: @selector (print)]) {
            NSLog(@"number responds to print");
        }
        if ([number isKindOfClass: [Complex class]]) {
            NSLog(@"number is a kind of complex class");
        }
        if ([[number class] respondsToSelector: @selector (alloc)]) {
            NSLog(@"number responds to alloc");
        }
    }

    return 0;
}
