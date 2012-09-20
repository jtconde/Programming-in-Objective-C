// Implements a copy command similar to the UNIX cp command
// Chapter 16 exercise 1
#import <Foundation/NSFileManager.h>
#import <Foundation/NSProcessInfo.h>

int main(int argc, char *argv[])
{
    @autoreleasepool {
        NSFileManager *fm = [NSFileManager defaultManager];
        NSString *source, *dest;
        BOOL isDir;
        NSProcessInfo *proc = [NSProcessInfo processInfo];
        NSArray *args = [proc arguments];

        if ([args count] < 3) {
            NSLog(@"\nusage: %@ source_file ... target_directory",
                [proc processName]);
            return 1;
        }

        source = [args objectAtIndex: 1];
        dest = [args objectAtIndex: 2];

        if ([fm isReadableFileAtPath: source] == NO) {
            NSLog(@"Can't read %@", source);
            return 2;
        }

        [fm fileExistsAtPath: dest isDirectory: &isDir];

        if (isDir == YES) {
            dest = [dest stringByAppendingPathComponent:
            [source lastPathComponent]];
        }

        [fm removeItemAtPath: dest error: NULL];

        if ([fm copyItemAtPath: source toPath: dest error: NULL] == NO) {
            NSLog(@"Copy failed!");
            return 3;
        }

        NSLog(@"Copy of %@ to %@ succeeded!", source, dest);
    }

    return 0;
}
