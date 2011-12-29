//
//  ViewController.m
//  TestingImageDrawing
//
//  Created by  on 12/29/11.
//  Copyright (c) 2011 OTP Banka Zemun. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController

@synthesize imageView;

- (IBAction)createImage:(id)sender
{
    NSLog(@"Creating image");
    
    CGSize size = CGSizeMake(240.0f, 240.0f);
    UIGraphicsBeginImageContext(size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    CGContextSetStrokeColorWithColor(context, [[UIColor blackColor] CGColor]);
    CGContextSetFillColorWithColor(context, [[UIColor whiteColor] CGColor]);
    
    CGContextFillRect(context, CGRectMake(0.0f, 0.0f, 240.0f, 240.0f));
    
    CGContextSetLineWidth(context, 5.0f);
    CGContextMoveToPoint(context, 100.0f, 100.0f);
    CGContextAddLineToPoint(context, 150.0f, 150.0f);
    CGContextStrokePath(context);
    
    UIImage* result = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    imageView.image = result;
    [imageView setNeedsDisplay];
    
    NSLog(@"Image creation finished");
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
