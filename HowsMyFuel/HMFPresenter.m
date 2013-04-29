//
//  HMFPresenter.m
//  HowsMyFuel
//
//  Created by Ron Lisle on 4/7/13.
//  Copyright (c) 2013 Ron Lisle. All rights reserved.
//

#import "HMFPresenter.h"
#import "HMFPresenterPrivate.h"

@implementation HMFPresenter

- (id)initWithView:(id)view interactor:(HMFInteractor *)interactor
{
	if ((self = [super init]))
	{
		_view = view;
		
		_interactor = interactor;
		_interactor.delegate = self;
	}
	
	return self;
}

- (void)handleMapTap
{
    [self.view centerMapOnUser];
}

- (void)updateTimeString:(NSString *)timeString
{
    
}

@end
