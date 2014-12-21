//
//  MyTopic1_Object.h
//  C Questions
//
//  Created by Pawan on 08/11/14.
//  Copyright (c) 2014 Pawanpreet. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <sqlite3.h>

@interface MyTopic1_Object : NSObject
{
    sqlite3 *db;
}

- (NSMutableArray *) getMyQuestions;
@end
