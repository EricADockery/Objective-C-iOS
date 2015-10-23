//
//  EADItemStore.m
//  HomePwner
//
//  Created by Ryan on 6/13/14.
//  Copyright (c) Docs Playground Inc. All rights reserved.
//

#import "EADItemStore.h"
#import "EADItem.h"

@interface EADItemStore ()

@property (nonatomic) NSMutableArray *privateItems;

@end

@implementation EADItemStore

+ (instancetype)sharedStore
{
    static EADItemStore *sharedStore;

    // Do I need to create a sharedStore?
    if (!sharedStore) {
        sharedStore = [[self alloc] initPrivate];
    }

    return sharedStore;
}

// If a programmer calls [[BNRItemStore alloc] init], let him
// know the error of his ways
- (instancetype)init
{
    @throw [NSException exceptionWithName:@"Singleton"
                                   reason:@"Use +[EADItemStore sharedStore]"
                                 userInfo:nil];
    return nil;
}

// Here is the real (secret) initializer
- (instancetype)initPrivate
{
    self = [super init];
    if (self) {
        _privateItems = [[NSMutableArray alloc] init];
    }
    return self;
}

- (NSArray *)allItems
{
    return [self.privateItems copy];
}

- (EADItem *)createItem
{
    EADItem *item = [EADItem randomItem];

    [self.privateItems addObject:item];

    return item;
}

@end
