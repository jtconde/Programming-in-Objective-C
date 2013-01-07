// ex7.m - Reads a file 128 bytes at a time and writes the contents
// to the terminal
//
//
// Similar to exercise 6 -- compile and run according to those instructions
#import <Foundation/Foundation.h>

int main()
{
    @autoreleasepool {
        NSFileHandle *inFile, *tOutput;
        unsigned long long kBufSize = 128;
        unsigned long long inputFileSize;

        // Open the file testfile for reading
        inFile = [NSFileHandle fileHandleForReadingAtPath: @"testfile"];
        if (inFile == nil) {
            NSLog(@"Open of testfile for reading failed.");
            return 1;
        }

        // Get the file size and adjust the kBufSize
        inputFileSize = [inFile seekToEndOfFile];

        // Initialize the terminal output:
        tOutput = [NSFileHandle fileHandleWithStandardOutput];

        int iterations = (int) inputFileSize / kBufSize;
        for (int i = 0; i <= iterations; i++) {
            if (i == iterations) {
                [inFile seekToFileOffset:kBufSize * i];
                [tOutput writeData:[inFile readDataToEndOfFile]];
            }
            else {
                [inFile seekToFileOffset:kBufSize * i];
                [tOutput writeData:[inFile readDataOfLength:kBufSize]];
            }
        }

        // close the two files
        [inFile closeFile];
    }

    return 0;
}
