//
//  BNRAssetLocation.m
//  HomePwner
//
//  Created by Ryan on 7/14/15.
//  Copyright (c) 2015 Big Nerd Ranch. All rights reserved.
//
#import <UIKit/UIKit.h>

#import "BNRAssetLocation.h"
#import "BNRItemStore.h"
#import "BNRItem.h"

@implementation BNRAssetLocation

- (instancetype)init
{
    return [super initWithStyle:UITableViewStylePlain];
}

- (instancetype)initWithStyle:(UITableViewStyle)style
{
    return [self init];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"UITableViewCell"];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [[[BNRItemStore sharedStore] allRoomLocations] count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"UITableViewCell"
                                                            forIndexPath:indexPath];
    
    NSArray *allrooms = [[BNRItemStore sharedStore] allRoomLocations];
    NSManagedObject *assetType = allrooms[indexPath.row];
    
    // Use key-value coding to get the asset type's label
    NSString *assetLabel = [assetType valueForKey:@"roomLocation"];
    cell.textLabel.text = assetLabel;
    
    // Checkmark the one that is currently selected
    if (assetType == self.item.assetType) {
        cell.accessoryType = UITableViewCellAccessoryCheckmark;
    } else {
        cell.accessoryType = UITableViewCellAccessoryNone;
    }
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView cellForRowAtIndexPath:indexPath];
    
    cell.accessoryType = UITableViewCellAccessoryCheckmark;
    
    NSArray *allAssets = [[BNRItemStore sharedStore] allRoomLocations];
    NSManagedObject *assetType = allAssets[indexPath.row];
    self.item.assetLocation = assetType;
    
    [self.navigationController popViewControllerAnimated:YES];
}

@end
