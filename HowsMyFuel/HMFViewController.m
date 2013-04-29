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
    [self setupGestureRecognizers];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Map

- (void)configureMapSettings
{
    [self centerMapOnUser];
}

- (void)setupGestureRecognizers
{
    // Setup gesture recognizers
    UITapGestureRecognizer *mapTapRecognizer = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(handleMapTap:)];
    [self.mapView addGestureRecognizer:mapTapRecognizer];
}

- (void)handleMapTap:(UIGestureRecognizer *)sender {
    if(sender.state == UIGestureRecognizerStateEnded){
        [[self mapView]setUserTrackingMode:MKUserTrackingModeFollow animated:YES];
    }
}

- (void)centerMapOnUser
{
    [[self mapView]setUserTrackingMode:MKUserTrackingModeFollow animated:YES];
}

#pragma mark - Time

- (void)setTimeText:(NSString *)timeText
{
    self.timeView.text = timeText;
}
- (NSString *)timeText
{
    return self.timeView.text;
}

- (void)updateTimeString:(NSString *)timeString
{
    
}

@end
