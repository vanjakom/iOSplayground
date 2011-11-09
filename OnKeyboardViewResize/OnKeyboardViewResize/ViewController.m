//
//  ViewController.m
//  OnKeyboardViewResize
//
//  Created by Vanja Komadinovic on 11/8/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController

@synthesize field1;
@synthesize field2;
@synthesize field3;
@synthesize field4;
@synthesize textView;

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
    
    field1.delegate = self;
    field2.delegate = self;
    field3.delegate = self;
    field4.delegate = self;
    textView.delegate = self;
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

- (void)textFieldDidBeginEditing:(UITextField *)textField
{
    NSLog(@"textFieldDidBeginEditing");
    
    if (textField.frame.origin.y + textField.frame.size.height > 480 - 216) {
        double offset = 480 - 216 - textField.frame.origin.y - textField.frame.size.height - 20;
        CGRect rect = CGRectMake(0, offset, self.view.frame.size.width, self.view.frame.size.height);
        
        [UIView beginAnimations:nil context:NULL];
        [UIView setAnimationDuration:0.3];
        
        self.view.frame = rect;
        
        [UIView commitAnimations];
    }
}

- (void)textFieldDidEndEditing:(UITextField *)textField
{
    NSLog(@"textFieldDidEndEditing");
   
    [textField resignFirstResponder];
        
    CGRect rect = CGRectMake(0, 20, self.view.frame.size.width, self.view.frame.size.height);
    
    [UIView beginAnimations:nil context:NULL];
    [UIView setAnimationDuration:0.3];
    
    self.view.frame = rect;
    
    [UIView commitAnimations];
}

- (IBAction)hideKeyboard:(id)sender
{
    NSLog(@"hideKeyboard");
    [sender resignFirstResponder];
}

- (void)textViewDidBeginEditing:(UITextView *)textView
{
    NSLog(@"textViewDidBeginEditing"); 
    
    if (textView.frame.origin.y + textView.frame.size.height > 480 - 216) {
        double offset = 480 - 216 - textView.frame.origin.y - textView.frame.size.height - 20;
        CGRect rect = CGRectMake(0, offset, self.view.frame.size.width, self.view.frame.size.height);
        
        [UIView beginAnimations:nil context:NULL];
        [UIView setAnimationDuration:0.3];
        
        self.view.frame = rect;
        
        [UIView commitAnimations];
    }    
}

- (void)textViewDidEndEditing:(UITextView *)textView
{
    NSLog(@"textViewDidEndEditing");
    
    CGRect rect = CGRectMake(0, 20, self.view.frame.size.width, self.view.frame.size.height);
    
    [UIView beginAnimations:nil context:NULL];
    [UIView setAnimationDuration:0.3];
    
    self.view.frame = rect;
    
    [UIView commitAnimations];     
}

- (BOOL)textView:(UITextView *)textView shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text
{
    NSLog(@"textView:shouldChangeTextInRange");
    
    if (range.length == 0) {
        if ([text isEqualToString:@"\n"]) {
            [textView resignFirstResponder];            
            return NO;
        }
    }
        
    return YES;
}

- (void)textViewDidChange:(UITextView *)textView
{
    NSLog(@"textViewDidChange");    
}

- (void)textViewDidChangeSelection:(UITextView *)textView
{
    NSLog(@"textViewDidChangeSelection");    
}

@end
