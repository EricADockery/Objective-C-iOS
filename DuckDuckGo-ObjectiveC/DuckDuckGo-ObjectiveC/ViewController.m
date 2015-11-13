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
 
    _URL = [NSURL URLWithString:urlAddress];
    [self performSegueWithIdentifier:@"TableViewController" sender:@"ViewResults"];

   }
//preform segway to TableView
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
   
    TableViewController *tableView = (TableViewController *)segue.destinationViewController;
    tableView.urlSent = self.URL;
}


@end
