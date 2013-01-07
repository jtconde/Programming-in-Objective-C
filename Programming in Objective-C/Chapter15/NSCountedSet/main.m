// Takes an NSArray of NSNumber objects and produces a frequency chart
// Chapter 15 exercise 10
#import <Foundation/Foundation.h>
int main()
{
    @autoreleasepool {
        // Creating some NSNumber objects
        NSNumber *one       = [[NSNumber alloc] initWithInteger: 50];
        NSNumber *two       = [[NSNumber alloc] initWithInteger: 34];
        NSNumber *three     = [[NSNumber alloc] initWithInteger: 1938];
        NSNumber *four      = [[NSNumber alloc] initWithInteger: 124];
        NSNumber *five      = [[NSNumber alloc] initWithInteger: 9];
        NSNumber *six       = [[NSNumber alloc] initWithInteger: 1938];
        NSNumber *seven     = [[NSNumber alloc] initWithInteger: 9];
        NSNumber *eight     = [[NSNumber alloc] initWithInteger: 50];
        NSNumber *nine      = [[NSNumber alloc] initWithInteger: 1938];
        NSNumber *ten       = [[NSNumber alloc] initWithInteger: 124];
        NSArray *anArray = [[NSArray alloc] initWithObjects:
            one, two, three, four, five, six, seven, eight, nine, ten, nil];

        NSLog(@"Initialized Array.");
        // The default description of the array is too verbose.
        NSLog(@"Contents of array:");
        printf("\n[");
        int j = 0;
        for (NSNumber *aNumber in anArray) {
            if (j < [anArray count] - 1) {
                printf("%d, ", [aNumber intValue]);
            }
            else {
                printf("%d]\n\n", [aNumber intValue]);
            }
            ++j;
        }

        NSLog(@"Adding array to the counted set");
        NSCountedSet *aSet = [[NSCountedSet alloc] initWithArray: anArray];

        // Produce the frequency chart
        NSLog(@" ");
        NSLog(@"Frequency Chart:");
        int i = 0;
        // To keep a tally on which numbers have already dumped in the chart
        NSMutableArray *temp = [NSMutableArray array];
        for (NSNumber *theNumber in anArray) {
            // Don't output the number twice in the frequency chart
            if ([temp indexOfObject: theNumber] == NSNotFound){
            // Don't output the number two times
                NSLog(@"Integer: %d; Frequency: %lu",
                    [[anArray objectAtIndex: i] intValue],
                    [aSet countForObject: theNumber]);
                [temp addObject: theNumber];
                ++i;
            }
        }
    }

    return 0;
}
