//
//  HMFTime.h
//  HowsMyFuel
//
//  Created by Ron Lisle on 4/26/13.
//  Copyright (c) 2013 Ron Lisle. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol HMFTimeUpdate <NSObject>
- (void)updatedTimeString:(NSString *)timeString;
@end

@interface HMFTime : NSObject

@property (strong, nonatomic) id <HMFTimeUpdate> delegate;
@property (strong, nonatomic) NSTimer *timer;

@end
