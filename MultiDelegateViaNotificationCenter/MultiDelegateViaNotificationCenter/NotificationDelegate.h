//
//  NotificationDelegate.h
//  MultiDelegateViaNotificationCenter
//
//  Created by Vanja Komadinovic on 12/30/12.
//  Copyright (c) 2012 Vanja Komadinovic. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol NotificationDelegate <NSObject>

- (void)reactOnNotification:(NSNotification*)notification;

@end