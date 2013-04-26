//
//  HMFViewController.h
//  HowsMyFuel
//
//  Created by Ron Lisle on 4/4/13.
//  Copyright (c) 2013 Ron Lisle. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MKMapView.h>
#import "HMFView.h"

@class HMFPresenter;


@interface HMFViewController : UIViewController <HMFView>

@property (nonatomic, strong) HMFPresenter* presenter;
@property (weak, nonatomic) IBOutlet MKMapView *mapView;
@property (weak, nonatomic) IBOutlet UILabel *timeView;

- (void)handleMapTap:(UIGestureRecognizer *)sender;

@end
