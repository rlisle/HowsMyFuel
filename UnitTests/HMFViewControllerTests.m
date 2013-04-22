//
//  HMFViewControllerTests.m
//  HowsMyFuel
//
//  Created by Ron Lisle on 4/4/13.
//  Copyright (c) 2013 Ron Lisle. All rights reserved.
//

#import "HMFViewController.h"
#import "Kiwi.h"

SPEC_BEGIN(HMFViewControllerTests)

context(@"HMFViewController", ^{

    __block HMFViewController *viewController;
    
    beforeEach( ^{
        viewController = [[HMFViewController alloc] initWithNibName:@"HMFViewController" bundle:nil];
    });

    describe(@"initially", ^{
        it(@"displays a mapView", ^{
            [viewController.mapView shouldNotBeNil];
        });
    });
    
});

SPEC_END
