// Tests the TempFiles category of the NSString class
#import <Foundation/Foundation.h>
#import "NSString+TempFiles.h"
#define MAXCHARS 60

int main()
{
    @autoreleasepool {
        NSString *tempdir, *tempFileName, *shortenedDir;

        tempdir = NSTemporaryDirectory();
        NSLog(@"Temporary Directory is: %@", tempdir);
        tempFileName = [NSString temporaryFileName];
        shortenedDir = [[tempdir stringByAppendingString:tempFileName]
                                        substringToIndex:MAXCHARS];

        NSLog(@"Temporary file stored as: %@", shortenedDir);
    }

    return 0;
}
