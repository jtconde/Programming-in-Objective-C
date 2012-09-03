// definition for Rectangle Class.
// Chapter 10 exercise 1 and 2
#import <Foundation/Foundation.h>
#import "XYPoint.h"

@interface Rectangle: NSObject

@property double width, height;

- (id) initWithWidth: (int) w andHeight: (int) h;
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
