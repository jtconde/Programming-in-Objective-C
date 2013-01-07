//
//  ViewController.h
//  Fraction_Calculator
//
//  Created by Akshay on 12/23/12.
//
//

#import <UIKit/UIKit.h>
#import "Calculator.h"

@interface ViewController : UIViewController

@property (strong, nonatomic) IBOutlet UILabel *display;

- (void)processDigit:(int)digit;
- (void)processOp:(char)theOp;
- (void)storeFracPart;

// Numeric keys
- (IBAction)clickDigit:(UIButton *)sender;

// Arithmetic operation keys
- (IBAction)clickPlus;
- (IBAction)clickMinus;
- (IBAction)clickMultiply;
- (IBAction)clickDivide;

// Misc. keys
- (IBAction)clickOver;
- (IBAction)clickEquals;
- (IBAction)clickClear;
- (IBAction)clickConvert;

@end
