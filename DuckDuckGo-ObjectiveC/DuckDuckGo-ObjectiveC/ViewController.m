//
//  ViewController.m
//  DuckDuckGo-ObjectiveC
//
//  Created by Eric Dockery on 11/11/15.
//  Copyright © 2015 Eric Dockery. All rights reserved.
//

#import "ViewController.h"
#import "TableViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.searchImage.image = [UIImage imageNamed:@"Start Search.png"]; //did it programmatically when going back to this view.
}
//When we enter the text field we change the icon to the same one that DuckDuckGo uses
- (IBAction)ChangeImage:(UITextField *)sender {
    self.searchImage.image   = [UIImage imageNamed:@"Type Search.png"];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//Get the search information:
-(IBAction)search
{
    //currently takes only one string without a space at the end. Will need to format to fix.
    NSString *searchString=self.searchField.text;
    //api address for url is api.duckduckgo.com/?q=    &format=json
    NSString *urlAddress = [NSString stringWithFormat:@"https://api.duckduckgo.com/?q=%@&format=json",searchString];
    NSURL *URL = [NSURL URLWithString:urlAddress];
  //  NSData *data = [NSData dataWithContentsOfURL: URL];
    NSURLRequest *request = [NSURLRequest requestWithURL:URL];
    NSURLSession *session = [NSURLSession sharedSession];
    NSURLSessionDataTask   *task = [session dataTaskWithRequest:request completionHandler:^(NSData *data, NSURLResponse *response, NSError *error){
      NSDictionary *jsonObject = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
       
        _searchRelatedTopics = jsonObject[@"RelatedTopics"];
       // NSLog(@"The Data %@",searchRelatedTopics);
       // NSLog(@"A single part of the Array %@", searchRelatedTopics[0]);
        
    }];
    [task resume];
    
    
    [self performSegueWithIdentifier:@"TableViewController" sender:@"ViewResults"];
}
//preform segway to TableView
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    //NSArray *searchResults = @[@"This", @"would", @"be", @"data", @"if", @"I", @"Could", @"Parse",@"Json", @"data", @"from", @"DuckDuckGo"];
    TableViewController *tableView = (TableViewController *)segue.destinationViewController;
    for (int i = 0; i < [_searchRelatedTopics count]; i++)
    {
        if(_searchRelatedTopics[i][@"Result"] ){
            [_theResults addObject:_searchRelatedTopics[i][@"Result"]];
            NSLog(@"Related Topics @%@", _searchRelatedTopics[i][@"Result"]);
        }
    }

    NSLog(@"%@", _theResults);
    tableView.RequestData = _theResults;
}


@end
