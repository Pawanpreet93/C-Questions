//
//  ContactUs.m
//  C Questions
//
//  Created by Pawan on 21/11/14.
//  Copyright (c) 2014 Pawanpreet. All rights reserved.
//

#import "ContactUs.h"
#import "SWRevealViewController.h"
@interface ContactUs ()

@end

@implementation ContactUs


-(void) touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    [_textfield resignFirstResponder];
}
- (IBAction)submit:(id)sender {
    
    NSString *emailTitle = @"Contact - C Questions App";
    // Email Content
    
    NSString *messageBody = _textfield.text;
    // To address
    NSArray *toRecipents = [NSArray arrayWithObject:@"progenitorcoders@outlook.com"];
    
    MFMailComposeViewController *mc = [[MFMailComposeViewController alloc] init];
    mc.mailComposeDelegate = self;
    [mc setSubject:emailTitle];
    [mc setMessageBody:messageBody isHTML:YES];
    [mc setToRecipients:toRecipents];
    
    // Present mail view controller on screen
    [self presentViewController:mc animated:YES completion:NULL];
    
}

- (void) mailComposeController:(MFMailComposeViewController *)controller didFinishWithResult:(MFMailComposeResult)result error:(NSError *)error
{
    switch (result)
    {
        case MFMailComposeResultCancelled:
            NSLog(@"Mail cancelled");
            break;
        case MFMailComposeResultSaved:
            NSLog(@"Mail saved");
            break;
        case MFMailComposeResultSent:
            NSLog(@"Mail sent");
            _thanks.hidden=NO;
            _textfield.hidden=YES;
            _upLabel.hidden=YES;
            _submit.hidden=YES;
            _mailLabel.hidden=YES;
            break;
        case MFMailComposeResultFailed:
            NSLog(@"Mail sent failure: %@", [error localizedDescription]);
            break;
        default:
            break;
    }
    
    // Close the Mail Interface
    [self dismissViewControllerAnimated:YES completion:NULL];
}

- (void)viewDidLoad {
    _barButton.target = self.revealViewController;
    _barButton.action = @selector(revealToggle:);
    
    _thanks.hidden=YES;

    
    // Set the gesture
    [self.view addGestureRecognizer:self.revealViewController.panGestureRecognizer];
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
