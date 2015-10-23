//
//  Party.m
//  Party21015
//
//  Created by Ryan on 5/19/15.
//  Copyright (c) 2015 Docs Playground. All rights reserved.
//

#import "Party.h"

@implementation Party

@synthesize name = _name;
@synthesize date = _date;
@synthesize location = _location;
@synthesize budget = _budget;
@synthesize host = _host;
@synthesize guests = _guests;


-(void) sendReminder
{
    NSLog( @"I am sending a reminder");
}

-(void) cancel
{
    NSLog( @"Sorry to inform you that I am canceling my party");
    
}

-(NSString *) description
{
    NSString *dateString = [NSDateFormatter localizedStringFromDate:_date dateStyle:NSDateFormatterShortStyle timeStyle:NSDateFormatterFullStyle];
    NSString *descriptionString = [[NSString alloc] initWithFormat: @"\n My %@ party is held at %@ and is costing $%d. \n It is on %@ there will be a max of %d guests and %@ will be hosting", _name, _location, _budget, dateString, _guests, _host];
    return descriptionString;
}

@end
