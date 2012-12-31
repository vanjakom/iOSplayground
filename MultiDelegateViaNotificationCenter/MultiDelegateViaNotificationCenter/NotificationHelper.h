//
//  NotificationHelper.h
//  MultiDelegateViaNotificationCenter
//
//  Created by Vanja Komadinovic on 12/30/12.
//  Copyright (c) 2012 Vanja Komadinovic. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "NotificationDelegate.h"

@interface NotificationHelper : NSObject

+ (void)pushNotification:(NSString*)notification WithObject:(id)object;

+ (void)registerForNotification:(NSString*)notification WithDelegate:(id<NotificationDelegate>)delegate;
+ (void)unregisterForNotification:(id<NotificationDelegate>)delegate;

@end
