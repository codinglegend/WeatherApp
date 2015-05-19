//
//  DetailedViewController.m
//  Weather
//
//  Created by Alain  on 2015-05-18.
//  Copyright (c) 2015 Lighthouse Labs. All rights reserved.
//

#import "DetailedViewController.h"
#import "City.h"

@implementation DetailedViewController


-(void)viewDidLoad {

    // create labels
    // set the label text using self.city.
    
    UILabel *weatherDescripLabel = [[UILabel alloc] init];
    weatherDescripLabel.backgroundColor = [UIColor orangeColor];
    weatherDescripLabel.textColor = [UIColor blueColor];
    weatherDescripLabel.frame = CGRectMake(self.view.frame.size.width/2 - 37.5, self.view.frame.size.height/2 - 15, 75, 30);
    weatherDescripLabel.text = [NSString stringWithFormat:@"%@", self.city.weatherDescription];
    [self.view addSubview:weatherDescripLabel];
    
// messing with background color
    self.view.backgroundColor = [UIColor purpleColor];
    
}


@end
