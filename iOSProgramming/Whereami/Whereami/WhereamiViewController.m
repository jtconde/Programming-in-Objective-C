//
//  WhereamiViewController.m
//  Whereami
//
//  Created by Akshay on 1/7/13.
//  Copyright (c) 2013 Gallifrey. All rights reserved.
//

#import "WhereamiViewController.h"

@implementation WhereamiViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    
    if (self) {
        // Create location manager object
        locationManager = [[CLLocationManager alloc] init];
        
        [locationManager setDelegate:self];
        
        // Be as accurate as possible
        [locationManager setDesiredAccuracy:kCLLocationAccuracyBest];
        
        // Only generate an update event if the device moves 50 meters
        [locationManager setDistanceFilter:50];
        
        // Start looking for its location immediately
        [locationManager startUpdatingLocation];
        
        // Update heading as well if the device supports it.
        if ([CLLocationManager headingAvailable])
            [locationManager startUpdatingHeading];
    }
    
    return self;
}

- (void)locationManager:(CLLocationManager *)manager
    didUpdateToLocation:(CLLocation *)newLocation
           fromLocation:(CLLocation *)oldLocation
{
    NSLog(@"%@", newLocation);
}

- (void)locationManager:(CLLocationManager *)manager
        didFailWithError:(NSError *)error
{
    NSLog(@"Could not find the location: %@", error);
}

- (void)locationManager:(CLLocationManager *)manager
        didUpdateHeading:(CLHeading *)newHeading
{
    NSLog(@"New Heading: %@", newHeading);
}

@end
