//
//  NotifiedLabel.h
//  MultiDelegateViaNotificationCenter
//
//  Created by Vanja Komadinovic on 12/22/12.
//  Copyright (c) 2012 Vanja Komadinovic. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "NotificationDelegate.h"

@interface NotifiedLabel : UILabel<NotificationDelegate>

- (void)dealloc;

- (void)connect;

- (void)reactOnNotification:(NSNotification*)notification;

@end
