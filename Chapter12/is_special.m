// Chapter 12 exercise 6
#import <Foundation/Foundation.h>
#define IS_LOWER_CASE(x) ( ((x) >= 'a') && ((x) <= 'z') )
#define IS_UPPER_CASE(x) ( ((x) >= 'A') && ((x) <= 'Z') )
#define IS_DIGIT(x)      ( ((x) >= '0') && ((x) <= '9') )
#define IS_ALPHABETIC(x) ( IS_UPPER_CASE(x) || IS_LOWER_CASE(x) )
#define IS_SPECIAL(x)    (! IS_ALPHABETIC(x)) && (! IS_DIGIT(x) )

int main()
{
    @autoreleasepool {
        char ch = '*';
        int result = IS_SPECIAL(ch);
        if (result == 1) {
            NSLog(@"%c is a special character. Macro returned %d.",
                ch, result);
        }
        else {
            NSLog(@"%c is a special character. Macro returned %d.",
                ch, result);
        }
    }

    return 0;
}
