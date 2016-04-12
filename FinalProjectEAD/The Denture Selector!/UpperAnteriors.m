//
//  UpperAnteriors.m
//  The Denture Selector!
//
//  Created by Eric on 6/18/15.
//  Copyright (c) 2015 Docs Playground. All rights reserved.
// This view needs a image reprecentation of the options to slide through...
// will add when updating code if we have time...

#import "UpperAnteriors.h"
#import "FaceShape.h"
#import "Deminsions.h"
#import "LowerAnteriors.h"

@interface UpperAnteriors()

@end

@implementation UpperAnteriors
@synthesize ImageArray;
- (void)viewDidLoad {
    [super viewDidLoad];
    self.currentIndex = 0;
    // Do any additional setup after loading the view.
    self.MaxillaryCheck.hidden = YES;
    
    //set image
    self.UpperAnteriorImage.image = [ImageArray objectAtIndex:self.currentIndex];
    
    
    
 // Need to add the swiping feature

    UISwipeGestureRecognizer *swipeLeft = [[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(swipe:)];
    swipeLeft.direction = UISwipeGestureRecognizerDirectionLeft;
    [self.UpperAnteriorImage addGestureRecognizer:swipeLeft];
    
    UISwipeGestureRecognizer *swipeRight = [[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(swipe:)];
    swipeRight.direction = UISwipeGestureRecognizerDirectionRight;
    [self.UpperAnteriorImage addGestureRecognizer:swipeRight];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}




-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if([segue.identifier isEqual:@"LowerAnteriors"]){
        //now to establish data for where it is going:
        LowerAnteriors *lower = ((LowerAnteriors *) segue.destinationViewController);
        //if image name is x then lower image is Y
        NSLog(@"image name is %@", self.maxNameArray[self.currentIndex] );
        lower.selectedUpper = self.maxNameArray[self.currentIndex];
    }
}
-(void)showImageAtIndex:(NSInteger)index
{
    
   self.UpperAnteriorImage.image = [ImageArray objectAtIndex:self.currentIndex] ;
    
    
}

- (IBAction)swipe:(UISwipeGestureRecognizer *)sender {
    NSInteger index = self.currentIndex;
    if (sender.direction == UISwipeGestureRecognizerDirectionLeft)
    {
        index++;
    }
    else if (sender.direction == UISwipeGestureRecognizerDirectionRight)
    {
        index--;
    }
    
     if (index >= 0 && index < ([ImageArray count] ))
    {
        NSLog(@"Index %ld", index);
        self.currentIndex = index;
        [self showImageAtIndex:self.currentIndex];
    }
    else
    {
        NSLog(@"Reached the end, swipe in opposite direction");
        index = self.currentIndex;
    }
}


- (IBAction)MaxillaryTap:(id)sender {
    self.MaxillaryCheck.hidden = NO;
    NSLog(@"MaxTap working");
    [self.UpperAnteriorImage.image setAccessibilityIdentifier:[ImageArray objectAtIndex:self.currentIndex]];

    [self performSegueWithIdentifier:@"LowerAnteriors" sender:sender];

}

@end
