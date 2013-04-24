//
//  HMFAppDelegateTests.m
//  HowsMyFuel
//
//  OCUnit test cases for HMFAppDelegate
//
//  Created by Ron Lisle on 3/25/13.
//  Copyright (c) 2013 Ron Lisle. All rights reserved.
//

#import <SenTestingKit/SenTestingKit.h>

#import "HMFAppDelegate.h"
#import "HMFViewController.h"
#import "HMFPresenter.h"
#import "HMFPresenterPrivate.h"
#import "HMFInteractor.h"

#define HC_SHORTHAND
#import <OCHamcrestIOS/OCHamcrestIOS.h>

// Uncomment the next two lines to use OCMockito for mock objects:
//#define MOCKITO_SHORTHAND
//#import <OCMockitoIOS/OCMockitoIOS.h>

@interface HMFAppDelegateTests : SenTestCase

@property (nonatomic, strong) HMFAppDelegate *testObj;

@end

@implementation HMFAppDelegateTests

- (void)setUp
{
    self.testObj = [[HMFAppDelegate alloc] init];
}

- (void)tearDown
{
    self.testObj = nil;
}

- (void)testAppDelegateInstantiates
{
    assertThat(self.testObj, notNilValue());
}

- (void)testWindowCreated
{
    [self.testObj application:nil didFinishLaunchingWithOptions:nil];
    assertThat(self.testObj.window, notNilValue());
    assertThat(self.testObj.window, instanceOf([UIWindow class]));
}

- (void)testWindowHasWhiteBackground
{
    [self.testObj application:nil didFinishLaunchingWithOptions:nil];
    assertThat(self.testObj.window.backgroundColor, equalTo([UIColor whiteColor]));
}

- (void)testWindowIsFullScreen
{
    [self.testObj application:nil didFinishLaunchingWithOptions:nil];
    CGRect screenRect = [[UIScreen mainScreen] bounds];
    CGRect frame = self.testObj.window.frame;
    BOOL rectsMatch = CGRectEqualToRect(screenRect, frame);
    assertThatBool(rectsMatch, equalToBool(YES));
}

- (void)testWindowIsKey
{
    [self.testObj application:nil didFinishLaunchingWithOptions:nil];
    assertThatBool(self.testObj.window.keyWindow, equalToBool(YES));
}

- (void)testWindowIsVisible
{
    [self.testObj application:nil didFinishLaunchingWithOptions:nil];
    assertThatBool(self.testObj.window.isHidden, equalToBool(NO));
}

#pragma mark - VIP object graph

- (void)testMakesViewControllerRootViewController
{
    [self.testObj application:nil didFinishLaunchingWithOptions:nil];
    assertThat(self.testObj.window.rootViewController, instanceOf([HMFViewController class]));
}

- (void)testPresenterConnectedToView
{
    [self.testObj application:nil didFinishLaunchingWithOptions:nil];
    HMFViewController *rootView = (HMFViewController *)self.testObj.window.rootViewController;
    assertThat(rootView.presenter, instanceOf([HMFPresenter class]));
}

- (void)testViewConnectedBackToPresenter
{
    [self.testObj application:nil didFinishLaunchingWithOptions:nil];
    HMFViewController *rootView = (HMFViewController *)self.testObj.window.rootViewController;
    assertThat(rootView.presenter.view, notNilValue());
}

- (void)testInteractorConnectedToPresenter
{
    [self.testObj application:nil didFinishLaunchingWithOptions:nil];
    HMFViewController *rootView = (HMFViewController *)self.testObj.window.rootViewController;
    assertThat(rootView.presenter.interactor, instanceOf([HMFInteractor class]));
}

- (void)testPresenterIsInteractorDelegate
{
    [self.testObj application:nil didFinishLaunchingWithOptions:nil];
    HMFViewController *rootView = (HMFViewController *)self.testObj.window.rootViewController;
    assertThat(rootView.presenter.interactor.delegate, notNilValue());
}

- (void)testApplicationDidFinishLaunchingReturnsYes
{
    BOOL retVal = [self.testObj application:nil didFinishLaunchingWithOptions:nil];
    assertThatBool(retVal, equalToBool(YES));
}

@end
