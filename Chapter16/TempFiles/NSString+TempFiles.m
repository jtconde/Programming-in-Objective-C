// Implementation file for TempFiles category of NSString class
#import "NSString+TempFiles.h"

@implementation NSString (TempFiles)

+ (NSString *)temporaryFileName
{
    return [[NSProcessInfo processInfo] globallyUniqueString];
}

@end
