//
//  HMFTime.m
//  HowsMyFuel
//
//  Created by Ron Lisle on 4/26/13.
//  Copyright (c) 2013 Ron Lisle. All rights reserved.
//

#import "HMFTime.h"

@implementation HMFTime

- (id)init
{
    self = [super init];
    if (self != nil) {
        [self startClockTimer];
    }
    return self;
}

- (void)startClockTimer {
    [self setTimer:[NSTimer scheduledTimerWithTimeInterval:1.0
                                                    target:self
                                                  selector:@selector(handleClockTimer)
                                                  userInfo:nil
                                                   repeats:YES]];
}

- (void)handleClockTimer {
    if (self.delegate){
        [self.delegate updatedTimeString:nil];
    }
}

@end
