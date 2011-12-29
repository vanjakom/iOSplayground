//
//  ViewController.h
//  TestingImageDrawing
//
//  Created by  on 12/29/11.
//  Copyright (c) 2011 OTP Banka Zemun. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (nonatomic, retain) IBOutlet UIImageView* imageView;

- (IBAction)createImage:(id)sender;

@end
