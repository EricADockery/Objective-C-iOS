//
//  ViewController.h
//  Quiz2015
//
//  Created by Ryan on 5/11/15.
//  Copyright (c) 2015 Docs Playground. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
- (IBAction)showQuestion:(id)sender;
- (IBAction)showAnswer:(id)sender;
@property (nonatomic) int currentQuestionIndex;

@property(weak, nonatomic) IBOutlet UILabel *questionLabel;
@property(weak, nonatomic) IBOutlet UILabel *answerLabel;

@property (nonatomic, copy) NSArray *questions;
@property (nonatomic, copy) NSArray *answers;


@end

