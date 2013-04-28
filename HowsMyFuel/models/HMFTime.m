//
//  HMFTime.m
//  HowsMyFuel
//
//  Created by Ron Lisle on 4/26/13.
//  Copyright (c) 2013 Ron Lisle. All rights reserved.
//

#import "HMFTime.h"

@implementation HMFTime

- (id)init
{
    self = [super init];
    if (self != nil) {
        [self startClockTimer];
    }
    return self;
}

- (void)startClockTimer {
    [self setTimer:[NSTimer scheduledTimerWithTimeInterval:1.0
                                                    target:self
                                                  selector:@selector(handleClockTimer)
                                                  userInfo:nil
                                                   repeats:YES]];
}

- (void)handleClockTimer {
    if (self.delegate){
        NSDate *now = [NSDate date];
        NSString *timeString = [self formatTimeString:now];
        [self.delegate updatedTimeString:timeString];
    }
}

- (NSString *)formatTimeString:(NSDate*)now {
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setTimeStyle:NSDateFormatterShortStyle];
    [formatter setAMSymbol:@""];
    [formatter setPMSymbol:@""];
    NSString * formattedTimeString = [formatter stringFromDate:now];
    return [formattedTimeString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
}

@end
