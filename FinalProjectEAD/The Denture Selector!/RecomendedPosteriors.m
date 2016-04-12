//
//  RecomendedPosteriors.m
//  The Denture Selector!
//
//  Created by Eric on 6/18/15.
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
    self.PosteriorCheck.hidden = YES;
    
    //set image
    self.recommendedPosteriorImages.image = [self.degreeImages objectAtIndex:self.currentIndex];
    

    
    // Need to add the swiping feature
    
    UISwipeGestureRecognizer *swipeLeft = [[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(PosteriorSwipe:)];
    swipeLeft.direction = UISwipeGestureRecognizerDirectionLeft;
    [self.recommendedPosteriorImages addGestureRecognizer:swipeLeft];
    
    UISwipeGestureRecognizer *swipeRight = [[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(PosteriorSwipe:)];
    swipeRight.direction = UISwipeGestureRecognizerDirectionRight;
    [self.recommendedPosteriorImages addGestureRecognizer:swipeRight];
    


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
        review.selectedDegree = self.imageNames[self.currentIndex];
        // [germanMakes arrayByAddingObjectsFromArray:ukMakes];
        review.reviewArray = [self.reviewArray arrayByAddingObject: self.imageNames[self.currentIndex]];
        
    }
}
-(void)showImageAtIndex:(NSInteger)index
{
    
    self.recommendedPosteriorImages.image = [self.degreeImages objectAtIndex:self.currentIndex] ;
    
    
}



- (IBAction)PosteriorSwipe:(UISwipeGestureRecognizer *)sender {
    NSInteger index = self.currentIndex;
    if (sender.direction == UISwipeGestureRecognizerDirectionLeft)
    {
        index++;
    }
    else if (sender.direction == UISwipeGestureRecognizerDirectionRight)
    {
        index--;
    }
    
    if (index >= 0 && index < ([self.degreeImages count] ))
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

- (IBAction)PosteriorTap:(id)sender {
    self.PosteriorCheck.hidden = NO;
    NSLog(@"PostTap working");

    [self performSegueWithIdentifier:@"Review" sender:sender];
    
}



@end


