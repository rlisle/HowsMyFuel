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

#define kDEFAULT_ZIPCODE    78724

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

// Note: I start figuring out (architecting) how I want the code to work.
// I will then translate all of the notes below into tests.
//
// After the weather object instantiates, I want it to request a weather update
// from the weather service. This is asynchronous. We will then want to request
// an update periodically (every 15 minutes or so), as well as when location (zip)
// changes.
// Calling requestUpdate will issue the async weather request.
// Upon successful completion, it will fire its delegate passing self.
// It will have temperature, imageUrl, zipcode, and pending properties.
- (void)testPendingInitiallySet
{
    assertThatBool(self.testObj.pending, equalToBool(YES));
}

- (void)testPendingSetUntilRequestCompletes
{
    assertThatBool(self.testObj.pending, equalToBool(YES));
    self.testObj.zipcode = kDEFAULT_ZIPCODE;
    assertThatBool(self.testObj.pending, equalToBool(NO));
}

@end
