//
//  HMFAppDelegate.m
//  HowsMyFuel
//
//  Created by Ron Lisle on 3/25/13.
//  Copyright (c) 2013 Ron Lisle. All rights reserved.
//

#import "HMFAppDelegate.h"

@implementation HMFAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.viewController = [[HMFViewController alloc] initWithNibName:@"HMFViewController" bundle:nil];
    self.window.rootViewController = self.viewController;
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    return YES;
}

@end
