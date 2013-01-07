// Function definition for Rectangle Class.
// Chapter 8 exercises 7 and 8
// -- modified for Chapter 18 to conform to NSCopying protocol
#import <Foundation/Foundation.h>
#import "XYPoint.h"

@interface Rectangle: NSObject <NSCopying>

@property double width, height;

- (XYPoint*) origin;
- (void) setOrigin: (XYPoint*) pt;
- (void) setWidth: (double) w andHeight: (double) h;
- (double) area;
- (double) perimeter;

// Returns the rectangle that is created with the
// intersection of the two rectangles
- (Rectangle*) intersect: (Rectangle*) rect;
- (void) draw;
@end
