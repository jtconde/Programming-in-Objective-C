// read_plist.m
// Reads and writes contents of the dictionary located at http://bit.ly/aycNwd
// This dictionary contains a list of US cities and their capitals.
#import <Foundation/Foundation.h>

int main()
{
    @autoreleasepool {
        NSURL *plistURL = [NSURL URLWithString:@"http://bit.ly/aycNwd"];
        NSDictionary *dict =[NSDictionary dictionaryWithContentsOfURL:plistURL];
        NSArray *sortedKeys;

        if (dict == nil) {
            NSLog(@"URL cannot be read.");
            return 1;
        }

        sortedKeys = [[dict allKeys] sortedArrayUsingSelector:
                                            @selector(compare:)];
        for (NSString *aKey in sortedKeys) {
            NSLog(@"%@: %@", aKey, [dict objectForKey:aKey]);
        }
    }

    return 0;
}
