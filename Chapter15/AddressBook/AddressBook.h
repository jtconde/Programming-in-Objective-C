// Interface file for AddressBook
// Chapter 15 exercises 3, 4, 5 and 6.
#import <Foundation/Foundation.h>
#import "AddressCard.h"

@interface AddressBook : NSObject

@property (nonatomic, copy) NSString *bookName;
@property (nonatomic, strong) NSMutableArray *book;

/**
 * Initializes the AddressBook with a name.
 * @param name the name of the AddressBook
 */
- (id) initWithName: (NSString *) name;

/**
 * Adds a AddressCard to the AddressBook
 * @param theCard the AddressCard to add
 */
- (void) addCard: (AddressCard *) theCard;

/**
 * Removes an AddressCard from the AddressBook
 * @param theCard the AddressCard to remove
 */
- (void) removeCard: (AddressCard *) theCard;

/**
 * Counts the number of entries in the AddressBook
 * @return the number of entries in the AddressBook
 */
- (NSUInteger) entries;

/**
 * Lookup address card by name -- assumes an exact match.
 * @param theName the name of the person to search
 * @return If the card exists in the book, returns the card, else returns nil.
 */
- (AddressCard*) lookup: (NSString *) theName;

/**
 * Sorts the address book using a NSComparator block.
 */
- (void) sort;

/**
 * List the entries in the AddressBook
 */
- (void) list;
@end
