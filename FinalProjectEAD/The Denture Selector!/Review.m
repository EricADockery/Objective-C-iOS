//
//  Review.m
//  The Denture Selector!
//
//  Created by Eric on 6/18/15.
//  Copyright (c) 2015 Docs Playground. All rights reserved.
//

#import "Review.h"
#import "RecomendedPosteriors.h"
#import "DegreePosteriors.h"
#import "LowerAnteriors.h"
#import "UpperAnteriors.h"
#import "FaceShape.h"
#import "Deminsions.h"
#import "PastOrders.h"
@interface Review()

@end

@implementation Review

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"This is the testing of the review image\n");
    NSLog(@"%@",self.reviewArray[0]);
    NSLog(@"%@",self.reviewArray[1]);
    NSLog(@"%@",self.reviewArray[2]);
    
    //upper image from the selectedUpper in the lowerAnteriors view reviewArray [0]
    self.upperImage.image = [UIImage imageNamed:self.reviewArray[0]];
    //lower Image from the selectedLowerTeeth in DegreePosteriors reviewArray [1]
    self.lowerImage.image = [UIImage imageNamed:self.reviewArray[1]];
    //review.selectedDegree
    self.posterierImage.image = [UIImage imageNamed:self.reviewArray[2]];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)orderSubmit:(id)sender {
    //server URL
    //create a request
    
    NSString *content = [NSString stringWithFormat:@"http://45.55.58.84:4000/new/AA/%@/%@/%@", self.reviewArray[0] , self.reviewArray[1] ,self.reviewArray[2]];
    
    NSURL *URL = [NSURL URLWithString:content];
    NSURLRequest *request = [NSURLRequest requestWithURL:URL];
    NSURLSession *session = [NSURLSession sharedSession];
    NSURLSessionDataTask   *task = [session dataTaskWithRequest:request completionHandler:^(NSData *data, NSURLResponse *response, NSError *error){
        
    }];
    [task resume];

    
}


@end

