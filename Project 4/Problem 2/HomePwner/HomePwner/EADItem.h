//
//  EADItem.h
//  RandomPossessions
//
//  Created by Ryan on 6/13/14.
//  Copyright (c) Docs Playground Inc. All rights reserved.
//


#import <Foundation/Foundation.h>

@interface EADItem : NSObject

+ (instancetype)randomItem;

- (instancetype)initWithItemName:(NSString *)name valueInDollars:(int)value serialNumber:(NSString *)sNumber;
 
@property (nonatomic, copy) NSString *itemName;
@property (nonatomic, copy) NSString *serialNumber;
@property (nonatomic) int valueInDollars;
@property (nonatomic, readonly, strong) NSDate *dateCreated;
- (instancetype)initWithItemName:(NSString *)name;

@end
