// Function definition for Rectangle Class.
// Chapter 8 exercise 2
#import <Foundation/Foundation.h>

@class XYPoint;
@interface Rectangle: NSObject

@property double width, height;

- (XYPoint*) origin;
- (void) setOrigin: (XYPoint*) pt;
- (void) setWidth: (double) w andHeight: (double) h;
- (double) area;
- (double) perimeter;
@end
