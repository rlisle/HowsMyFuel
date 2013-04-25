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

- (void)configureMapSettings
{
    [[self mapView]setUserTrackingMode:MKUserTrackingModeFollow];
}

- (void)setupGestureRecognizers
{
    // Setup gesture recognizers
    UITapGestureRecognizer *mapTapRecognizer = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(handleMapTap:)];
    [self.mapView addGestureRecognizer:mapTapRecognizer];
}

- (void)handleMapTap:(UIGestureRecognizer *)sender {
//    if(sender.state == UIGestureRecognizerStateEnded){
//        NSLog(@"Tap");
        [[self mapView]setUserTrackingMode:MKUserTrackingModeFollow animated:YES];
//    }
}

@end
