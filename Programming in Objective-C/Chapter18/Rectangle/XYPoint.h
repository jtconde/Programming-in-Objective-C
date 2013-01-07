// Defines the XYPoint Class
// -- modified for Chapter 18 to conform to NSCopying protocol
#import <Foundation/Foundation.h>

@interface XYPoint: NSObject <NSCopying>

@property double x, y;

- (void) setX: (double) xVal andY: (double) yVal;
@end
