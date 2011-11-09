//
//  ViewController.h
//  OnKeyboardViewResize
//
//  Created by Vanja Komadinovic on 11/8/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITextFieldDelegate, UITextViewDelegate>

@property (nonatomic, retain) IBOutlet UITextField* field1;
@property (nonatomic, retain) IBOutlet UITextField* field2;
@property (nonatomic, retain) IBOutlet UITextField* field3;
@property (nonatomic, retain) IBOutlet UITextField* field4;
@property (nonatomic, retain) IBOutlet UITextView* textView;

- (IBAction)hideKeyboard:(id)sender;

@end
