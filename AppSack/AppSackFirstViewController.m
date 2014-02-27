//
//  AppSackFirstViewController.m
//  AppSack
//
//  Created by Cody Dillon on 2/25/14.
//  Copyright (c) 2014 App Sack. All rights reserved.
//

#import "AppSackFirstViewController.h"
#import "GTLServiceUserendpoint.h"
#import "GTLQueryUserendpoint.h"
#import "GTLUserendpointAuthResponse.h"
#import "GTLUserendpointUser.h"

@interface AppSackFirstViewController ()

@end

@implementation AppSackFirstViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    static GTLServiceUserendpoint *service = nil;
    
    if (!service) {
        
        service = [[GTLServiceUserendpoint alloc] init];
        service.retryEnabled = YES;
        //[GTMHTTPFetcher setLoggingEnabled:YES];
        
        GTLQueryUserendpoint *query = [GTLQueryUserendpoint queryForLogInUserWithEmail:@"cody.dillonc@gmail.com" password:@"monkey5"];
        
        [service executeQuery:query completionHandler:^(GTLServiceTicket *ticket, GTLUserendpointAuthResponse *object, NSError *error) {
            
            
            if (!error) {
                [self displayUserInfo:object];
            }
            else if([object inError]) {
                [self displayError:[object error]];
            }
            else {
                [self displayError:[error localizedDescription]];
            }
            
        }];
    }
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)displayUserInfo:(GTLUserendpointAuthResponse *) authResponse {
    
    GTLUserendpointUser *user = [authResponse user];
    
    NSString *apiKey = [authResponse apiKey];
    
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Success"
                                                    message:[[@"User: " stringByAppendingString:[user displayName]] stringByAppendingString:[@", apiKey: " stringByAppendingString:apiKey]]
                                                   delegate:nil
                                          cancelButtonTitle:@"OK"
                                          otherButtonTitles:nil];
    [alert show];
}

- (void)displayError:(NSString *) error {
    
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Error"
                                                    message:error
                                                   delegate:nil
                                          cancelButtonTitle:@"OK"
                                          otherButtonTitles:nil];
    [alert show];
}

- (IBAction)submitPressed:(UIButton *)sender {
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Submission Complete"
                                                    message:@"Thanks for submitting your app idea.  Note that you have 24 hours to edit your idea before it is locked permanently."
                                                   delegate:nil
                                          cancelButtonTitle:@"OK"
                                          otherButtonTitles:nil];
    [alert show];
}

@end
