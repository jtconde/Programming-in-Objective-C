// Interface file for the Square class.
// Chapter 11 exercise 5
#import <Foundation/Foundation.h>

@interface Square : NSObject

- (Square*) initWithSide: (int) s;
- (void) setSide: (int) a;
- (int) side;
- (int) area;
- (int) perimeter;

@end
