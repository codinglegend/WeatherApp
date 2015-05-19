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
// *note: andPrecipitation:@(40) IS THE SAME AS andPrecipitation:[[NSNumber alloc] initWithInteger:20]
// *note: NSString *string = @"Rainy" IS THE SAME AS [[NSString alloc] initWithString:@"rainy"]
// literal notation makes it easier
    
    
    City *vancouver = [[City alloc] initWithName:@"Vancouver" andWeather:@"Rainy" andCurrentTime:[NSDate date] andTemperature:@(12) andPrecipitation:@(40)];
    City *brussels = [[City alloc] initWithName:@"Brussels" andWeather:@"Moderate" andCurrentTime:[NSDate date] andTemperature:@(14) andPrecipitation:@(20)];
    City *sanFrancisco = [[City alloc] initWithName:@"San Francisco" andWeather:@"Clear" andCurrentTime:[NSDate date] andTemperature:@(20) andPrecipitation:@(17)];
    City *prague = [[City alloc] initWithName:@"Prague" andWeather:@"Nice" andCurrentTime:[NSDate date] andTemperature:@(17) andPrecipitation:@(10)];
    City *montpellier = [[City alloc] initWithName:@"Montpellier" andWeather:@"Sunny" andCurrentTime:[NSDate date] andTemperature:@(21) andPrecipitation:@(10)];
    
    // step: initialize five CityViewController instances
    
    CityViewController *vancouverController = [[CityViewController alloc] initWithCity:vancouver];
    
    CityViewController *brusselsController = [[CityViewController alloc] initWithCity:brussels];
    
    CityViewController *sanFranciscoController = [[CityViewController alloc] initWithCity: sanFrancisco];
    
    CityViewController *pragueController = [[CityViewController alloc] initWithCity: prague];
    
    CityViewController *montpellierController = [[CityViewController alloc] initWithCity: montpellier];
    
    // step: create navigation controllers for each of the city view controllers
    
    UINavigationController *vancouverNavigation = [[UINavigationController alloc] initWithRootViewController:vancouverController];
    
    UINavigationController *brusselsNavigation = [[UINavigationController alloc] initWithRootViewController:brusselsController];
    
    UINavigationController *sanFranNavigation = [[UINavigationController alloc] initWithRootViewController:sanFranciscoController];
    
    UINavigationController *pragueNavigation = [[UINavigationController alloc] initWithRootViewController:pragueController];
    
    UINavigationController *montpellierNavigation = [[UINavigationController alloc] initWithRootViewController:montpellierController];
    
    //  add each city's navigation controller to your tab view controller
    
/* initially i did  UITabBarController *cityNameTab = [[UITabBarController alloc] init]; for each tab,
 but this doesn't work because you only have *ONE* TabBarController. It has 5 buttons in this case,  but there is only *ONE* TabBar. So you have to make an array as I did on line 71 */
    
    
    
    // create a tab bar controller and set it as the root view controller
    
// note: had to create a property called tabBarController (or whatever you want to name it) for the following code to work
    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
    self.tabBarController = [[UITabBarController alloc] init];
    
    //or, could have used literal notation below e.g. @[obj1, obj2];
    
    self.tabBarController.viewControllers = [[NSArray alloc] initWithObjects:vancouverNavigation, brusselsNavigation, sanFranNavigation, pragueNavigation, montpellierNavigation, nil];
    
    [self.window setRootViewController:_tabBarController];
    [self.window makeKeyAndVisible];
    
    
    
    return YES;
}




@end
