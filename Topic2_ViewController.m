//
//  Topic2_ViewController.m
//  C Questions
//
//  Created by Pawan on 08/11/14.
//  Copyright (c) 2014 Pawanpreet. All rights reserved.
//

#import "Topic2_ViewController.h"
#import "Topic2_Object.h"
#import "MyTopic2_Object.h"
@interface Topic2_ViewController ()

@end

@implementation Topic2_ViewController
@synthesize questions;
 NSInteger currentIndex1 = 0;
- (void)viewDidLoad {
    [super viewDidLoad];
    
    _HideButton.hidden=YES;
    _LabelAnswer.hidden=YES;
    _thanksLabel.hidden=YES;
    _UpdateLabel.hidden=YES;
    
    currentIndex1=0;
    
    MyTopic2_Object *myquestions = [[MyTopic2_Object alloc]init];
    self.questions=[myquestions getMyQuestions];
    
    [self.questionLabel setText:((Topic2_Object *)[self.questions objectAtIndex:0]).question];
    
    [self.LabelAnswer setText:((Topic2_Object *)[self.questions objectAtIndex:0]).answer];
    
    

    // Do any additional setup after loading the view.
}
- (IBAction)Answerit:(id)sender{
    _HideButton.hidden=NO;
    _LabelAnswer.hidden=NO;
    _ViewButton.hidden=YES;
    _questionLabel.hidden=YES;
}
- (IBAction)NextQuestion:(id)sender {
    

    if (++currentIndex1 == [self.questions count]) {
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
        Topic2_Object *aques = (Topic2_Object *) [self.questions objectAtIndex: currentIndex1];
        [self.questionLabel setText:aques.question];
        [self.LabelAnswer setText:aques.answer];
        
        
        
    }
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)HideAnswer:(id)sender{
    
    _HideButton.hidden=YES;
    _LabelAnswer.hidden=YES;
    _ViewButton.hidden=NO;
    _questionLabel.hidden=NO;
    
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
