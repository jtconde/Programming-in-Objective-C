// Defines the Fraction class
// Chapter 15 exercise 7
#import <UIKit/UIKit.h>

@interface Fraction : NSObject

@property int numerator, denominator;

- (void)print;

- (void)setTo:(int)num over:(int)denom;

- (Fraction *)add:(Fraction *)f;

- (Fraction *)subtract:(Fraction *)f;

- (Fraction *)multiply:(Fraction *)f;

- (Fraction *)divide:(Fraction *)f;

- (void)reduce;

- (double)convertToNum;

- (NSString *)convertToString;

@end
