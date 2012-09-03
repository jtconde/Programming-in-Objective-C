// Chapter 12 exercise 5
#import <Foundation/Foundation.h>
#define IS_LOWER_CASE(x) ( (x) >= 'a') && ((x) <= 'z' )
#define IS_UPPER_CASE(x) ( (x) >= 'A') && ((x) <= 'Z' )
#define IS_ALPHABETIC(x) ( (IS_LOWER_CASE(x)) || (IS_UPPER_CASE(x)) )

int main()
{
    @autoreleasepool {
        char ch = '4';
        int result = IS_ALPHABETIC(ch);
        if (result == 1)
            NSLog(@"%c is alphabetic. Macro returned %d", ch, result);
        else
            NSLog(@"%c is not alphabetic. Macro returned %d", ch, result);
    }

    return 0;
}
