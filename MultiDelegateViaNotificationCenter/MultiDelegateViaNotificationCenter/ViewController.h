//
//  ViewController.h
//  MultiDelegateViaNotificationCenter
//
//  Created by Vanja Komadinovic on 12/21/12.
//  Copyright (c) 2012 Vanja Komadinovic. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "NotifiedLabel.h"

@interface ViewController : UIViewController

@property (nonatomic, retain) IBOutlet NotifiedLabel* listenerLabel1;
@property (nonatomic, retain) IBOutlet NotifiedLabel* listenerLabel2;
@property (nonatomic, retain) IBOutlet NotifiedLabel* listenerLabel3;

@property (nonatomic, retain) IBOutlet UITextField* messageField;

- (IBAction)connectListener1:(id)sender;
- (IBAction)connectListener2:(id)sender;
- (IBAction)connectListener3:(id)sender;

- (IBAction)broadcastMessage:(id)sender;

- (IBAction)dissmissKeyboard:(id)sender;

@end
