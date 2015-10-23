//
//  EADItemStore.h
//  HomePwner
//
//  Created by Ryan on 6/13/14.
//  Copyright (c) Docs Playground Inc. All rights reserved.
//


#import <Foundation/Foundation.h>

@class EADItem;

@interface EADItemStore : NSObject

@property (nonatomic, readonly) NSArray *allItems;

// Notice that this is a class method and prefixed with a + instead of a -
+ (instancetype)sharedStore;
- (EADItem *)createItem;

@end
