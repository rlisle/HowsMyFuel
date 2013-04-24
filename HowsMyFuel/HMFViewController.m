//
//  HMFViewController.m
//  HowsMyFuel
//
//  Created by Ron Lisle on 4/4/13.
//  Copyright (c) 2013 Ron Lisle. All rights reserved.
//

#import "HMFViewController.h"

@interface HMFViewController ()

@end

@implementation HMFViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    [self configureMapSettings];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)configureMapSettings
{
    [[self mapView]setUserTrackingMode:MKUserTrackingModeFollow];
}

@end
