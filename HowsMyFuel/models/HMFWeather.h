//
//  HMFWeather.h
//  HowsMyFuel
//
//  Created by Ron Lisle on 4/29/13.
//  Copyright (c) 2013 Ron Lisle. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface HMFWeather : NSObject

@property float temperature;
@property int zipcode;
@property BOOL pending;
@property (nonatomic, copy) NSString *imageUrl;

@property (nonatomic, copy) NSString *key;

- (void)update;

@end
