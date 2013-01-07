// TempFiles.h - A NSString category.
// Adds temporaryFileName method that returns a unique temporary file name
#import <Foundation/Foundation.h>

@interface NSString (TempFiles)

+ (NSString *)temporaryFileName;

@end
