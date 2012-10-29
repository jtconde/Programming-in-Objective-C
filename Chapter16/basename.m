// Implements Objective-C version of the basename UNIX command line tool
// @author Akshay
// Chapter 16 exercise 3
#import <Foundation/Foundation.h>

int main()
{
    @autoreleasepool {
        NSString *fileName, *baseName;
        NSProcessInfo *proc = [NSProcessInfo processInfo];
        NSArray *args = [proc arguments];

        if ([args count] != 2) {
            NSLog(@"usage: basename path");
            return 1;
        }

        fileName = [args objectAtIndex:1];
        baseName = [fileName lastPathComponent];

        NSLog(@"%@", baseName);
    }

    return 0;
}
