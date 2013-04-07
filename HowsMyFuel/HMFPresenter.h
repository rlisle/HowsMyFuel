//
//  HMFPresenter.h
//  HowsMyFuel
//
//  Created by Ron Lisle on 4/7/13.
//  Copyright (c) 2013 Ron Lisle. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "HMFView.h"
#import "HMFInteractor.h"

@interface HMFPresenter : NSObject <HMFInteractorDelegate>

- (id)initWithView:(id<HMFView>)view interactor:(HMFInteractor*)interactor;

@end
