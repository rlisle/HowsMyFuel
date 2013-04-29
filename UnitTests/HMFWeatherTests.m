//
//  HMFWeatherTests.m
//  HowsMyFuel
//
//  OCUnit test cases for HMFWeather
//
//  Created by Ron Lisle on 4/29/13.
//  Copyright (c) 2013 Ron Lisle. All rights reserved.
//

#import <SenTestingKit/SenTestingKit.h>

#define HC_SHORTHAND
#import <OCHamcrestIOS/OCHamcrestIOS.h>

// Uncomment the next two lines to use OCMockito for mock objects:
//#define MOCKITO_SHORTHAND
//#import <OCMockitoIOS/OCMockitoIOS.h>

#import "HMFWeather.h"

@interface HMFWeatherTests : SenTestCase

@property (nonatomic, strong) HMFWeather *testObj;

@end

@implementation HMFWeatherTests

- (void)setUp
{
    self.testObj = [[HMFWeather alloc] init];
}

- (void)tearDown
{
    self.testObj = nil;
}

- (void)testHMFWeatherInstantiates
{
    assertThat(self.testObj, notNilValue());
}

// Implement additional tests

@end
