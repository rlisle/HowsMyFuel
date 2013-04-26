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

#define HC_SHORTHAND
#import <OCHamcrestIOS/OCHamcrestIOS.h>

// Uncomment the next two lines to use OCMockito for mock objects:
//#define MOCKITO_SHORTHAND
//#import <OCMockitoIOS/OCMockitoIOS.h>

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

@end
