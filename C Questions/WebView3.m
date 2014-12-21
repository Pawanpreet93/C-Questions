//
//  WebView3.m
//  C Questions
//
//  Created by Pawan on 24/11/14.
//  Copyright (c) 2014 Pawanpreet. All rights reserved.
//

#import "WebView3.h"

@interface WebView3 ()

@end

@implementation WebView3

- (void)viewDidLoad {
    [super viewDidLoad];
    [webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"https://twitter.com/PawanpreetPawan"]]];
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
