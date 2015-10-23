//
//  BNRContainer.m
//  RandomPossessions
//
//  Created by Ryan on 5/21/15.
//  Copyright (c) 2015 Docs Playground. All rights reserved.
//

#import "BNRContainer.h"

@implementation BNRContainer
- (void)addItem:(id)item
{
    if ( !_subItems )
    {
        _subItems = [[NSMutableArray alloc] init];
    }
    
    if ([item isKindOfClass:[BNRItem class]]) {
        [_subItems addObject:item];
    }
    
}


- (unsigned)totalValue
{
    _totalValue = 0;
    for (id item in _subItems) {
        if ([item isMemberOfClass:[BNRItem class]]) {
            _totalValue += [item valueInDollars];
        } else if ([item isMemberOfClass:[BNRContainer class]]) {
            _totalValue += [item totalValue] ;
        }
    }
    return _totalValue;
}
- (NSString *)subItemDescription
{
    _subItemDescription = nil;
    _subItemDescription = [[NSString alloc] initWithFormat:@"\n( "];
    for (id v in _subItems) {
        if ([v isKindOfClass:[BNRItem class]]) {
            _subItemDescription = [_subItemDescription stringByAppendingFormat:@"%@,\n",[v description]];
        }
    }
    _subItemDescription = [_subItemDescription stringByAppendingString:@")"];
    return _subItemDescription;
}
- (NSString *)description
{
    NSString *descriptionString = [[NSString alloc] initWithFormat:@"%@ (%@): This container is worth $%u (value of the container: $%u), recorded date %@%@\n", self.itemName, self.serialNumber, self.totalValue+self.valueInDollars, self.valueInDollars, self.dateCreated, self.subItemDescription];
    return descriptionString;
}

@end
