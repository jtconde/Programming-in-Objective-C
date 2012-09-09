// Implementation file for AddressBook
// Chapter 15 exercises 2, 3, 4, 5 and 6.
#import "AddressBook.h"

@implementation AddressBook

@synthesize bookName;
@synthesize book;

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

- (NSMutableArray *) lookup: (NSString *) theName
{
    NSMutableArray *result = [[NSMutableArray alloc] init];

    NSIndexSet *matchingSet = [book indexesOfObjectsPassingTest:
        ^(id obj, NSUInteger idx, BOOL *stop) {
            NSRange nameRange = [[obj name] rangeOfString:
                theName options: NSCaseInsensitiveSearch];
            NSRange emailRange = [[obj email] rangeOfString:
                theName options: NSCaseInsensitiveSearch];

            if (nameRange.location != NSNotFound ||
                emailRange.location != NSNotFound)
                return YES;
            else
                return NO;
        }];

    [result addObjectsFromArray: [book objectsAtIndexes: matchingSet]];

    if ([result count] == 0)
        return nil;
    else
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
    NSLog(@"======== Contents of: %@ =======", bookName);

    for (AddressCard* theCard in book) {
        NSMutableString *fullName = [[NSMutableString alloc] init];
        [fullName appendString: theCard.fname];
        [fullName appendString: @" "];
        [fullName appendString: theCard.lname];

        NSMutableString *address = [[NSMutableString alloc] init];
        [address appendString: theCard.city];
        [address appendString: @", "];
        [address appendString: theCard.state];
        [address appendString: @", "];
        [address appendString: theCard.zip];
        NSLog(@"*************************************");
        NSLog(@"*                                   *");
        NSLog(@"*  %-32s *", [fullName UTF8String]);
        NSLog(@"*  %-32s *", [address UTF8String]);
        NSLog(@"*  %-32s *", [theCard.country UTF8String]);
        NSLog(@"*  %-32s *", [theCard.phone UTF8String]);
        NSLog(@"*  %-32s *", [theCard.email UTF8String]);
        NSLog(@"*                                   *");
        NSLog(@"*************************************");
        NSLog(@" ");
    }

    NSLog(@"=============================================================");

}
@end
