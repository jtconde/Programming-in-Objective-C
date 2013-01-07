// Interface file for Complex class.
// Chapter 9 exercises 3, 4 and 5

#import <Foundation/Foundation.h>

@interface Complex : NSObject

@property double real, imaginary;
- (void) print;
- (void) setReal: (double) a andImaginary: (double) b;
- (id) add: (id) f;

@end
