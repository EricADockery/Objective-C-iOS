//
//  RecomendedPosteriors.m
//  The Denture Selector!
//
//  Created by Ryan on 6/18/15.
//  Copyright (c) 2015 Docs Playground. All rights reserved.
//

#import "RecomendedPosteriors.h"
#import "DegreePosteriors.h"
#import "LowerAnteriors.h"
#import "UpperAnteriors.h"
#import "FaceShape.h"
#import "Deminsions.h"
#import "Review.h"
@interface RecomendedPosteriors()

@end

@implementation RecomendedPosteriors

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    _PosteriorCheck.hidden = YES;
    
    //set image
    _recommendedPosteriorImages.image = [_degreeImages objectAtIndex:_currentIndex];
    

    
    // Need to add the swiping feature
    
    UISwipeGestureRecognizer *swipeLeft = [[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(PosteriorSwipe:)];
    swipeLeft.direction = UISwipeGestureRecognizerDirectionLeft;
    [_recommendedPosteriorImages addGestureRecognizer:swipeLeft];
    
    UISwipeGestureRecognizer *swipeRight = [[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(PosteriorSwipe:)];
    swipeRight.direction = UISwipeGestureRecognizerDirectionRight;
    [_recommendedPosteriorImages addGestureRecognizer:swipeRight];
    


}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    
    if([segue.identifier isEqual:@"Review"]){
        //made it to the test
        NSLog(@"%@", sender);
        //now to establish where it is going
        Review *review = (Review *) segue.destinationViewController;
        review.selectedDegree = _imageNames[_currentIndex];
        // [germanMakes arrayByAddingObjectsFromArray:ukMakes];
        review.reviewArray = [_reviewArray arrayByAddingObject: _imageNames[_currentIndex]];
        
    }
}
-(void)showImageAtIndex:(NSInteger)index
{
    
    _recommendedPosteriorImages.image = [_degreeImages objectAtIndex:_currentIndex] ;
    
    
}



- (IBAction)PosteriorSwipe:(UISwipeGestureRecognizer *)sender {
    NSInteger index = _currentIndex;
    if (sender.direction == UISwipeGestureRecognizerDirectionLeft)
    {
        index++;
    }
    else if (sender.direction == UISwipeGestureRecognizerDirectionRight)
    {
        index--;
    }
    
    if (index >= 0 && index < ([_degreeImages count] ))
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

- (IBAction)PosteriorTap:(id)sender {
    _PosteriorCheck.hidden = NO;
    NSLog(@"PostTap working");

    [self performSegueWithIdentifier:@"Review" sender:sender];
    
}



@end


