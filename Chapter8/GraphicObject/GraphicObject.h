// Defines the GraphicObject class.
// Chapter 8 exercise 5
#import <Foundation/Foundation.h>

@interface GraphicObject: NSObject

/**
 * fillColor: 32-bit color
 * lineColor: 32-bit line color
 * filled: is the object filled?
 */
@property int fillColor, lineColor;
@property BOOL filled;

- (void) setfillColor: (int) c1 andLineColor: (int) c2 andFilled: (BOOL) fill;
@end
