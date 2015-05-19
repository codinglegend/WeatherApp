//
//  CityViewController.h
//  Weather
//
//  Created by Alain  on 2015-05-18.
//  Copyright (c) 2015 Lighthouse Labs. All rights reserved.
//

#import <UIKit/UIKit.h>
@class City;

@interface CityViewController : UIViewController

@property (nonatomic) City* cityObject; // step: initialize five CityViewController instances

- (instancetype)initWithCity:(City*)cityObject;

- (void)showWeatherDetails;

@end

