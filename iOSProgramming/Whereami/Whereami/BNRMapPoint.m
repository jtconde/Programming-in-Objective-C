//
//  BNRMapPoint.m
//  Whereami
//
//  Created by Akshay on 1/7/13.
//  Copyright (c) 2013 Gallifrey. All rights reserved.
//

#import "BNRMapPoint.h"

@implementation BNRMapPoint

@synthesize coordinate;
@synthesize title;
@synthesize subtitle;

- (id)initWithCoordinate:(CLLocationCoordinate2D)c title:(NSString *)t
{
    self = [super init];
    if (self) {
        coordinate = c;
        [self setTitle:t];
        NSDate *dateTagged = [NSDate date];
        NSString *formatDate = [NSString
                                stringWithFormat:@"%@",
                                [NSDateFormatter
                                localizedStringFromDate:dateTagged
                                dateStyle:NSDateFormatterShortStyle
                                timeStyle:NSDateFormatterShortStyle]];
        [self setSubtitle:formatDate];
    }
    return self;
}

- (id)init
{
    return [self initWithCoordinate:CLLocationCoordinate2DMake(43.07, -89.32)
                              title:@"Hometown"];
}

@end
