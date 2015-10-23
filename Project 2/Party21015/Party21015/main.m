//
//  main.m
//  Party21015
//
//  Created by Ryan on 5/19/15.
//  Copyright (c) 2015 Docs Playground. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Party.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Party *myParty =[[Party alloc] init];
        myParty.name = @"Graduation";
        
        NSDateComponents *comps = [[NSDateComponents alloc] init];
        [comps setDay: 20];
        [comps setMonth: 5];
        [comps setYear:2015];
        
        NSCalendar *gregorian = [NSCalendar currentCalendar];
        myParty.date = [gregorian dateFromComponents:comps];
        
        myParty.location = @"205 Duthie Center for Engineering";
        myParty.budget = 200;
        
        
        myParty.guests = 25;
        myParty.host = @"Eric Dockery";
        
        NSLog(@"%@", myParty);
    
    }
    return 0;
}
