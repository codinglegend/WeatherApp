//
//  CityViewController.m
//  Weather
//
//  Created by Alain  on 2015-05-18.
//  Copyright (c) 2015 Lighthouse Labs. All rights reserved.
//

#import "CityViewController.h"
#import "City.h"
#import "DetailedViewController.h"

@implementation CityViewController

// step: initialize five CityViewController instances

- (instancetype)initWithCity:(City*)cityObject
{
    self = [super init];
    if (self) {
        _cityObject = cityObject;
//        self.tabBarItem = [[UITabBarItem alloc] initWithTitle:<#(NSString *)#> image:<#(UIImage *)#> tag:<#(NSInteger)#>]
        self.title = cityObject.cityName;

    }
    return self;
}

-(void)viewDidLoad {

    // alloc a new button
    // set it's frame
    // add it to the main view
    // add a target + action that calls showWeatherDetails.
    
    UIButton *myButton = [[UIButton alloc] init];
    myButton.backgroundColor = [UIColor orangeColor];
    myButton.frame = CGRectMake(self.view.frame.size.width/2 - 150, self.view.frame.size.height/2 - 25, 300, 50);
    [myButton setTitle:@"Show details!" forState:UIControlStateNormal];
    [myButton addTarget:self action:@selector(showWeatherDetails) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:myButton];
    
// messing with the background color of first view
    
    self.view.backgroundColor = [UIColor purpleColor];

    
}




// step: implement a showWeatherDetails method as an instance of DetailedViewController

- (void)showWeatherDetails{
    DetailedViewController *detailController = [[DetailedViewController alloc] init];
    
    // set detailController's city to be my city.
    
    detailController.city = self.cityObject;
    
    [self.navigationController pushViewController:detailController animated:YES];
    
}





@end
