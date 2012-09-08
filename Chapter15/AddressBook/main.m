// Tests the AddressCard Class
// Chapter 15 exercises 2, 3, 4, 5 and 6.
#import "AddressBook.h"

int main()
{
    @autoreleasepool {
        NSString *aName = @"The Doctor";
        NSString *aEmail = @"the.doctor@thetardis.com";
        NSString *bName = @"Lethbridge Stewart";
        NSString *bEmail = @"the.brigadier@unithq.com";
        NSString *cName = @"Jack Harkness";
        NSString *cEmail = @"captain_jack@torchwood.com";
        NSString *dName = @"John Benton";
        NSString *dEmail = @"sergeant_benton@unithq.com";
        NSString *eName = @"Jackelin Hill";
        NSString *eEmail = @"jackelin.hill@gmail.com";
        NSMutableArray *lookupResults = [[NSMutableArray alloc] init];

        AddressCard *card1 = [[AddressCard alloc] init];
        AddressCard *card2 = [[AddressCard alloc] init];
        AddressCard *card3 = [[AddressCard alloc] init];
        AddressCard *card4 = [[AddressCard alloc] init];
        AddressCard *card5 = [[AddressCard alloc] init];

        // Set up a new address book
        AddressBook *myBook = [[AddressBook alloc]
            initWithName: @"Sarah Jane Smith's Address Book"];

        // Set up four address cards
        [card1 setName: aName andEmail: aEmail];
        [card2 setName: bName andEmail: bEmail];
        [card3 setName: cName andEmail: cEmail];
        [card4 setName: dName andEmail: dEmail];
        [card5 setName: eName andEmail: eEmail];

        // Add cards to AddressBook
        [myBook addCard: card1];
        [myBook addCard: card2];
        [myBook addCard: card3];
        [myBook addCard: card4];
        [myBook addCard: card5];

        // Look up a person by name -- demonstrates multiple matches
        NSString *stringLookup = @"jack";
        NSLog(@"Lookup: %@", stringLookup);
        lookupResults = [myBook lookup: stringLookup];
        // Print matching address cards by fast enumerating through the array
        if (lookupResults != nil) {
            for (AddressCard *next in lookupResults) {
                [next print];
            }
        }
        else
            NSLog(@"Not found");

        NSLog(@" ");
        NSLog(@"AddressBook entries before sorting by name:");
        [myBook list];
        NSLog(@" ");
        NSLog(@"AddressBook entries after sorting by name:");
        [myBook sort];
        [myBook list];
    }
    return 0;
}
