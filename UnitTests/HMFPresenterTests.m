//
//  HMFPresenterTests.m
//  HowsMyFuel
//
//  OCUnit Logic test cases for HMFPresenter
//
//  Created by Ron Lisle on 4/21/13.
//  Copyright (c) 2013 Ron Lisle. All rights reserved.
//

#import <SenTestingKit/SenTestingKit.h>

#import "HMFPresenter.h"
#import "HMFPresenterPrivate.h"
#import "HMFViewController.h"

#define HC_SHORTHAND
#import <OCHamcrestIOS/OCHamcrestIOS.h>

#define MOCKITO_SHORTHAND
#import <OCMockitoIOS/OCMockitoIOS.h>

@interface HMFPresenterTests : SenTestCase

@property (nonatomic, strong) HMFPresenter *testObj;

@end

@implementation HMFPresenterTests

- (void)setUp
{
    self.testObj = [[HMFPresenter alloc] init];
}

- (void)tearDown
{
    self.testObj = nil;
}

- (void)testPresenterInstantiates
{
    assertThat(self.testObj, notNilValue());
}

- (void)testThatMapTapRecentersMap
{
    HMFViewController *mockVC = mock([HMFViewController class]);
    self.testObj.view = mockVC;
    
    [self.testObj handleMapTap];
    
    [verify(mockVC) centerMapOnUser];
}

@end
