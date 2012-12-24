//
//  ViewController.m
//  iPhone_1
//
//  Created by Akshay on 12/23/12.
//
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize display;

- (IBAction)click1
{
    [display setText:@"Most definitely!"];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
