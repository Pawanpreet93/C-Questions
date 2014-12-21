//
//  MyTopic4_Object.m
//  C Questions
//
//  Created by Pawan on 08/11/14.
//  Copyright (c) 2014 Pawanpreet. All rights reserved.
//

#import "MyTopic4_Object.h"
#import "Topic4_Object.h"
@implementation MyTopic4_Object
-(NSMutableArray *) getMyQuestions{
    NSMutableArray *questionArray = [[NSMutableArray alloc] init];
    @try {
        NSFileManager *fileMgr = [NSFileManager defaultManager];
        NSString *dbPath = [[[NSBundle mainBundle] resourcePath ]stringByAppendingPathComponent:@"CQuestions_1.0.sqlite"];
        BOOL success = [fileMgr fileExistsAtPath:dbPath];
        if(!success)
        {
            NSLog(@"Cannot locate database file '%@'.", dbPath);
        }
        if(!(sqlite3_open([dbPath UTF8String], &db) == SQLITE_OK))
        {
            NSLog(@"An error has occured.");
        }
        const char *sql = "SELECT * FROM  functions";
        
        sqlite3_stmt *sqlStatement;
        if(sqlite3_prepare(db, sql, -1, &sqlStatement, NULL) != SQLITE_OK)
        {
            NSLog(@"Problem with prepare statement");
        }
        
        while (sqlite3_step(sqlStatement)==SQLITE_ROW) {
            Topic4_Object *MyQues = [[Topic4_Object alloc]init];
            
            MyQues.questionid = sqlite3_column_int(sqlStatement, 0);
            
            MyQues.question = [NSString stringWithUTF8String:(char *) sqlite3_column_text(sqlStatement,1)];
            
            
            MyQues.answer = [NSString stringWithUTF8String:(char *) sqlite3_column_text(sqlStatement,2)];
            
            [questionArray addObject:MyQues];
        }
    }
    @catch (NSException *exception) {
        NSLog(@"An exception occured: %@", [exception reason]);
    }
    @finally {
        return questionArray;
    }
    
    
}



@end
