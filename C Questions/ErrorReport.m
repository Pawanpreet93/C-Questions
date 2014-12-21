//
//  ErrorReport.m
//  C Questions
//
//  Created by Pawan on 21/11/14.
//  Copyright (c) 2014 Pawanpreet. All rights reserved.
//

#import "ErrorReport.h"
#import <Parse/Parse.h>
#import "SWRevealViewController.h"
@interface ErrorReport ()

@end

@implementation ErrorReport
-(void) touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    [_textfield resignFirstResponder];
    [_emailfield resignFirstResponder];
}
- (IBAction)SubmitButton:(id)sender {
    _submitb.enabled=false;
    NSString *name = _textfield.text;
    NSString *email = _emailfield.text;
    if([_textfield.text isEqual:@"" ] || [_emailfield.text isEqual:@""]){
        
        UIAlertView *alert = [[UIAlertView alloc]
                              
                              initWithTitle:@"Error"
                              message:@"Topic Name or Error Field left Empty."
                              delegate:nil
                              cancelButtonTitle:@"Dismiss"
                              otherButtonTitles:nil];
        [alert show];
        
    }
    else {
          _submitb.enabled=false;
        PFObject *me = [PFObject objectWithClassName:@"Error"];
        [me setObject:name forKey:@"Topic"];
        [me setObject:email forKey:@"Error"];
        [me saveInBackgroundWithBlock:^(BOOL succeeded, NSError *error) {
            if(!error){
                NSLog(@"Done");
                UIAlertView *alert = [[UIAlertView alloc]
                                      
                                      initWithTitle:@"Success"
                                      message:@"Thanks for reporting an error. We will check and correct it soon."
                                      delegate:nil
                                      cancelButtonTitle:@"Dismiss"
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
