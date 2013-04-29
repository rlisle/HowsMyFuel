//
//  HMFInteractor.h
//  HowsMyFuel
//
//  The interactor is responsible for handling all interaction.
//
//  Created by Ron Lisle on 4/7/13.
//  Copyright (c) 2013 Ron Lisle. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "HMFTime.h"
#import "HMFWeather.h"

@protocol HMFInteractorDelegate <NSObject>

- (void)updateTimeString:(NSString *)timeString;

@end

@interface HMFInteractor : NSObject <HMFTimeUpdate>
@property (assign, nonatomic) id<HMFInteractorDelegate> delegate;
@property (readonly, strong) HMFTime *time;
@property (strong, nonatomic) HMFWeather *weather;

@end
