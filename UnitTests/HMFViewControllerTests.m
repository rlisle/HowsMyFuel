//
//  HMFViewControllerTests.m
//  HowsMyFuel
//
//  Created by Ron Lisle on 4/4/13.
//  Copyright (c) 2013 Ron Lisle. All rights reserved.
//


#import <SenTestingKit/SenTestingKit.h>

#define HC_SHORTHAND
#import <OCHamcrestIOS/OCHamcrestIOS.h>

// Uncomment the next two lines to use OCMockito for mock objects:
//#define MOCKITO_SHORTHAND
//#import <OCMockitoIOS/OCMockitoIOS.h>

#import "HMFViewController.h"

@interface HMFViewControllerTests : SenTestCase

@property (nonatomic, strong) HMFViewController *testObj;

@end

@implementation HMFViewControllerTests

- (void)setUp
{
    self.testObj = [[HMFViewController alloc] initWithNibName:@"HMFViewController" bundle:nil];
    assertThat(self.testObj.view, notNilValue());   // Forces loading the view
}

- (void)tearDown
{
    self.testObj = nil;
}

- (void)testViewControllerInstantiates
{
    assertThat(self.testObj, notNilValue());
}

- (void)testDisplaysMapView
{
    assertThat(self.testObj.mapView, notNilValue());
}

- (void)testMapShowsUserLocation
{
    assertThatBool(self.testObj.mapView.showsUserLocation, equalToBool(YES));
}

@end
