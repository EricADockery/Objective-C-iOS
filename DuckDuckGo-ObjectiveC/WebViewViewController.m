//
//  WebViewViewController.m
//  DuckDuckGo-ObjectiveC
//
//  Created by Eric Dockery on 11/13/15.
//  Copyright © 2015 Eric Dockery. All rights reserved.
//

#import "WebViewViewController.h"

@interface WebViewViewController ()

@end

@implementation WebViewViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (void)loadView{
    UIWebView *webView = [[UIWebView alloc] init];
    webView.scalesPageToFit = YES;
    self.view = webView;
}
-(void) setURL:(NSURL *)URL{
    _URL = URL;
    if(self.URL){
        NSURLRequest *req = [NSURLRequest requestWithURL:self.URL];
        [(UIWebView *) self.view loadRequest:req];
        
    }
}

@end
