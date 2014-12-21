//
//  ContactUs.h
//  C Questions
//
//  Created by Pawan on 21/11/14.
//  Copyright (c) 2014 Pawanpreet. All rights reserved.
//

#import "ViewController.h"
#import <MessageUI/MessageUI.h>
@interface ContactUs : ViewController<MFMailComposeViewControllerDelegate>
@property (strong, nonatomic) IBOutlet UIBarButtonItem *barButton;
@property (strong, nonatomic) IBOutlet UITextView *textfield;
@property (strong, nonatomic) IBOutlet UILabel *thanks;
@property (strong, nonatomic) IBOutlet UILabel *upLabel;
@property (strong, nonatomic) IBOutlet UILabel *mailLabel;
@property (strong, nonatomic) IBOutlet UIButton *submit;
- (IBAction)submit:(id)sender;
@end
