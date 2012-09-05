// Interface file for AddressCard
#import <Foundation/Foundation.h>

@interface AddressCard : NSObject

@property (copy, nonatomic) NSString *name, *email;

/**
 * Set both name and email
 */
- (void) setName: (NSString*) theName andEmail: (NSString*) theEmail;

/**
 * Tests if two AddressCards are the same
 * @param theCard the address card to compare
 * @return true if they are equal, false if they are not.
 */
- (BOOL) isEqual: (AddressCard*) theCard;

/**
 * Prints the AddressCard in a fancy format
 */
- (void) print;
@end
