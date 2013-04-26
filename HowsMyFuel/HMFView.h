//
//  HMFView.h
//  HowsMyFuel
//
//  Created by Ron Lisle on 4/7/13.
//  Copyright (c) 2013 Ron Lisle. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol HMFView <NSObject>

@property (copy, nonatomic) NSString *timeText;

- (void)centerMapOnUser;

@end
