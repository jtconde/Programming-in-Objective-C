// Implementation file for AddressBook
// Chapter 15 exercises 3, 4, 5 and 6.
#import "AddressBook.h"

@implementation AddressBook

@synthesize bookName, book;

- (id) initWithName: (NSString *) name
{
    self = [super init];

    if (self) {
        bookName = [NSString stringWithString: name];
        book = [NSMutableArray array];
    }

    return self;
}

/**
 * Overrides the default init and sets the name to "NoName".
 */
 - (id) init
 {
    return [self initWithName: @"NoName"];
}

- (void) addCard: (AddressCard *) theCard
{
    [book addObject: theCard];
}

- (void) removeCard: (AddressCard *) theCard
{
    [book removeObject: theCard];
}

- (NSArray *) lookup: (NSString *) theName
{
    NSIndexSet *result = [book indexesOfObjectsPassingTest:
        ^ (id obj, NSUInteger idx, BOOL *stop) {
            if ([[obj name] caseInsensitiveCompare: theName] == NSOrderedSame)
                return YES;
            else
                return NO;
        }];
    return result;
}

- (NSUInteger) entries
{
    return [book count];
}

- (void) sort
{
    [book sortUsingComparator:
        ^(id obj1, id obj2) {
            return [[obj1 name] compare: [obj2 name]];
        }];
}

- (void) list
{
    NSLog(@" ");
    NSLog(@" ");
    NSLog(@"======== Contents of: %@ ========", bookName);

    for (AddressCard* theCard in book) {
        NSLog(@"%-20s   %-32s", [theCard.name UTF8String],
            [theCard.email UTF8String]);
    }

    NSLog(@"==============================================================");

}
@end
