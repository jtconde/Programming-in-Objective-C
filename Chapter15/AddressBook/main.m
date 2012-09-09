// Tests the AddressCard Class
// Chapter 15 exercises 2, 3, 4, 5 and 6.
#import "AddressBook.h"

int main()
{
    @autoreleasepool {
        NSString *aFName = @"Lethbridge";
        NSString *aLast = @"Stewart";
        NSString *aEmail = @"the.brigadier@unithq.com";
        NSString *aState = @"Greater London";
        NSString *aCity = @"London";
        NSString *aCountry = @"England";
        NSString *aZip = @"01895";
        NSString *aPhone = @"01189998819991197253";

        AddressCard *card1 = [[AddressCard alloc] init];

        // Set up a new address book
        AddressBook *myBook = [[AddressBook alloc]
            initWithName: @"Sarah Jane Smith's Address Book"];

        // Set up four address cards
        [card1 setFName: aFName andLName: aLast andEmail: aEmail andState: aState
            andCity: aCity andZip: aZip andCountry: aCountry andPhone: aPhone];

        // Add cards to AddressBook
        [myBook addCard: card1];
        [card1 print];
        [myBook list];
    }
    return 0;
}
