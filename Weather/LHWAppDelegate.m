//
//  LHWAppDelegate.m
//  Weather
//
//  Created by Steven Masuch on 2014-07-30.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import "LHWAppDelegate.h"
#import "City.h"
#import "CityViewController.h"

@implementation LHWAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    
    // initalize city objects for Vancouver and 4 other international cities
    
    City *vancouver = [[City alloc] initWithWeather:@"Rainy" andCurrentTime:[NSDate date] andTemperature:@"12" andPrecipitation:@"40"];
    
    City *brussels = [[City alloc] initWithWeather:@"Moderate" andCurrentTime:[NSDate date] andTemperature:@"14" andPrecipitation:@"20"];
    City *sanFrancisco = [[City alloc] initWithWeather:@"Clear" andCurrentTime:[NSDate date] andTemperature:@"15" andPrecipitation:@"17"];
    City *prague = [[City alloc] initWithWeather:@"Nice" andCurrentTime:[NSDate date] andTemperature:@"17"
                                andPrecipitation:@"10"];
    City *montpellier = [[City alloc] initWithWeather:@"Sunny" andCurrentTime:[NSDate date] andTemperature:@"21" andPrecipitation:@"10"];
    
    // step: initialize five CityViewController instances
    
    CityViewController *vancouverController = [[CityViewController alloc] initWithCity:vancouver];
    
    CityViewController *brusselsController = [[CityViewController alloc] initWithCity:brussels];
    
    CityViewController *sanFranciscoController = [[CityViewController alloc] initWithCity: sanFrancisco];
    
    CityViewController *pragueController = [[CityViewController alloc] initWithCity: prague];
    
    CityViewController *montpellierController = [[CityViewController alloc] initWithCity: montpellier];
    
    // create a tab bar controller and set it as the root view controller
    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
    // you have to create a property called tabBarController for the following code to work
    
    self.tabBarController = [[UITabBarController alloc] init];
    
    [self.window setRootViewController:_tabBarController];
    [self.window makeKeyAndVisible];
    
    
    
    
    
    
    
    
    return YES;
}




@end
