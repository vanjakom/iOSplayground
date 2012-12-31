//
//  NotificationHelper.m
//  MultiDelegateViaNotificationCenter
//
//  Created by Vanja Komadinovic on 12/30/12.
//  Copyright (c) 2012 Vanja Komadinovic. All rights reserved.
//

#import "NotificationHelper.h"

@implementation NotificationHelper

+ (void)pushNotification:(NSString*)notification WithObject:(id)object
{
    [[NSNotificationCenter defaultCenter] postNotificationName:notification object:object];
}

+ (void)registerForNotification:(NSString*)notification WithDelegate:(id<NotificationDelegate>)delegate
{
    [[NSNotificationCenter defaultCenter] addObserver:delegate selector:@selector(reactOnNotification:) name:notification object:nil];
}

+ (void)unregisterForNotification:(id<NotificationDelegate>)delegate
{
    [[NSNotificationCenter defaultCenter] removeObserver:delegate];
}

@end
