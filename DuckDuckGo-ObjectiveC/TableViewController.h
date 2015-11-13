//
//  TableViewController.h
//  DuckDuckGo-ObjectiveC
//
//  Created by Eric Dockery on 11/12/15.
//  Copyright © 2015 Eric Dockery. All rights reserved.
//

#import <UIKit/UIKit.h>
@class WebViewViewController;

@interface TableViewController : UITableViewController
@property (strong, nonatomic) NSMutableArray * RequestData;
@property (strong,nonatomic) NSURL *urlSent;
@property (nonatomic) WebViewViewController *webViewController;

@end
