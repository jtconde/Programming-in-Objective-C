// Tests the AddressCard Class
// Chapter 15 exercises 3, 4, 5 and 6.
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

        AddressCard *card1 = [[AddressCard alloc] init];
        AddressCard *card2 = [[AddressCard alloc] init];
        AddressCard *card3 = [[AddressCard alloc] init];
        AddressCard *card4 = [[AddressCard alloc] init];

        // Set up a new address book
        AddressBook *myBook = [[AddressBook alloc]
            initWithName: @"Sarah Jane Smith's Address Book"];
        AddressCard *myCard;

        // Set up four address cards
        [card1 setName: aName andEmail: aEmail];
        [card2 setName: bName andEmail: bEmail];
        [card3 setName: cName andEmail: cEmail];
        [card4 setName: dName andEmail: dEmail];

        // Add cards to AddressBook
        [myBook addCard: card1];
        [myBook addCard: card2];
        [myBook addCard: card3];
        [myBook addCard: card4];

        // Look up a person by name
        NSLog(@"Lookup: Jark Harkness");
        myCard = [myBook lookup: @"jack harkness"];
        if (myCard != nil)
            [myCard print];
        else
            NSLog(@"Not found");

        NSLog(@" ");
        NSLog(@"AddressBook entries before sorting:");
        [myBook list];
        NSLog(@" ");
        NSLog(@"AddressBook entries after sorting:");
        [myBook sort];
        [myBook list];
    }
    return 0;
}
