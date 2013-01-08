//
//  HypnosisterAppDelegate.h
//  Hypnosister
//
//  Created by Akshay on 1/8/13.
//  Copyright (c) 2013 Gallifrey. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HypnosisView.h"

@interface HypnosisterAppDelegate : UIResponder
    <UIApplicationDelegate, UIScrollViewDelegate>
{
    HypnosisView *view;
}

@property (strong, nonatomic) UIWindow *window;

@end
