//
//  HypnosisterAppDelegate.m
//  Hypnosister
//
//  Created by Akshay on 1/8/13.
//  Copyright (c) 2013 Gallifrey. All rights reserved.
//

#import "HypnosisterAppDelegate.h"
#import "HypnosisView.h"

@implementation HypnosisterAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    [[UIApplication sharedApplication] setStatusBarHidden:YES
                                    withAnimation:UIStatusBarAnimationFade];
    
    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    
    CGRect screenRect = [[self window] bounds];

    // Create the UIScrollView to have the size of the window, matching its size
    UIScrollView *scrollView = [[UIScrollView alloc] initWithFrame:screenRect];
    [scrollView setMinimumZoomScale:1.0];
    [scrollView setMaximumZoomScale:5.0];
    
    [scrollView setDelegate:self];
    [[self window] addSubview:scrollView];
    
    CGRect bigRect = screenRect;
    view = [[HypnosisView alloc] initWithFrame:screenRect];
    [scrollView addSubview:view];
    [scrollView setContentSize:bigRect.size];
    
    // set view to become the first responder
    BOOL success = [view becomeFirstResponder];
    if (success) {
        NSLog(@"HypnosisView became the first responder");
    } else {
        NSLog(@"Could not become the first responder");
    }
    
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    return YES;
}

- (UIView *)viewForZoomingInScrollView:(UIScrollView *)scrollView
{
    return view;
}

@end
