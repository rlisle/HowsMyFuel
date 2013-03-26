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
    
    describe(@"when didFinishlaunchingWithOptions is called", ^{
        
        beforeEach(^{
        });
       
        // Note: on 3/26/13 the following test fails if pod isn't updated to use Kiwi :head
        it(@"sets window property", ^{
            id windowMock1 = [UIWindow mock];
            [[UIWindow stubAndReturn:windowMock1] alloc];
            id screenMock = [UIScreen mock];
            [[UIScreen stubAndReturn:screenMock] mainScreen];
            [[screenMock should] receive:@selector(bounds)];
            id windowMock2 = [UIWindow mock];
            [[windowMock1 should] receive:@selector(initWithFrame:) andReturn:windowMock2];
            [[windowMock2 should] receive:@selector(setBackgroundColor:)];
            [[[windowMock2 should] receive] makeKeyAndVisible];
            [appdel application:nil didFinishLaunchingWithOptions:nil];
            [appdel.window shouldNotBeNil];
            
        });
    });
    
});

SPEC_END