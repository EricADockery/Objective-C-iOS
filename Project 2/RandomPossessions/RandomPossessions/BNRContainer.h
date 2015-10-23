//
//  BNRContainer.h
//  RandomPossessions
//
//  Created by Ryan on 5/21/15.
//  Copyright (c) 2015 Docs Playground. All rights reserved.
//

#import "BNRItem.h"

@interface BNRContainer : BNRItem
{
    NSMutableArray *_subItems;
    unsigned _totalValue;
    NSString *_subItemDescription;
}


- (NSString *)subItemDescription;
- (void)addItem:(id)item;
- (unsigned)totalValue;
// Override instance member
- (NSString *)description;
@end
