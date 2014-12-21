//
//  Topic1_ViewController.m
//  C Questions
//
//  Created by Pawan on 08/11/14.
//  Copyright (c) 2014 Pawanpreet. All rights reserved.
//

#import "Topic1_ViewController.h"
#import "Topic1_Object.h"
#import "MyTopic1_Object.h"

@interface Topic1_ViewController ()

@end

@implementation Topic1_ViewController
@synthesize questions;

 NSInteger currentIndex = 0;

- (void)viewDidLoad {
    [super viewDidLoad];
    currentIndex=0;
    
    _thanksLabel.hidden=YES;
    _UpdateLabel.hidden=YES;
    _HideButton.hidden=YES;
    _LabelAnswer.hidden=YES;
    
    MyTopic1_Object *myquestions = [[MyTopic1_Object alloc]init];
    self.questions=[myquestions getMyQuestions];
    
    [self.questionLabel setText:((Topic1_Object *)[self.questions objectAtIndex:0]).question];
    
    [self.LabelAnswer setText:((Topic1_Object *)[self.questions objectAtIndex:0]).answer];
    
    
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)Answerit:(id)sender{
    
    _HideButton.hidden=NO;
    _LabelAnswer.hidden=NO;
    _ViewButton.hidden=YES;
    _questionLabel.hidden=YES;
    
}

- (IBAction)HideAnswer:(id)sender{
    
    _HideButton.hidden=YES;
    _LabelAnswer.hidden=YES;
    _ViewButton.hidden=NO;
    _questionLabel.hidden=NO;
    
}
- (IBAction)NextQuestion:(id)sender {
    
   // static NSInteger currentIndex = 0;
    
    if (++currentIndex == [self.questions count]) {
        //currentIndex=0;
//        UIStoryboard *sb = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
//        UIViewController *vc = [sb instantiateViewControllerWithIdentifier:@"end"];
//        [vc.navigationController pushViewController:@"View" animated:YES];
//        [self presentViewController:vc animated:YES completion:NULL];
        _thanksLabel.hidden=NO;
        _UpdateLabel.hidden=NO;
        _HideButton.hidden=YES;
        _LabelAnswer.hidden=YES;
        _ViewButton.hidden=YES;
        _questionLabel.hidden=YES;
        _nextButton.hidden=YES;
        
        
    }
    
    else{
        
        _LabelAnswer.hidden=YES;
        _questionLabel.hidden=NO;
        _HideButton.hidden=YES;
        _ViewButton.hidden=NO;
        
        Topic1_Object *aques = (Topic1_Object *) [self.questions objectAtIndex: currentIndex];
        [self.questionLabel setText:aques.question];
        [self.LabelAnswer setText:aques.answer];
        
        
        
    }
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
