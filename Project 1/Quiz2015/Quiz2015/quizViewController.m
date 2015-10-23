//
//  ViewController.m
//  Quiz2015
//
//  Created by Ryan on 5/11/15.
//  Copyright (c) 2015 Docs Playground. All rights reserved.
//

#import "quizViewController.h"

@interface ViewController ()




@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.questions = @[@"from what is cognac made?",
                       @"What is 7+7?",
                       @"What is the capital of Kentucky?"];
    self.answers = @[@"Grapes",
                     @"14",
                     @"Kentucky"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)showQuestion:(id)sender{
    self.currentQuestionIndex ++;
    
    if( self.currentQuestionIndex == [self.questions count]){
        self.currentQuestionIndex = 0;
    }
    NSString *question = self.questions[self.currentQuestionIndex];
    
    self.questionLabel.text = question;
    
    self.answerLabel.text =@"???";
    
}
-(IBAction)showAnswer:(id)sender{
    NSString *answer = self.answers[self.currentQuestionIndex];
    
    self.answerLabel.text = answer;

}

@end
