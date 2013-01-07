//
//  BNRMapPoint.h
//  Whereami
//
//  Created by Akshay on 1/7/13.
//  Copyright (c) 2013 Gallifrey. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreLocation/CoreLocation.h>
#import <MapKit/MapKit.h>

@interface BNRMapPoint : NSObject <MKAnnotation>

- (id)initWithCoordinate:(CLLocationCoordinate2D)c title:(NSString *)t;

// Required property from MKAnnotaiton protocol
@property (nonatomic, readonly) CLLocationCoordinate2D coordinate;

// Optional property
@property (nonatomic, copy) NSString *title;

@end
