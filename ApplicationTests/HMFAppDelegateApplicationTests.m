//
//  ApplicationTests.m
//  ApplicationTests
//
//  Created by Ron Lisle on 4/5/13.
//  Copyright (c) 2013 Ron Lisle. All rights reserved.
//

#import "HMFAppDelegate.h"
#import "HMFViewController.h"
#import "HMFPresenter.h"
#import "HMFPresenterPrivate.h"
#import "HMFInteractor.h"

#import "Kiwi.h"

SPEC_BEGIN(HMFAppDelegateApplicationTests)

context(@"HMFAppDelegate", ^{
    
    __block HMFAppDelegate *appdel = nil;
    
    beforeEach(^{
        appdel = [[HMFAppDelegate alloc]init];
    });
    
    describe(@"when app launches", ^{
        
        describe(@"it creates a window", ^{
            
            specify( ^{
                [appdel application:nil didFinishLaunchingWithOptions:nil];
                [appdel.window shouldNotBeNil];
                [[appdel.window should] beKindOfClass:[UIWindow class]];
            });
            
            it(@"that has a white background", ^{
                [appdel application:nil didFinishLaunchingWithOptions:nil];
                [[[appdel.window backgroundColor] should] equal: [UIColor whiteColor]];
            });
            
            it(@"that is full screen", ^{
                CGRect screen = CGRectMake(10.0, 20.0, 300.0, 400.0);
                id screenMock = [UIScreen nullMock];
                [[UIScreen stubAndReturn:screenMock] mainScreen];
                [screenMock stub:@selector(bounds) andReturn:theValue(screen)];
                [appdel application:nil didFinishLaunchingWithOptions:nil];
                BOOL rectsMatch = CGRectEqualToRect(appdel.window.frame,screen);
                [[theValue(rectsMatch) should] beYes];
            });
            
            it(@"that is Key and Visible", ^{
                [appdel application:nil didFinishLaunchingWithOptions:nil];
                [[theValue(appdel.window.keyWindow) should] beYes];
                [[theValue(appdel.window.isHidden) should] beNo];
            });
            
        });

        context(@"Wires up the VIP architecture", ^{
            
            __block HMFViewController *rootView = nil;
            
            beforeEach(^{
                [appdel application:nil didFinishLaunchingWithOptions:nil];
                rootView = (HMFViewController*)appdel.window.rootViewController;
            });
            
            it(@"makes the view the rootViewController", ^{
                [[rootView should] beKindOfClass:[HMFViewController class]];
            });
            
            it(@"connects the presenter to the view", ^{
                [[rootView.presenter should] beKindOfClass:[HMFPresenter class]];
            });

            it(@"connects the view back to the presenter", ^{
                [(NSObject*)rootView.presenter.view shouldNotBeNil];
            });
            
            it(@"connects the interactor to the presenter", ^{
                [[rootView.presenter.interactor should] beKindOfClass:[HMFInteractor class]];
            });
            
            it(@"connects the presenter to the interactor delegate", ^{
                [(NSObject*)rootView.presenter.interactor.delegate shouldNotBeNil];
            });
        });
        
        
        it(@"returns YES", ^{
            BOOL retval = [appdel application:nil didFinishLaunchingWithOptions:nil];
            [[theValue(retval) should] beTrue];
        });
        
    });
    
});

SPEC_END