//
//  CityViewController.m
//  Weather
//
//  Created by Alain  on 2015-05-18.
//  Copyright (c) 2015 Lighthouse Labs. All rights reserved.
//

#import "CityViewController.h"
#import "City.h"

@implementation CityViewController

// step: initialize five CityViewController instances

- (instancetype)initWithCity:(City*)cityObject
{
    self = [super init];
    if (self) {
        _cityObject = cityObject;
    }
    return self;
}

@end
