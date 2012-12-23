// Create an NSDictionary object and fill it with some key/object pairs.
// Then make both mutable and immutable copies.

#import <Foundation/Foundation.h>
int main()
{
    @autoreleasepool {
        NSDictionary *choices = [NSDictionary dictionaryWithObjectsAndKeys:
                                    @"A", 3, @"B", 4, @"C", 6, @"D", 10, nil];

        // Mutable copy
        NSMutableDictionary *mChoices = [choices mutableCopy];
        // Immutable copy
        NSDictionary *iChoices = choices;


    }

    return 0;
}
