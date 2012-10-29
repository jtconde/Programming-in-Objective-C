// Implements Objective-C version of the dirname UNIX command line tool
// @author Akshay
// Chapter 16 exercise 3
#import <Foundation/Foundation.h>

int main()
{
    @autoreleasepool {
        NSString *fileName, *dirName;
        NSProcessInfo *proc = [NSProcessInfo processInfo];
        NSArray *args = [proc arguments];

        if ([args count] != 2) {
            NSLog(@"usage: dirname path");
            return 1;
        }

        fileName = [args objectAtIndex:1];
        dirName = [fileName stringByDeletingLastPathComponent];

        NSLog(@"%@", dirName);
    }

    return 0;
}
