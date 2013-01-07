// Square class implementations
#import "Square.h"

@implementation Square
@synthesize sides;

- (id) initWithSide: (int) side
{
    self = [super init];
    if (self) {
        [self setSides: side];
    }

    return self;
}

- (int) area
{
    return sides * sides;
}

- (int) perimeter
{
    return 2 * (sides + sides);
}

@end
