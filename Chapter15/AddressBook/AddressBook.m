// Implementation file for AddressBook
#import "AddressBook.h"

@implementation AddressBook

@synthesize bookName, book;

- (id) initWithName: (NSString*) name
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

- (void) addCard: (AddressCard*) theCard
{
    [book addObject: theCard];
}

- (void) removeCard: (AddressCard*) theCard
{
    [book removeObject: theCard];
}

- (AddressCard*) lookup: (NSString*) theName
{
    for (AddressCard* nextCard in book) {
        if ([nextCard.name caseInsensitiveCompare: theName] == NSOrderedSame)
            return nextCard;
    }

    return nil;
}

- (NSUInteger) entries
{
    return [book count];
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
