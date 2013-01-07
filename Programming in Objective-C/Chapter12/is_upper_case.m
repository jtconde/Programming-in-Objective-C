// Chapter 12 exercise 4
#import <Foundation/Foundation.h>
#define IS_UPPER_CASE(x) ( (x) >= 'A') && ((x) <= 'Z' )

int main()
{
    @autoreleasepool {
        char ch = 'H';
        int result = IS_UPPER_CASE(ch);
        if (result == 1)
            NSLog(@"%c is uppercase. Macro returned %d", ch, result);
        else
            NSLog(@"%c is not uppercase. Macro returned %d", ch, result);
    }

    return 0;
}
