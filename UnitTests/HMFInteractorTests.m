//
//  HMFInteractorTests.m
//  HowsMyFuel
//
//  OCUnit logic test cases for HMFInteractor
//
//  Created by Ron Lisle on 4/21/13.
//  Copyright (c) 2013 Ron Lisle. All rights reserved.
//

#import <SenTestingKit/SenTestingKit.h>

#import "HMFInteractor.h"
#import "HMFPresenter.h"

#define HC_SHORTHAND
#import <OCHamcrestIOS/OCHamcrestIOS.h>

#define MOCKITO_SHORTHAND
#import <OCMockitoIOS/OCMockitoIOS.h>

@interface HMFInteractorTests : SenTestCase

@property (nonatomic, strong) HMFInteractor *testObj;

@end

@implementation HMFInteractorTests

- (void)setUp
{
    self.testObj = [[HMFInteractor alloc] init];
}

- (void)tearDown
{
    self.testObj = nil;
}

- (void)testInteractorInstantiates
{
    assertThat(self.testObj, notNilValue());
}

#pragma mark - Time

- (void)testTimeModelInstantiated
{
    assertThat(self.testObj.time, notNilValue());
}

- (void)testTimeDelegateConnected
{
    assertThat(self.testObj.time.delegate, is(self.testObj));
}

- (void)testTimeForwardedToPresenter
{
    // Create fake presenter to verify presenter is called
    id <HMFInteractorDelegate> mockPresenter = mockProtocol(@protocol(HMFInteractorDelegate));
    self.testObj.delegate = mockPresenter;
    
    // Simulate delegate call from time
    [self.testObj.time.timer fire];
    
    [verify(mockPresenter) updateTimeString:(id)notNilValue()];
}

#pragma mark - Weather

- (void)testWeatherModelInstantiated
{
    assertThat(self.testObj.weather, notNilValue());
}

@end
