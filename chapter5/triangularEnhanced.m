#import <Foundation/Foundation.h>

int main(int argc, const char* argv[])
{
    @autoreleasepool {
        int n, number, triangularNumber, counter, choice;
        NSLog(@"Enter the number of triangular numbers to calculate:");
        scanf("%i", &choice);
        for (counter = 1; counter <= choice; ++counter) {
            NSLog(@"What triangular number do you want?");
            scanf("%i", &number);

            triangularNumber = 0;
            for (n = 1; n <= number; ++n)
                triangularNumber += n;
            NSLog(@"Triangular number %i is %i", number, triangularNumber);
        }
    }

    NSLog(@"Bye!");
    return 0;
}