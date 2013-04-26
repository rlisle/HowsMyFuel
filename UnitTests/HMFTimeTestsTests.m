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

@interface HMFTimeTests : SenTestCase

@property (nonatomic, strong) HMFTime *testObj;

@end

@implementation HMFTimeTests

- (void)setUp
{
    self.testObj = [[HMFTime alloc] init];
}

- (void)tearDown
{
    self.testObj = nil;
}

- (void)testHMFTimeInstantiates
{
    assertThat(self.testObj, notNilValue());
}

// Implement additional tests

@end
