//
//  Topic3_ViewController.h
//  C Questions
//
//  Created by Pawan on 08/11/14.
//  Copyright (c) 2014 Pawanpreet. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Topic3_ViewController : UIViewController{
    NSMutableArray *questions;
    NSString *correct;
}

@property(nonatomic,retain) NSMutableArray *questions;
@property (strong, nonatomic) IBOutlet UITextView *questionLabel;
@property (strong, nonatomic) IBOutlet UITextView *LabelAnswer;
- (IBAction)NextQuestion:(id)sender;
- (IBAction)Answerit:(id)sender;
@property (strong, nonatomic) IBOutlet UIButton *HideButton;
@property (strong, nonatomic) IBOutlet UIButton *ViewButton;
- (IBAction)HideAnswer:(id)sender;
@property (strong, nonatomic) IBOutlet UIButton *nextButton;
@property (strong, nonatomic) IBOutlet UILabel *thanksLabel;
@property (strong, nonatomic) IBOutlet UILabel *UpdateLabel;

@end
