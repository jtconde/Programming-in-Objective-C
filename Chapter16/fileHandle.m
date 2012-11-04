// fileHandle.m
// Modifies Program 16.7 so that the file is read and written kBufSize bytes
// at a time. kBufSize is definied at the beginning of the program
#import <Foundation/Foundation.h>

int main()
{
    @autoreleasepool {
        NSFileHandle *inFile, *outFile;
        NSData *buffer;
        int kBufSize = 64;

        // Open the file testfile for reading
        inFile = [NSFileHandle fileHandleForReadingAtPath: @"testfile"];
        if (inFile == nil) {
            NSLog(@"Open of testfile for reading failed.");
            return 1;
        }
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

        // truncase the output file since it may contain data
        [outFile truncateFileAtOffset:0];

        // Read the data from inFile and write it to outFile
        buffer = [inFile readDataToEndOfFile];

        [outFile writeData:buffer];

        // close the two files
        [inFile closeFile];
        [outFile closeFile];

        // Verify the file's contents
        NSLog(@"%@", [NSString stringWithContentsOfFile:@"testout"
                                                encoding:NSUTF8StringEncoding
                                                    error:NULL]);
    }

    return 0;
}
