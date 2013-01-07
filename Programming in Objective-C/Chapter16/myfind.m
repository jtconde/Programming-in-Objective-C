/* myfind command line tool
 * Searches for a file in a specified directory
 * Takes two arguments. First one specifies the directory to begin the search
 * and the second one is a filename to locate.
 * @author Akshay
 */
#import <Foundation/Foundation.h>

int main()
{
    @autoreleasepool {
        NSFileManager *fm = [NSFileManager defaultManager];
        NSString *directory, *fileToSearch, *path;
        BOOL isDir, didFind = NO;
        NSProcessInfo *proc = [NSProcessInfo processInfo];
        NSArray *args = [proc arguments];
        NSDirectoryEnumerator *dirEnum;

        if ([args count] < 3) {
            NSLog(@"usage: %@ directory fileToSearch", [proc processName]);
            return 1;
        }

        directory = [args objectAtIndex:1];
        fileToSearch = [args objectAtIndex:2];

        if ([fm fileExistsAtPath:directory isDirectory:&isDir] == NO) {
            NSLog(@"%@ does not exist!", directory);
            NSLog(@"usage: %@ directory fileToSearch", [proc processName]);
            return 2;
        }

        if (isDir == NO) {
            NSLog(@"%@ is not a directory!", directory);
            NSLog(@"usage: %@ directory fileToSearch", [proc processName]);
            return 3;
        }

        NSLog(@"Searching...");
        dirEnum = [fm enumeratorAtPath:directory];

        while ((path = [dirEnum nextObject]) != nil) {
            if ([path rangeOfString:fileToSearch].location != NSNotFound) {
                NSLog(@"%@", [directory stringByAppendingString:fileToSearch]);
                didFind = YES;
            }
        }
        if (!didFind)
            NSLog(@"%@ not found anywhere under %@", fileToSearch, directory);
    }

    return 0;
}
