// Defines the XYPoint class
// Chapter 9 exercises 3, 4, and 5
#import <Foundation/Foundation.h>

@interface XYPoint : NSObject

@property int x, y;

- (void) setX: (int) xVal andY: (int) yVal;
- (void) print;

@end
