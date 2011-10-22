//
//  ViewController.h
//  HttpClientTest
//
//  Created by Vanja Komadinovic on 10/19/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property(nonatomic, retain) IBOutlet UILabel* status;
@property(nonatomic, retain) IBOutlet UITextView* response;
@property(nonatomic, retain) IBOutlet UITextField* url;

-(IBAction)retrieveResponseSync:(id)sender;
-(IBAction)retrieveResponseAsync:(id)sender;

@end
