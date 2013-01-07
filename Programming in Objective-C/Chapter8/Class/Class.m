// Definition and implementation for ClassA, ClassB and ClassC
// Chapter 8 exercise 1

#import <Foundation/Foundation.h>

// ClassA
@interface ClassA: NSObject
{
    int x;
}

- (void) initVar;
@end

@implementation ClassA

- (void) initVar
{
    x = 100;
}

@end

// ClassB
@interface ClassB: ClassA

- (void) printVar;

@end

@implementation ClassB

- (void) printVar
{
    NSLog(@"x = %i", x);
}

@end

// ClassC
@interface ClassC: ClassB
- (void) initVar;
@end

@implementation ClassC

- (void) initVar
{
    x = 300;
}

@end

// Test the classes out
int main()
{
    @autoreleasepool {
        ClassB* b = [[ClassB alloc] init];
        ClassC* c = [[ClassC alloc] init];

        [b initVar];
        [c initVar];

        NSLog(@"Class B:");
        [b printVar];
        NSLog(@"Class C:");
        [c printVar];
    }

    return 0;
}
