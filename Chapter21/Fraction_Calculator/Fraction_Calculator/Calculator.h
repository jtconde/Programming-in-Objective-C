//
//  Calculator.h
//  Fraction_Calculator
//
//  Created by Akshay on 12/23/12.
//
//

#import <UIKit/UIKit.h>
#import "Fraction.h"

@interface Calculator : NSObject

@property (strong, nonatomic) Fraction *operand1, *operand2, *accumulator;

- (Fraction *)performOperation:(char)op;

- (void)clear;

@end
