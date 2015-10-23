//
//  Party.h
//  Party21015
//
//  Created by Ryan on 5/19/15.
//  Copyright (c) 2015 Docs Playground. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Party : NSObject

@property (strong, nonatomic) NSString *name;
@property (strong, nonatomic) NSDate *date;
@property (strong, nonatomic) NSString *location;
@property int budget;

@property (strong, nonatomic)NSString *host;
@property int guests; 

-(void) sendReminder;
-(void) cancel;


@end
