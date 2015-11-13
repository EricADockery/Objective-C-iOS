//
//  PastOrders.h
//  The Denture Selector!
//
//  Created by Ryan on 6/18/15.
//  Copyright (c) 2015 Docs Playground. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PastOrders : UIViewController
@property (weak, nonatomic) IBOutlet UIButton *backToStartMenuButton;
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (weak, nonatomic) NSArray *orderArray;

@end
