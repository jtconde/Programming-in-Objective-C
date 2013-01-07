// Interface file for the ElapsedDays category of NSDate class.
// Chapter 15 exercise 1
#import <Foundation/Foundation.h>

@interface NSDate (ElapsedDays)

/**
 * Calculates the elapsed days between the reciever and the param
 * @param theDate the date to start the count from
 * @return the number of days elapsed between theDate and the reciever
 * Also returns 0 if theDate occurs in the future.
 */
- (unsigned long) elapsedDays: (NSDate *) theDate;

@end
