//
//  Doubt.h
//  C Questions
//
//  Created by Pawan on 08/11/14.
//  Copyright (c) 2014 Pawanpreet. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MessageUI/MessageUI.h>

@interface Doubt : UIViewController<MFMailComposeViewControllerDelegate>
@property (strong, nonatomic) IBOutlet UITextView *textfield;
- (IBAction)submit:(id)sender;
@property (strong, nonatomic) IBOutlet UITextView *thanks;
@property (strong, nonatomic) IBOutlet UILabel *upLabel;
@property (strong, nonatomic) IBOutlet UILabel *doubtLabel;
@property (strong, nonatomic) IBOutlet UIButton *submit;
@end
