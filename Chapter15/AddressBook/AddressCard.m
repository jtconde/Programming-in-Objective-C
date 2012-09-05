// Implementation file for AddressCard.
#import "AddressCard.h"

@implementation AddressCard

@synthesize name, email;

- (void) setName: (NSString*) theName andEmail: (NSString*) theEmail
{
    [self setName: theName];
    [self setEmail: theEmail];
}

- (BOOL) isEqual: (AddressCard*) theCard
{
    if ([self.name isEqualToString: theCard.name] == YES &&
        [self.email isEqualToString: theCard.email] == YES)
        return YES;
    else
        return NO;

}

- (void) print
{
    NSLog(@"====================================");
    NSLog(@"|                                  |");
    NSLog(@"|  %-31s |", [name UTF8String]);
    NSLog(@"|  %-31s |", [email UTF8String]);
    NSLog(@"|                                  |");
    NSLog(@"|                                  |");
    NSLog(@"|                                  |");
    NSLog(@"|        O       <^>       O       |");
    NSLog(@"====================================");
}
@end
