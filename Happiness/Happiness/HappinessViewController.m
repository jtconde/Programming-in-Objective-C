//
//  HappinessViewController.m
//  Happiness
//
//  Created by Akshay on 1/6/13.
//
//

#import "HappinessViewController.h"
#import "FaceView.h"

@interface HappinessViewController()
@property (nonatomic, weak) IBOutlet FaceView *faceView;
@end

@implementation HappinessViewController

@synthesize happiness = _happiness;
@synthesize faceView = _faceView;

- (void)setHappiness:(int)happiness
{
    _happiness = happiness;
    [[self faceView] setNeedsDisplay];
}

- (void)setFaceView:(FaceView *)faceView
{
    _faceView = faceView;
    [self.faceView addGestureRecognizer:[[UIPinchGestureRecognizer alloc]
                                         initWithTarget:self.faceView
                                         action:@selector(pinch:)]];
}

@end
