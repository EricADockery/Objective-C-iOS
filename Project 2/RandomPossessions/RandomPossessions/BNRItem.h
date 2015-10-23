//
//  BNRItem.h
//  RandomPossessions
//
//  Created by Ryan on 5/19/15.
//  Copyright (c) 2015 Docs Playground. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BNRItem : NSObject
{
    
    //protected scope
    NSString *_itemName;
    NSString *_serialNumber;
    int _valueInDollars;
    NSDate *_dateCreated;
    int count;
    
}
+(instancetype) randomItem;

//public methods
-(instancetype) initWithItemName: (NSString *) name valueInDollars: (int) value serialNumber: (NSString *) sNumber;

-(instancetype) initWithItemName: (NSString *) name;



//getters and setters
-(void) setItemName:(NSString *) str;
-(NSString *) itemName;

-(void) setSerialNumber : (NSString *) str;
-(NSString *)serialNumber;

-(void)setValueInDollars: (int) v;
-(int)valueInDollars;

-(void) initalizeDateCreated;
-(NSDate *) dateCreated;

@end
