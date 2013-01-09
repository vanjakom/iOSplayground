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
    UIButton* button = sender;
    NSString* title = [self.listenerLabel1 connect];
    
    [button setTitle:title forState:UIControlStateNormal];
}

- (IBAction)connectListener2:(id)sender
{
    UIButton* button = sender;
    NSString* title = [self.listenerLabel2 connect];
    
    [button setTitle:title forState:UIControlStateNormal];
}

- (IBAction)connectListener3:(id)sender
{
    UIButton* button = sender;
    NSString* title = [self.listenerLabel3 connect];
    
    [button setTitle:title forState:UIControlStateNormal];
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
