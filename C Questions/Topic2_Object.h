//
//  Topic2_Object.h
//  C Questions
//
//  Created by Pawan on 08/11/14.
//  Copyright (c) 2014 Pawanpreet. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Topic2_Object : NSObject
{
    NSInteger questionid;
    NSString *question;
    NSString *answer;
}

@property (nonatomic,retain)NSString *question;
@property (nonatomic,retain)NSString *answer;
@property (nonatomic, assign) NSInteger questionid;


@end
