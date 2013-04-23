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

#define HC_SHORTHAND
#import <OCHamcrestIOS/OCHamcrestIOS.h>

// Uncomment the next two lines to use OCMockito for mock objects:
//#define MOCKITO_SHORTHAND
//#import <OCMockitoIOS/OCMockitoIOS.h>

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

@end
