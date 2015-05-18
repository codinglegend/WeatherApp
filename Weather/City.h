//
//  CityClass.h
//  Weather
//
//  Created by Alain  on 2015-05-18.
//  Copyright (c) 2015 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface City : NSObject

@property (weak, nonatomic) NSString* weatherDescription;
@property (weak, nonatomic) NSDate* currentTime;
@property (weak, nonatomic) NSNumber* currentTemperature;
@property (weak, nonatomic) NSNumber* chanceOfPrecipitation;

- (instancetype)initWithWeather:(NSString*)weatherDescription andCurrentTime:(NSDate*)currentTime andTemperature:(NSNumber*)currentTemperature andPrecipitation:(NSNumber*)chanceOfPrecipitation;

@end
