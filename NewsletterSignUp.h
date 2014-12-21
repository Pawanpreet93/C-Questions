//
//  NewsletterSignUp.h
//  C Questions
//
//  Created by Pawan on 09/11/14.
//  Copyright (c) 2014 Pawanpreet. All rights reserved.
//

#import "ViewController.h"

@interface NewsletterSignUp : ViewController
@property (strong, nonatomic) IBOutlet UIBarButtonItem *barButton;
- (IBAction)SubmitButton:(id)sender;
@property (strong, nonatomic) IBOutlet UITextField *textfield;
@property (strong, nonatomic) IBOutlet UITextField *emailfield;
@property (strong, nonatomic) IBOutlet UILabel *upLabel;
@property (strong, nonatomic) IBOutlet UILabel *DownLabel;

@property (strong, nonatomic) IBOutlet UILabel *ThanksLabel;
@property (strong, nonatomic) IBOutlet UIButton *submitb;
@end
