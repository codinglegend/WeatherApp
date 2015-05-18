//
//  LHWAppDelegate.m
//  Weather
//
//  Created by Steven Masuch on 2014-07-30.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import "LHWAppDelegate.h"
#import "City.h"

@implementation LHWAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    
    City *vancouver = [[City alloc] initWithWeather:@"Rainy" andCurrentTime:[NSDate date] andTemperature:@"12" andPrecipitation:@"40"];
    City *brussels = [[City alloc] initWithWeather:@"Moderate" andCurrentTime:[NSDate date] andTemperature:@"14" andPrecipitation:@"20"];
    City *sanFrancisco = [[City alloc] initWithWeather:@"Clear" andCurrentTime:[NSDate date] andTemperature:@"15" andPrecipitation:@"17"];
    City *prague = [[City alloc] initWithWeather:@"Nice" andCurrentTime:[NSDate date] andTemperature:@"17"
                                andPrecipitation:@"10"];
    City *montpellier = [[City alloc] initWithWeather:@"Sunny" andCurrentTime:[NSDate date] andTemperature:@"21" andPrecipitation:@"10"];
    
    
    return YES;
}

// 

@end
