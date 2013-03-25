//
//  HMFAppDelegateTests.m
//  Kiwi Unit Tests
//
//  Created by Ron Lisle on 3/25/13.
//  Copyright (c) 2013 Ron Lisle. All rights reserved.
//

#import "HMFAppDelegate.h"

#import "Kiwi.h"

SPEC_BEGIN(HMFAppDelegateTests)

context(@"HMFAppDelegate", ^{

    __block HMFAppDelegate *appdel = nil;
    
    beforeEach(^{
        appdel = [[HMFAppDelegate alloc]init];
    });
    
    describe(@"when instantiated", ^{
        specify(^{
            [appdel shouldNotBeNil];
        });
    });
    
});

SPEC_END