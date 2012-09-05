// Interface file for AddressCard
// Chapter 15 exercises 3, 4, 5 and 6.
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
 * Compares the two names from the specified address cards.
 * @param element the element to compare with
 * @return NSOrderedAscending, NSOrderedSame or NSOrderedDecending depending
 * on the comparison.
 */
- (NSComparisonResult) compareNames: (id) element;

/**
 * Prints the AddressCard in a fancy format.
 */
- (void) print;
@end
