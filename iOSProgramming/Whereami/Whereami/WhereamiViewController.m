//
//  WhereamiViewController.m
//  Whereami
//
//  Created by Akshay on 1/7/13.
//  Copyright (c) 2013 Gallifrey. All rights reserved.
//

#import "WhereamiViewController.h"
#import "BNRMapPoint.h"

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
        
        // Update heading as well if the device supports it.
        if ([CLLocationManager headingAvailable])
            [locationManager startUpdatingHeading];
    }
    
    return self;
}

- (void)viewDidLoad
{
    [worldView setMapType:MKMapTypeSatellite];
    [worldView setShowsUserLocation:YES];
}

- (void)locationManager:(CLLocationManager *)manager
    didUpdateToLocation:(CLLocation *)newLocation
           fromLocation:(CLLocation *)oldLocation
{
    NSLog(@"%@", newLocation);
    NSTimeInterval t = [[newLocation timestamp] timeIntervalSinceNow];
    
    // Ignore if the location hasn't updated for over 3 minutes
    if (t < -180) {
        return;
    }
    [self foundLocation:newLocation];
    
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

- (void)mapView:(MKMapView *)mapView
        didUpdateUserLocation:(MKUserLocation *)userLocation
{
    CLLocationCoordinate2D loc = [userLocation coordinate];
    MKCoordinateRegion region =
        MKCoordinateRegionMakeWithDistance(loc, 250, 250);
    [worldView setRegion:region animated:YES];
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [self findLocation];
    [textField resignFirstResponder];
    
    return YES;
}

- (void)findLocation
{
    [locationManager startUpdatingLocation];
    [activityIndicator startAnimating];
    [locationTitleField setHidden:YES];
}

- (void)foundLocation:(CLLocation *)loc
{
    CLLocationCoordinate2D coord = [loc coordinate];
    BNRMapPoint *mp = [[BNRMapPoint alloc]
                       initWithCoordinate:coord
                                    title:[locationTitleField text]];
    [worldView addAnnotation:mp];
    
    // zoom to this location
    MKCoordinateRegion region =
        MKCoordinateRegionMakeWithDistance(coord, 250, 250);
    [worldView setRegion:region animated:YES];
    // Reset the UI
    [locationTitleField setText:@""];
    [activityIndicator stopAnimating];
    [locationTitleField setHidden:NO];
    [locationManager stopUpdatingLocation];
}

- (IBAction)setMapType:(id)sender
{
    // cast sender to UISegmentedControl *
    // switch the segment indices to set the appropriate map type
    switch (((UISegmentedControl *) sender).selectedSegmentIndex) {
        case 0:
            [worldView setMapType:MKMapTypeStandard];
            break;
        case 1:
            [worldView setMapType:MKMapTypeHybrid];
            break;
        case 2:
            [worldView setMapType:MKMapTypeSatellite];
        default:
            NSLog(@"Unrecognized Segment Selector.");
            break;
    }
}

@end
