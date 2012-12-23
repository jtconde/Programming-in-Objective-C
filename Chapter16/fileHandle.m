// fileHandle.m
// Modifies Program 16.7 so that the file is read and written kBufSize bytes
// at a time. kBufSize is definied at the beginning of the program
//
// To test and compile the program, run the following in a term (without the $):
// $ touch testfile
// $ clang -fobjc-arc -framework Foundation fileHandle.m -o ./testFileHandle
// $ ./testFileHandle
#import <Foundation/Foundation.h>

int main()
{
    @autoreleasepool {
        NSFileHandle *inFile, *outFile;
        unsigned long long kBufSize = 1000;
        unsigned long long inputFileSize;

        // Open the file testfile for reading
        inFile = [NSFileHandle fileHandleForReadingAtPath: @"testfile"];
        if (inFile == nil) {
            NSLog(@"Open of testfile for reading failed.");
            return 1;
        }

        // Get the file size and adjust the kBufSize
        inputFileSize = [inFile seekToEndOfFile];

        // Create the output file if necessary
        [[NSFileManager defaultManager] createFileAtPath:@"testout"
                                                contents:nil
                                                attributes:nil];

        // Now open the outfile for writing
        outFile = [NSFileHandle fileHandleForWritingAtPath:@"testout"];
        if (outFile == nil) {
            NSLog(@"Open of testout for writing failed.");
            return 2;
        }

        int iterations = (int) inputFileSize / kBufSize;
        for (int i = 0; i <= iterations; i++) {
            if (i == iterations) {
                [inFile seekToFileOffset:kBufSize * i];
                [outFile writeData:[inFile readDataToEndOfFile]];
            }
            else {
                [inFile seekToFileOffset:kBufSize * i];
                [outFile writeData:[inFile readDataOfLength:kBufSize]];
            }
        }

        // close the two files
        [inFile closeFile];
        [outFile closeFile];

        // Verify the file's contents
        NSLog(@"Output file successfully created with testfile contents: ");
        NSLog(@"%@", [NSString stringWithContentsOfFile:@"testout"
                                                encoding:NSUTF8StringEncoding
                                                    error:NULL]);
    }

    return 0;
}
