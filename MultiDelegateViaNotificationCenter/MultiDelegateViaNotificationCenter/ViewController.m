//
//  ViewController.m
//  MultiDelegateViaNotificationCenter
//
//  Created by Vanja Komadinovic on 12/21/12.
//  Copyright (c) 2012 Vanja Komadinovic. All rights reserved.
//

#import "ViewController.h"
#import "NotificationHelper.h"

@implementation ViewController

- (IBAction)connectListener1:(id)sender
{
    [self.listenerLabel1 connect];
}

- (IBAction)connectListener2:(id)sender
{
    [self.listenerLabel2 connect];
}

- (IBAction)connectListener3:(id)sender
{
    [self.listenerLabel3 connect];
}

- (IBAction)broadcastMessage:(id)sender
{
    [NotificationHelper pushNotification:@"TestMessage" WithObject:self.messageField.text];
    
    NSLog(@"Message broadcasted");
}


- (IBAction)dissmissKeyboard:(id)sender
{
    [self resignFirstResponder];
}

@end
