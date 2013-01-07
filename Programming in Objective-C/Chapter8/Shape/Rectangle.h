// Function definition for Rectangle Class.
// Chapter 8 exercises 2, 4 and 6.
#import <Foundation/Foundation.h>
#import "XYPoint.h"

@interface Rectangle: NSObject

@property double width, height;

- (XYPoint*) origin;
- (void) setOrigin: (XYPoint*) pt;
- (void) setWidth: (double) w andHeight: (double) h;
- (double) area;
- (double) perimeter;
- (void) translate: (XYPoint*) pt;

// Determines if the rectangle encloses the specified point
- (BOOL) containsPoint: (XYPoint*) aPoint;
@end
