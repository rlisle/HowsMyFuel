//
//  HMFAppDelegateTests.m
//  HowsMyFuel
//
//  OCUnit Logic test cases for HMFAppDelegate
//
//  Created by Ron Lisle on 3/25/13.
//  Copyright (c) 2013 Ron Lisle. All rights reserved.
//

#import <SenTestingKit/SenTestingKit.h>

#import "HMFAppDelegate.h"
#import "HMFViewController.h"

#define HC_SHORTHAND
#import <OCHamcrestIOS/OCHamcrestIOS.h>

// Uncomment the next two lines to use OCMockito for mock objects:
//#define MOCKITO_SHORTHAND
//#import <OCMockitoIOS/OCMockitoIOS.h>

@interface HMFAppDelegateTests : SenTestCase

@property (nonatomic, strong) HMFAppDelegate *testObj;

@end

@implementation HMFAppDelegateTests

- (void)setUp
{
    self.testObj = [[HMFAppDelegate alloc] init];
}

- (void)tearDown
{
    self.testObj = nil;
}

- (void)testAppDelegateInstantiates
{
    assertThat(self.testObj, notNilValue());
}

@end
