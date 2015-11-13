//
//  ViewController.h
//  DuckDuckGo-ObjectiveC
//
//  Created by Eric Dockery on 11/11/15.
//  Copyright © 2015 Eric Dockery. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *searchField;
@property (weak, nonatomic) IBOutlet UIImageView *searchImage;
@property (strong, nonatomic) NSMutableArray *theResults;
@property(strong,nonatomic) NSArray *searchRelatedTopics;
@end

