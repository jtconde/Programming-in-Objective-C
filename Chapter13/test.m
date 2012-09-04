// Tests out the NSLog print statements
// Chapter 13 exercise 9
#import <Foundation/Foundation.h>

int main()
{
    @autoreleasepool {
        NSLog(@"This is a test"); // works
        NSLog("This is a test"); // does not work

        NSLog(@"%s", "This is a test"); // works
        NSLog(@"%s", @"This is a test"); // does not work

        NSLog("%s", "This is a test"); // does not work
        NSLog("%s", @"This is a test"); // does not work

        NSLog(@"%@", @"This is a test"); // works
        NSLog(@"%@", "This is a test"); // does not work
    }
}
