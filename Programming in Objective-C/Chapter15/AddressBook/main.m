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
        NSMutableArray *lookupResults = [[NSMutableArray alloc] init];

        NSString *bFName = @"Jack";
        NSString *bLast = @"Harkness";
        NSString *bEmail = @"captain_jack@torchwood.com";
        NSString *bState = @"Greater London";
        NSString *bCity = @"London";
        NSString *bCountry = @"England";
        NSString *bZip = @"01894";
        NSString *bPhone = @"201847192";

        AddressCard *card1 = [[AddressCard alloc] init];
        AddressCard *card2 = [[AddressCard alloc] init];

        // Set up a new address book
        AddressBook *myBook = [[AddressBook alloc]
            initWithName: @"Sarah Jane Smith's Address Book"];

        // Set up four address cards
        [card1 setFName: aFName andLName: aLast andEmail: aEmail andState: aState
            andCity: aCity andZip: aZip andCountry: aCountry andPhone: aPhone];
        [card2 setFName: bFName andLName: bLast andEmail: bEmail andState: bState
            andCity: bCity andZip: bZip andCountry: bCountry andPhone: bPhone];

        // Add cards to AddressBook
        [myBook addCard: card1];
        [myBook addCard: card2];

        // Look up any field
        NSString *lookupString = @"engl";
        NSLog(@"Lookup: %@", lookupString);
        lookupResults = [myBook lookup: lookupString];
        if ([lookupResults count] == 0) {
            NSLog(@"Not found");
        }
        else {
            for (AddressCard *matchedCard in lookupResults)
                [matchedCard print];
        }

        NSLog(@" ");
        NSLog(@"Before removal: ");
        [myBook list];
        NSString *removeStr = @"jack";
        if ([myBook removeName: @"jack"] == YES) {
            NSLog(@" ");
            NSLog(@"Removed %@:", removeStr);
            [myBook list];
        }
        else
            NSLog(@"Could not remove %@", removeStr);
    }
    return 0;
}
