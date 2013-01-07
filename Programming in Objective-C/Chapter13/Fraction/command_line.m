// Chapter 13 exercise 8

#import <Foundation/Foundation.h>

int main(int argc, const char* argv[])
{
    @autoreleasepool {
        int i;
        for (i = 0; i < argc - 1; i++) {
            if (argc == 1) {
                NSLog(@"No arguments entered except the file name.");
                break;
            }
            else {
                if (i == 0)
                    NSLog(@"Command line arguments entered: ");
                NSLog(@"%s", argv[i + 1]);
            }
        }
    }

    return 0;
}
