//
//  HMFPresenterTests.m
//  HowsMyFuel
//
//  Kiwi test cases for HMFPresenter
//
//  Created by Ron Lisle on 4/21/13.
//  Copyright (c) 2013 Ron Lisle. All rights reserved.
//

#import "HMFPresenter.h"

#import "Kiwi.h"

SPEC_BEGIN(HMFPresenterTests)

context(@"HMFPresenter", ^{

    __block HMFPresenter *testObj;

    beforeEach( ^{
        testObj = [[HMFPresenter alloc] init];
    });

    describe(@"when instantiated", ^{
        
        specify( ^{
            
            [testObj shouldNotBeNil];
            
        });
        
    });
    
});

SPEC_END
