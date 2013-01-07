// Create an NSDictionary object and fill it with some key/object pairs.
// Then make both mutable and immutable copies.
#import <Foundation/Foundation.h>

int main()
{
    @autoreleasepool {
        NSDictionary *choices = [NSDictionary dictionaryWithObjectsAndKeys:
                                    @"A", @"3", @"B", @"4", @"C", @"6", @"D",
                                    @"10", nil];
        NSLog(@"Before performing a copy: %@", choices);

        // Mutable copy
        NSMutableDictionary *mChoices = [choices mutableCopy];
        // Immutable copy
        NSDictionary *iChoices = [choices copy];

        NSArray *option = [iChoices objectForKey:@"4"];
        option = nil;
        iChoices = nil;

        // See what has changed after setting option to nil:
        NSLog(@"Original dictionary: %@", choices);
        NSLog(@"Mutable Copy: %@", mChoices);
        NSLog(@"Immutable Copy: %@", iChoices);
    }

    return 0;
}
