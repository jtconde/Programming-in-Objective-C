// Function implementations for Rectangle Class.
// Chapter 8 exercises 7 and 8
// -- modified for Chapter 18 to conform to NSCopying protocol
#import "Rectangle.h"

@implementation Rectangle
{
    XYPoint* origin;
}

@synthesize width, height;

- (id)copyWithZone:(NSZone *)zone
{
    id newRect = [[[self class] allocWithZone:zone] init];
    [newRect setWidth:width andHeight:height];
    [newRect setOrigin:[origin copy]];

    return newRect;
}

- (void) setWidth: (double) w andHeight: (double) h
{
    width = w;
    height = h;
}

- (void) setOrigin: (XYPoint*) pt
{
    origin = pt;
}

- (XYPoint*) origin
{
    return origin;
}

- (double) area
{
    return width * height;
}

- (double) perimeter
{
    return 2 * (width + height);
}

- (Rectangle*) intersect: (Rectangle*) rect
{
    BOOL doesIntersect;
    Rectangle* result = [[Rectangle alloc] init];
    XYPoint* p = [[XYPoint alloc] init];


    // Check if the rectangles intersect
    doesIntersect = YES;

    if (self.origin.y > rect.origin.y + rect.height ||
            self.origin.y + height < rect.origin.y) {
        doesIntersect = NO;
    }

    if (self.origin.x + width < rect.origin.x ||
            rect.origin.x + width < origin.x) {
        doesIntersect = NO;
    }

    if (doesIntersect) {
        [p setX: rect.width andY: height];
        result.origin = p;
        [result setWidth: (self.width - rect.origin.y)
            andHeight: (self.origin.y - rect.origin.y - rect.height)];

        // Correct the difference if one rectangle was bigger than the other
        if (result.width < 0)
            result.width *= -1;
        if (result.height < 0)
            result.height *= -1;

        return result;
    }
    else {
        [p setX: 0 andY: 0];
        result.origin = p;
        [result setWidth: 0 andHeight: 0];

        return result;
    }
}

- (void) draw
{
    int dashesCount = width;
    int verticalCount = height;
    int i = dashesCount;

    for (; i > 0; i--) {
        printf("-");
    }
    printf("\n");
    while (verticalCount > 0) {
        printf("|");
        i = dashesCount;
        while (i > 1) {
            printf(" ");
            i--;
        }
        printf("|\n");
        verticalCount--;
    }
    for (; dashesCount > 0; dashesCount--) {
        printf("-");
    }
}

@end
