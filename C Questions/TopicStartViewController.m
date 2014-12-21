//
//  TopicStartViewController.m
//  C Questions
//
//  Created by Pawan on 05/10/14.
//  Copyright (c) 2014 Pawanpreet. All rights reserved.
//

#import "TopicStartViewController.h"

@interface TopicStartViewController ()

@end

@implementation TopicStartViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    _topicLabel.text=_topicName;
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
