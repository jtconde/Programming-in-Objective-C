// Defines the XYPoint class
// Chapter 9 exercise 3

#import <Foundation/Foundation.h>

@interface XYPoint : NSObject

@property int x, y;

- (void) setX: (int) xVal andY: (int) yVal;
- (void) print;

@end