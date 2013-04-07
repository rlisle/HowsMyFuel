//
//  HMFAppDelegate.m
//  HowsMyFuel
//
//  Created by Ron Lisle on 3/25/13.
//  Copyright (c) 2013 Ron Lisle. All rights reserved.
//

#import "HMFAppDelegate.h"
#import "HMFInteractor.h"
#import "HMFPresenter.h"
#import "HMFViewController.h"


@implementation HMFAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
    // Override point for customization after application launch.
    [self createScreen];
    
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)createScreen
{
	HMFInteractor* interactor = [[HMFInteractor alloc] init];
	HMFViewController* view = [[HMFViewController alloc] init];
	HMFPresenter* presenter = [[HMFPresenter alloc] initWithView:view interactor:interactor];
	
	interactor.delegate = presenter;
	view.presenter = presenter;
	
	self.window.rootViewController = view;
}

@end
