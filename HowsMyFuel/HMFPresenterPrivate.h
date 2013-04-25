//
//  HMFPresenterPrivate.h
//  HowsMyFuel
//
//  Created by Ron Lisle on 4/7/13.
//  Copyright (c) 2013 Ron Lisle. All rights reserved.
//

#import "HMFPresenter.h"

@interface HMFPresenter ()

@property (nonatomic, weak) id<HMFView>   view;
@property (nonatomic, strong) HMFInteractor* interactor;

@end
