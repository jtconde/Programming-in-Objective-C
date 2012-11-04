// Displays all the information returned by each of NSProcessInfo's getter
// methods
#import <Foundation/Foundation.h>

int main()
{
    @autoreleasepool {
        NSProcessInfo *proc = [NSProcessInfo processInfo];
        // Just output all the information
        NSLog(@"Processor Count: %lu", [proc activeProcessorCount]);
        NSLog(@"Argument List: %@", [proc arguments]);
        NSLog(@"Process Global ID: %@", [proc globallyUniqueString]);
        NSLog(@"Host Name: %@", [proc hostName]);
        NSLog(@"OS: %lu", [proc operatingSystem]);
        NSLog(@"OS Name: %@", [proc operatingSystemName]);
        NSLog(@"OS Version: %@", [proc operatingSystemVersionString]);
        NSLog(@"Physical Memory: %llu bytes", [proc physicalMemory]);
        NSLog(@"Processor Count: %lu", [proc processorCount]);
        NSLog(@"Process ID: %d", [proc processIdentifier]);
        NSLog(@"Process Name: %@", [proc processName]);
        NSLog(@"Uptime: %g seconds", [proc systemUptime]);
        NSLog(@"Environment Variables: %@", [proc environment]);
    }

    return 0;
}
