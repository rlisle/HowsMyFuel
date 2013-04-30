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
// The weather object gets and exposes information obtained from a weather service.
// This is an asynchronous process, so we'll need some sort of callback,
// and possibly a ready/pending status property.
// Since the user is moving, we'll need to update the weather as the user's
// location changes. Changes in zipcode is probably sufficient.
// Since weather changes with time, we'll also want to update the weather
// periodically, perhaps on the order of 1 or more times per hour.
//
// We have a couple obvious options on how to perform this periodic updating:
// 1. Build a timer into the object, with some sort of update frequency property.
// 2. Provide an 'update' method, and expect the user to call it periodically.
// Since the timer is a fairly simple thing, I'm going to implement #1, just
// to simplify things. I believe that this will be easier to use and understand.
//
// The built-in timer will call an update method to request the weather info.
// Until valid weather info is available for the current zipcode, the ready
// property will be NO.
// Upon successful completion, it will fire its delegate passing self, and
// set the ready property to YES.
//
// When the zipcode property is set, it will call update if the new zipcode
// is different than the previous zipcode.
//
// Properties:
// * temperature
// * imageUrl
// * zipcode
// * pending
//
- (void)testPendingInitiallySet
{
    assertThatBool(self.testObj.pending, equalToBool(YES));
}

- (void)testPendingSetAfterZipcodeSet
{
    assertThatBool(self.testObj.pending, equalToBool(YES));
    self.testObj.zipcode = kDEFAULT_ZIPCODE;
    assertThatBool(self.testObj.pending, equalToBool(NO));
}

@end
