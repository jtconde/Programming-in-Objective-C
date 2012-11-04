// Tests the TempFiles category of the NSString class
#import <Foundation/Foundation.h>
#import "NSString+TempFiles.h"

int main()
{
    @autoreleasepool {
        NSString *tempdir, *tempFileName, *shortenedDir;

        tempdir = NSTemporaryDirectory();
        NSLog(@"Temporary Directory is: %@", tempdir);
        tempFileName = [NSString temporaryFileName];
        shortenedDir = [[tempdir stringByAppendingString:tempFileName]
                                        substringToIndex:62];

        NSLog(@"Temporary file stored as: %@", shortenedDir);
    }

    return 0;
}
