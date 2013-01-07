//
//  PsychologistViewController.m
//  Psychologist
//
//  Created by Akshay on 1/6/13.
//  Copyright (c) 2013 Akshay. All rights reserved.
//

#import "PsychologistViewController.h"
#import "HappinessViewController.h"

@interface PsychologistViewController()
@property (nonatomic) int diagnosis;
@end

@implementation PsychologistViewController

@synthesize diagnosis = _diagnosis;

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"ShowDiagnosis"]) {
        [segue.destinationViewController setHappiness:self.diagnosis];
    }
}

- (void)setAndShowDiagnosis:(int)diagnosis
{
    self.diagnosis = diagnosis;
    [self performSegueWithIdentifier:@"ShowDiagnosis" sender:self];
}

- (IBAction)flying {
    [self setAndShowDiagnosis:85];
}

- (IBAction)peopleChase {
    [self setAndShowDiagnosis:40];
}

- (IBAction)dragonChase {
    [self setAndShowDiagnosis:25];
}

- (IBAction)paradise {
    [self setAndShowDiagnosis:100];
}

@end
