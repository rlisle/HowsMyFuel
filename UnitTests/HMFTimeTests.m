//
//  HMFTimeTests.m
//  HowsMyFuel
//
//  OCUnit test cases for HMFTimeTests
//
//  Created by Ron Lisle on 4/26/13.
//  Copyright (c) 2013 Ron Lisle. All rights reserved.
//

#import <SenTestingKit/SenTestingKit.h>

#define HC_SHORTHAND
#import <OCHamcrestIOS/OCHamcrestIOS.h>

// Uncomment the next two lines to use OCMockito for mock objects:
//#define MOCKITO_SHORTHAND
//#import <OCMockitoIOS/OCMockitoIOS.h>

#import "HMFTime.h"

@interface HMFTimeTests : SenTestCase <HMFTimeUpdate>

@property (nonatomic, strong) HMFTime *testObj;
@property BOOL updatedTimeStringWasCalled;
@property (nonatomic, copy) NSString *updatedTime;

@end

@implementation HMFTimeTests

- (void)setUp
{
    self.testObj = [[HMFTime alloc] init];
    self.testObj.delegate = self;
    self.updatedTimeStringWasCalled = NO;
}

- (void)tearDown
{
    self.testObj = nil;
}

- (void)testHMFTimeInstantiates
{
    assertThat(self.testObj, notNilValue());
}

- (void)testHMFTimeCreates1SecondRecurringTimer
{
    assertThat(self.testObj.timer, notNilValue());
    assertThatBool(self.testObj.timer.isValid, equalToBool(YES));
    assertThatDouble(self.testObj.timer.timeInterval, equalToDouble(1.0));
}

- (void)testThatDelegateIsCalledWhenTimerFires
{
    [self.testObj.timer fire];
    assertThatBool(self.updatedTimeStringWasCalled, equalToBool(YES));
}

- (void)testFormatTimeString
{
    NSString *expectedString = @"12:34";
    NSDate *testDate = [NSDate dateWithTimeIntervalSince1970:412440.0];
    NSString *formattedString = [self.testObj formatTimeString:testDate];
    assertThat(formattedString, is(expectedString));
}

#pragma mark - HMFTimeUpdate delegate methods

- (void)updatedTimeString:(NSString *)timeString
{
    self.updatedTimeStringWasCalled = YES;
    self.updatedTime = timeString;
}

@end
