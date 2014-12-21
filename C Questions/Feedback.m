//
//  Feedback.m
//  C Questions
//
//  Created by Pawan on 21/11/14.
//  Copyright (c) 2014 Pawanpreet. All rights reserved.
//

#import "Feedback.h"
#import <Parse/Parse.h>
#import "SWRevealViewController.h"
@interface Feedback ()

@end

@implementation Feedback
-(void) touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    [_textfield resignFirstResponder];
    [_emailfield resignFirstResponder];
}
- (IBAction)SubmitButton:(id)sender {

    NSString *name = _textfield.text;
    NSString *email = _emailfield.text;
    if([_textfield.text isEqual:@"" ] || [_emailfield.text isEqual:@""]){
        
        UIAlertView *alert = [[UIAlertView alloc]
                              
                              initWithTitle:@"Error"
                              message:@"Name or Feedback Field left Empty."
                              delegate:nil
                              cancelButtonTitle:@"Dismiss"
                              otherButtonTitles:nil];
        [alert show];
        
    }
    else {
          _submitb.enabled=false;
        PFObject *me = [PFObject objectWithClassName:@"Feedback"];
        [me setObject:name forKey:@"Name"];
        [me setObject:email forKey:@"Feedback"];
        [me saveInBackgroundWithBlock:^(BOOL succeeded, NSError *error) {
            if(!error){
                NSLog(@"Done");
                UIAlertView *alert = [[UIAlertView alloc]
                                      
                                      initWithTitle:@"Success"
                                      message:@"Thanks for your Feedback"
                                      delegate:nil
                                      cancelButtonTitle:@"OK"
                                      otherButtonTitles:nil];
                [alert show];
                
                _textfield.hidden=true;
                _submitb.hidden=true;
                _emailfield.hidden=true;
                _upLabel.hidden=true;
               
                _ThanksLabel.hidden=false;
                
            }
            else{
                NSLog(@"Error");
            }
        }];
    }
}


- (void)viewDidLoad {
    [super viewDidLoad];
    _ThanksLabel.hidden=true;
    
    _barButton.target = self.revealViewController;
    _barButton.action = @selector(revealToggle:);
    
    [self.view addGestureRecognizer:self.revealViewController.panGestureRecognizer];
    
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
