//
//  HMFInteractorTests.m
//  HowsMyFuel
//
//  Kiwi test cases for HMFInteractor
//
//  Created by Ron Lisle on 4/21/13.
//  Copyright (c) 2013 Ron Lisle. All rights reserved.
//

#import "HMFInteractor.h"

#import "Kiwi.h"

SPEC_BEGIN(HMFInteractorTests)

context(@"HMFInteractor", ^{

    __block HMFInteractor *testObj;

    beforeEach( ^{
        testObj = [[HMFInteractor alloc] init];
    });

    describe(@"when instantiated", ^{
        
        specify( ^{
            
            [testObj shouldNotBeNil];
            
        });
        
    });
    
});

SPEC_END
