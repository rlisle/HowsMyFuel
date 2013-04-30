//
//  HMFWeather.m
//  HowsMyFuel
//
//  Created by Ron Lisle on 4/29/13.
//  Copyright (c) 2013 Ron Lisle. All rights reserved.
//

#import "HMFWeather.h"

#define kDEFAULT_ZIPCODE    78724

@implementation HMFWeather

@synthesize zipcode = _zipcode;

- (id)init
{
    self = [super init];
    if (self) {
        _zipcode = kDEFAULT_ZIPCODE;
        self.pending = YES;
    }
    return self;
}

- (int)zipcode
{
    return _zipcode;
}

- (void)setZipcode:(int)zipcode
{
    _zipcode = zipcode;
    [self update];
}

- (void)update
{
    self.pending = YES;
    
}

@end
