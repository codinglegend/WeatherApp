//
//  CityClass.m
//  Weather
//
//  Created by Alain  on 2015-05-18.
//  Copyright (c) 2015 Lighthouse Labs. All rights reserved.
//

#import "City.h"

@implementation City


- (instancetype)initWithWeather:(NSString*)weatherDescription andCurrentTime:(NSDate*)currentTime andTemperature:(NSNumber*)currentTemperature andPrecipitation:(NSNumber*)chanceOfPrecipitation
{
    self = [super init];
    if (self) {
        self.weatherDescription = weatherDescription;
        self.currentTime = currentTime;
        self.currentTemperature = currentTemperature;
        self.chanceOfPrecipitation = chanceOfPrecipitation;
    }
    return self;
}

//

@end
