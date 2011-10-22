//
//  ViewController.h
//  HttpClientTest
//
//  Created by Vanja Komadinovic on 10/19/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Security/Security.h>
#import <CoreFoundation/CoreFoundation.h>

@interface ViewController : UIViewController

@property(nonatomic, retain) IBOutlet UILabel *status;
@property(nonatomic, retain) IBOutlet UITextView *response;
@property(nonatomic, retain) IBOutlet UITextField *url;

-(IBAction)retrieveResponseAsync:(id)sender;

- (void)connection:(NSURLConnection *) connection didReceiveResponse:(NSURLResponse *)response;
- (void)connection:(NSURLConnection *) connection didReceiveData:(NSData *)data;
- (void)connection:(NSURLConnection *) connection didReceiveAuthenticationChallenge:(NSURLAuthenticationChallenge *)challenge;
- (void)connection:(NSURLConnection *) connection didFailWithError:(NSError *)error;
- (BOOL)connection:(NSURLConnection *)connection canAuthenticateAgainstProtectionSpace:(NSURLProtectionSpace *)protectionSpace;

OSStatus extractIdentityAndTrust(CFDataRef inP12data, SecIdentityRef *identity, SecTrustRef *trust);

@end
