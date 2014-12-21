//
//  Topic5_ViewController.m
//  C Questions
//
//  Created by Pawan on 08/11/14.
//  Copyright (c) 2014 Pawanpreet. All rights reserved.
//

#import "Topic5_ViewController.h"
#import "Topic5_Object.h"
#import "MyTopic5_Object.h"
@interface Topic5_ViewController ()

@end

@implementation Topic5_ViewController
@synthesize questions;

 NSInteger currentIndex4 = 0;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _HideButton.hidden=YES;
    _LabelAnswer.hidden=YES;
    _thanksLabel.hidden=YES;
    _UpdateLabel.hidden=YES;
    
    currentIndex4=0;
    
    MyTopic5_Object *myquestions = [[MyTopic5_Object alloc]init];
    self.questions=[myquestions getMyQuestions];
    
    [self.questionLabel setText:((Topic5_Object *)[self.questions objectAtIndex:0]).question];
    
    [self.LabelAnswer setText:((Topic5_Object *)[self.questions objectAtIndex:0]).answer];
    
    

    // Do any additional setup after loading the view.
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
    
    
    if (++currentIndex4 == [self.questions count]) {
        _thanksLabel.hidden=NO;
        _UpdateLabel.hidden=NO;
        _HideButton.hidden=YES;
        _LabelAnswer.hidden=YES;
        _ViewButton.hidden=YES;
        _questionLabel.hidden=YES;
        _nextButton.hidden=YES;
        
    }else{
        
        _LabelAnswer.hidden=YES;
        _questionLabel.hidden=NO;
        _HideButton.hidden=YES;
        _ViewButton.hidden=NO;
        Topic5_Object *aques = (Topic5_Object *) [self.questions objectAtIndex: currentIndex4];
        [self.questionLabel setText:aques.question];
        [self.LabelAnswer setText:aques.answer];
        
        
        
    }
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
