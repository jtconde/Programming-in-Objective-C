// Defines the GraphicObject class.
// Chapter 8 exercise 5
# import <Foundation/Foundation.h>

@interface GraphicObject: NSObject
{
    // 32-bit color
    int fillColor;

    // Is the object filled?
    BOOL filled;

    // 32-bit line color
    int lineColor;
}
@end
