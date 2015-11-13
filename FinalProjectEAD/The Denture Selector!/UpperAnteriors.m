//
//  UpperAnteriors.m
//  The Denture Selector!
//
//  Created by Ryan on 6/18/15.
//  Copyright (c) 2015 Docs Playground. All rights reserved.
//

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
    _currentIndex = 0;
    // Do any additional setup after loading the view.
    _MaxillaryCheck.hidden = YES;
    
    //set image
    _UpperAnteriorImage.image = [ImageArray objectAtIndex:_currentIndex];
    
    
    
 // Need to add the swiping feature

    UISwipeGestureRecognizer *swipeLeft = [[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(swipe:)];
    swipeLeft.direction = UISwipeGestureRecognizerDirectionLeft;
    [_UpperAnteriorImage addGestureRecognizer:swipeLeft];
    
    UISwipeGestureRecognizer *swipeRight = [[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(swipe:)];
    swipeRight.direction = UISwipeGestureRecognizerDirectionRight;
    [_UpperAnteriorImage addGestureRecognizer:swipeRight];

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
        NSLog(@"image name is %@", _maxNameArray[_currentIndex] );
        lower.selectedUpper = _maxNameArray[_currentIndex];
    }
}
-(void)showImageAtIndex:(NSInteger)index
{
    
   _UpperAnteriorImage.image = [ImageArray objectAtIndex:_currentIndex] ;
    
    
}

- (IBAction)swipe:(UISwipeGestureRecognizer *)sender {
    NSInteger index = _currentIndex;
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
        _currentIndex = index;
        [self showImageAtIndex:_currentIndex];
    }
    else
    {
        NSLog(@"Reached the end, swipe in opposite direction");
        index = _currentIndex;
    }
}


- (IBAction)MaxillaryTap:(id)sender {
    _MaxillaryCheck.hidden = NO;
    NSLog(@"MaxTap working");
    [_UpperAnteriorImage.image setAccessibilityIdentifier:[ImageArray objectAtIndex:_currentIndex]];

    [self performSegueWithIdentifier:@"LowerAnteriors" sender:sender];

}

@end
