//
//  EADItemsViewController.m
//  HomePwner
//
// Created by Ryan on 6/13/14.
//  Copyright (c) Docs Playground Inc. All rights reserved.
//
#import "EADItemsViewController.h"
#import "EADItemStore.h"
#import "EADItem.h"

@implementation EADItemsViewController

- (instancetype)init
{
    // Call the superclass's designated initializer
    self = [super initWithStyle:UITableViewStylePlain];
    if (self) {
        for (int i = 0; i < 5; i++) {
            [[EADItemStore sharedStore] createItem];
        }
    }
    NSLog(@"sizeof(NSInteger) = %@", @(sizeof(NSInteger)));
    return self;
}

- (instancetype)initWithStyle:(UITableViewStyle)style
{
    return [self init];
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    [self.tableView registerClass:[UITableViewCell class]
           forCellReuseIdentifier:@"UITableViewCell"];
    
    
    
    self.tableView.sectionFooterHeight = 44;
    self.tableView.sectionHeaderHeight = 60;
    self.clearsSelectionOnViewWillAppear = NO;
    self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
    
    [self.tableView registerClass:[UITableViewHeaderFooterView class] forHeaderFooterViewReuseIdentifier:@"UITableViewHeaderFooterView"];
    
    
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    return 2;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    
    NSArray *items = [[EADItemStore sharedStore] allItems];
    int sum = 0;
    if (section == 0) {
        for (EADItem *i in items) {
            if (i.valueInDollars > 50.0) {
                sum++;
            }
        }
    }
    
    if (section == 1) {
        for (EADItem *i in items) {
            if (i.valueInDollars < 50.0) {
                sum++;
            }
        }
    }
    
    return sum;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"UITableViewCell" forIndexPath:indexPath];
    
    NSArray *items = [[EADItemStore sharedStore] allItems];
    

    NSMutableArray *section0 = [[NSMutableArray alloc] init];
    NSMutableArray *section1 = [[NSMutableArray alloc] init];
    
    for (EADItem *i in items) {
        if (i.valueInDollars > 50.0) {
            [section0 addObject:i];
        } else {
            [section1 addObject:i];
        }
    }
    
    if (indexPath.section == 0) {
        EADItem *item = section0[indexPath.row];
        cell.textLabel.text = [item description];
        
    } else if (indexPath.section == 1) {
        EADItem *item = section1[indexPath.row];
        cell.textLabel.text = [item description];
    }
    
    return cell;
    
}
- (UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section {
    
    UITableViewHeaderFooterView *footer = [tableView dequeueReusableHeaderFooterViewWithIdentifier:@"UITableViewHeaderFooterView"];
    footer.textLabel.text = @"No more items!";
    footer.contentView.backgroundColor = [UIColor blueColor];
    return footer;
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {
    
    UITableViewHeaderFooterView *header = [tableView dequeueReusableHeaderFooterViewWithIdentifier:@"UITableViewHeaderFooterView"];
    
    header.contentView.backgroundColor = [UIColor redColor];
    
    if (section == 0) {
        
        header.textLabel.text = @"Items greater than $50";
        
    }
    if (section == 1) {
        header.textLabel.text = @"Items less than $50";
    }
    
    return header;
}

@end
