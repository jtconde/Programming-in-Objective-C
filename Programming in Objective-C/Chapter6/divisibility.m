// divisibility.m -- tests if one number is divisible by another number.
#import <Foundation/Foundation.h>

int main(int argc, char const *argv[])
{
    @autoreleasepool {
        int first;
        int second;

        NSLog(@"Enter two integers:");
        scanf("%i %i", &first, &second);
        if (first % second == 0)
            NSLog(@"%i is evenly divisible by %i!", first, second);
        else
            NSLog(@"%i is not divisible by %i.", first, second);
    }

    return 0;
}