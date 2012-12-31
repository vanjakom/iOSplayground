//
//  NotifiedLabel.m
//  MultiDelegateViaNotificationCenter
//
//  Created by Vanja Komadinovic on 12/22/12.
//  Copyright (c) 2012 Vanja Komadinovic. All rights reserved.
//

#import "NotifiedLabel.h"
#import "NotificationHelper.h"

@interface NotifiedLabel() {
    BOOL connected;
}

- (void)connectInternal;
- (void)disconnectInternal;

@end

@implementation NotifiedLabel

- (void)dealloc
{
    if (connected) {
        [self disconnectInternal];
    }
}

- (void)connect
{
    if (connected) {
        [self disconnectInternal];
    } else {
        [self connectInternal];
    }
}

- (void)reactOnNotification:(NSNotification*)notification;
{
    NSString *message = (NSString *)notification.object;
    
    self.text = message;
}

- (void)connectInternal
{    
    [NotificationHelper registerForNotification:@"TestMessage" WithDelegate:self];
    NSLog(@"Connected: %p", self);
    connected = YES;
}

- (void)disconnectInternal
{
    [NotificationHelper unregisterForNotification:self];
    NSLog(@"Disconnected: %p", self);
    connected = NO;
}

@end
