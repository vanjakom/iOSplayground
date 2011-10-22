//
//  ViewController.m
//  HttpClientTest
//
//  Created by Vanja Komadinovic on 10/19/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController

@synthesize url;
@synthesize response;
@synthesize status;

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
    return YES;
}

- (IBAction)retrieveResponseSync:(id)sender
{
    [status setText:@"Retrieving response sync"];
    [response setText:@""];
    
    NSURL* requestUrl = [[NSURL alloc] initWithString:url.text];
    NSURLRequest* request = [NSURLRequest requestWithURL:requestUrl cachePolicy:NSURLRequestReloadIgnoringCacheData timeoutInterval:60.0];
    
    NSData* data = [NSURLConnection sendSynchronousRequest:request returningResponse:nil error:nil];
    
    NSString* responseString = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
    
    [response setText:responseString];
    
    [status setText:@"Response retrieved sync"];
}

- (IBAction)retrieveResponseAsync:(id)sender 
{
    [status setText:@"Retrieving response async"];
    [response setText:@""];
    
    NSURL* requestUrl = [[NSURL alloc] initWithString:url.text];
    NSURLRequest* request = [NSURLRequest requestWithURL:requestUrl cachePolicy:NSURLRequestReloadIgnoringCacheData timeoutInterval:60.0];
    
    
    NSURLConnection* connection = [[NSURLConnection alloc] initWithRequest:request delegate:self];
    [connection start];
}

- (void)connection:(NSURLConnection*) connection didReceiveResponse:(NSURLResponse *)response
{
    NSLog(@"Response recieved");
}

- (void)connection:(NSURLConnection*) connection didReceiveData:(NSData *)data
{
    NSLog(@"Data recieved");    
    
    NSString* responseString = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
    
    [response setText:responseString];
    
    [status setText:@"Response retrieved async"];
}

@end
