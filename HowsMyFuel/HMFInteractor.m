//
//  HMFInteractor.m
//  HowsMyFuel
//
//  Created by Ron Lisle on 4/7/13.
//  Copyright (c) 2013 Ron Lisle. All rights reserved.
//

#import "HMFInteractor.h"

@interface HMFInteractor()
// private properties & methods go here.
@end

@implementation HMFInteractor

@synthesize time = _time;   // Readonly

- (id)init
{
    self = [super init];
    if (self) {
        _time = [[HMFTime alloc] init];
        _time.delegate = self;
    }
    return self;
}

- (void)updatedTimeString:(NSString *)timeString
{
    NSLog(@"Presenter time delegate called: %@",timeString);
}

@end
