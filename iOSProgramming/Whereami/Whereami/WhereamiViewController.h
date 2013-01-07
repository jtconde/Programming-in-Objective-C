//
//  WhereamiViewController.h
//  Whereami
//
//  Created by Akshay on 1/7/13.
//  Copyright (c) 2013 Gallifrey. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>
#import <MapKit/MapKit.h>

@interface WhereamiViewController : UIViewController
    <CLLocationManagerDelegate, MKMapViewDelegate, UITextFieldDelegate>
{
    CLLocationManager *locationManager;
    
    IBOutlet MKMapView *worldView;
    IBOutlet UIActivityIndicatorView *activityIndicator;
    IBOutlet UITextField *locationTitleField;
}

- (void)findLocation;
- (void)foundLocation:(CLLocation *)loc;
- (IBAction)setMapType:(id)sender;

@end
