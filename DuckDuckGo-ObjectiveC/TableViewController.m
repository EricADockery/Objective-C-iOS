//
//  TableViewController.m
//  DuckDuckGo-ObjectiveC
//
//  Created by Eric Dockery on 11/12/15.
//  Copyright © 2015 Eric Dockery. All rights reserved.
//

#import "TableViewController.h"
#import "WebViewViewController.h"

@interface TableViewController ()
@property (nonatomic, copy) NSArray *requestFilled;
@end

@implementation TableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
     self.clearsSelectionOnViewWillAppear = NO;
   
       [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"UITableViewCell"];
    //get data
    NSURLRequest *request = [NSURLRequest requestWithURL:_urlSent];
    NSURLSession *session = [NSURLSession sharedSession];
    NSURLSessionDataTask   *task = [session dataTaskWithRequest:request completionHandler:^(NSData *data, NSURLResponse *response, NSError *error){
        NSDictionary *jsonObject = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
    
      
        self.requestFilled = jsonObject[@"RelatedTopics"];
   
        dispatch_async(dispatch_get_main_queue(), ^{[self.tableView reloadData];});
        
    }];
    [task resume];

    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    NSInteger counter = [ self.requestFilled count];
    return counter;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"UITableViewCell"
                                    forIndexPath:indexPath];
    NSDictionary *selection = self.requestFilled[indexPath.row];
  
    
    NSLog(@"%@", selection[@"Text"]);
    
    cell.textLabel.text = selection[@"Text"];
    

  
    return cell;
}
/*
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSDictionary *website = self.requestFilled[indexPath.row];
    NSURL *URL = [NSURL URLWithString:website[@"FirstURL"]];
    self.webViewController.title = website[@"Request"];
    self.webViewController.URL = URL;
    [self.navigationController pushViewController:self.webViewController animated:YES];
}
*/



@end
