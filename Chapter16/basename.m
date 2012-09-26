// Implements Objective-C version of the basename UNIX command line tool
// @author Akshay
// Chapter 16 exercise 3
#import <Foundation/Foundation.h>

int main()
{
    @autoreleasepool {
        NSFileManager *fm = [NSFileManager defaultManager];
        NSString *fileName;
        NSProcessInfo *proc = [NSProcessInfo processInfo];
        NSArray *args = [proc arguments];

        fileName = [args objectAtIndex:1];
    }

    return 0;
}
