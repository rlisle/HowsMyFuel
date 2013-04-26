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

@protocol HMFInteractorDelegate <NSObject>

@end

@interface HMFInteractor : NSObject
@property (nonatomic, assign) id<HMFInteractorDelegate> delegate;
@property (readonly, strong, nonatomic) HMFTime *time;

@end
