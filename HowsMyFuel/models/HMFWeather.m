//
//  HMFWeather.m
//  HowsMyFuel
//
//  Created by Ron Lisle on 4/29/13.
//  Copyright (c) 2013 Ron Lisle. All rights reserved.
//

#import "HMFWeather.h"

@implementation HMFWeather

- (id)init
{
    self = [super init];
    if (self) {
        self.pending = YES;
    }
    return self;
}

@end
