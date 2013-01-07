// Implements a copy command similar to the UNIX cp command
// Chapter 16 exercise 1
#import <Foundation/Foundation.h>

int main()
{
    @autoreleasepool {
        NSFileManager *fm = [NSFileManager defaultManager];
        NSString *dest;
        BOOL isDir;
        NSProcessInfo *proc = [NSProcessInfo processInfo];
        NSArray *args = [proc arguments];
        NSMutableArray *sourceFiles = [NSMutableArray array];

        if ([args count] < 3) {
            NSLog(@"\nusage: %@ source_file ... target_directory",
                [proc processName]);
            return 1;
        }

        // Collect all the source files
        NSUInteger i = 1; // Skip the first argument -- the program name
        while (i < [args count] - 1) {
            [sourceFiles addObject:[args objectAtIndex:i]];
            ++i;
        }
        // Finally, the last argument is the destination
        dest = [args objectAtIndex:([args count] - 1)];

        for (NSString *aFile in sourceFiles) {
            if ([fm isReadableFileAtPath:aFile] == NO) {
                NSLog(@"Can't read %@", aFile);
                return 2;
            }
        }

        [fm fileExistsAtPath:dest isDirectory:&isDir];

        if (isDir == YES) {
            for (NSString *aFile in sourceFiles) {
                // Must create a new string to hold dest or second argument
                // will be copied to "first_arg/second_arg".
                NSString *newDest;
                newDest = [dest stringByAppendingPathComponent:
                    [aFile lastPathComponent]];
                [fm removeItemAtPath:newDest error:NULL];

                if ([fm copyItemAtPath:aFile toPath:newDest
                    error:NULL] == NO) {
                    NSLog(@"Copy of %@ to %@ failed!", aFile, newDest);
                    return 3;
                }
            }
        }

        for (NSString *aFile in sourceFiles) {
            NSLog(@"Copied %@ to %@!", aFile, dest);
        }
    }

    return 0;
}
