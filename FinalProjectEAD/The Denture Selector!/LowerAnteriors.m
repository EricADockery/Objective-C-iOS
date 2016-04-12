//
//  LowerAnteriors.m
//  The Denture Selector!
//
//  Created by Eric on 6/18/15.
//  Copyright (c) 2015 Docs Playground. All rights reserved.
//

#import "LowerAnteriors.h"
#import "UpperAnteriors.h"
#import "FaceShape.h"
#import "Deminsions.h"
#import "DegreePosteriors.h"
@interface LowerAnteriors()

@end

@implementation LowerAnteriors
@synthesize ImageArray;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.MandibularCheck.hidden = YES;
    self.currentIndex = 0;
    //get the correct images from the selected upper
    
    
    //--------This should become a switch case in later development --------
    NSLog(@"%@", self.selectedUpper);
    if ([self.selectedUpper  isEqual: @"133-2C.png"]){
        ImageArray = @[[UIImage imageNamed:@"2C-133.png"]];
        self.lowerImageNameArray = @[@"2C-133.png"];
    }
    else if ([self.selectedUpper isEqual: @"134-3D.png"] || [self.selectedUpper isEqualToString:@"3D-3D.png"] ){
        ImageArray = @[[UIImage imageNamed:@"3D-3D134.png"]];
        self.lowerImageNameArray = @[@"3D-3D134.png"];
                        
    }
    else if ([self.selectedUpper isEqualToString:@"135-46.png"] || [self.selectedUpper isEqualToString:@"136-46.png"] || [self.selectedUpper isEqualToString:@"1N-46.png"] || [self.selectedUpper isEqualToString:@"A26-46.png"]){
        ImageArray = @[[UIImage imageNamed:@"46-A261351361N.png"]];
        self.lowerImageNameArray = @[@"46-A261351361N.png"];
        
    }
    else if ([self.selectedUpper isEqualToString:@"2D-2D"]){
        ImageArray = @[[UIImage imageNamed:@"2D-2D-Lower.png"]];
        self.lowerImageNameArray = @[@"2D-2D-Lower.png"];
    }
    else if ([self.selectedUpper isEqualToString:@"2N-2N"] || [self.selectedUpper isEqualToString:@"4N-2N.png"] || [self.selectedUpper isEqualToString:@"263-2N.png"]){
        ImageArray = @[[UIImage imageNamed:@"2N-2N2684N.png"]];
        self.lowerImageNameArray = @[@"2N-2N2684N.png"];
    }
    else if ([self.selectedUpper isEqualToString:@"2P-2P.png"]){
        ImageArray = @[[UIImage imageNamed:@"2P-28.png"]];
        self.lowerImageNameArray = @[@"2P-28.png"];
    }
    else if ([self.selectedUpper isEqualToString:@"A24-3N.png"] || [self.selectedUpper isEqualToString:@"3N-3N.png"]){
        ImageArray = @[[UIImage imageNamed:@"3N-3NA24.png"]];
        self.lowerImageNameArray = @[@"3N-3NA24.png"];
    }
    else if ([self.selectedUpper isEqualToString: @"A25-2E.png"] || [self.selectedUpper isEqualToString:@"264-2E.png"] ){
        ImageArray = @[[UIImage imageNamed:@"2E-A25264.png"]];
        self.lowerImageNameArray = @[@"2E-A25264.png"];
    }
    else if([self.selectedUpper isEqualToString:@"3M-3M.png"] || [self.selectedUpper isEqualToString:@"4M-3N.png"]){
        ImageArray = @[[UIImage imageNamed:@"3M-3M4M.png"]];
        self.lowerImageNameArray = @[@"3M-3M4M.png"];
    }
    else if ([self.selectedUpper isEqualToString:@"3P-3P.png"]){
        ImageArray = @[[UIImage imageNamed:@"3P-3P-Lower.png"]];
        self.lowerImageNameArray = @[@"3P-3P-Lower.png"];
    }
    else if ([self.selectedUpper isEqualToString:@"266-26.png"]){
        ImageArray = @[[UIImage imageNamed:@"26-266.png"]];
        self.lowerImageNameArray = @[@"26-266.png"];
    }
    else{
        ImageArray = @[[UIImage imageNamed:@"3R-267268.png"]];
        self.lowerImageNameArray = @[@"3R-267268.png"];
    }
    
    self.lowerAnteriorImages.image = [ImageArray objectAtIndex:self.currentIndex];
    
    //Check Value of Image Array
    
    
    // Need to add the swiping feature
    
    UISwipeGestureRecognizer *swipeLeft = [[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(swipe:)];
    swipeLeft.direction = UISwipeGestureRecognizerDirectionLeft;
    [self.lowerAnteriorImages addGestureRecognizer:swipeLeft];
    
    UISwipeGestureRecognizer *swipeRight = [[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(swipe:)];
    swipeRight.direction = UISwipeGestureRecognizerDirectionRight;
    [self.lowerAnteriorImages addGestureRecognizer:swipeRight];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    //Goes to the next Mandibular Image?
    
    
    
    //Selects the Mandibular
    if([segue.identifier isEqual:@"DegreePosteriors"]){
        //made it to the test
        NSLog(@"%@", sender);
        //now to establish where it is going
        DegreePosteriors *degree = (DegreePosteriors *) segue.destinationViewController;
        degree.selectedLowerTeeth = self.lowerImageNameArray[self.currentIndex];
        self.reviewArray =@[self.selectedUpper, self.lowerImageNameArray[self.currentIndex]];
        degree.reviewArray = self.reviewArray;
        
        
    }
}
-(void)showImageAtIndex:(NSInteger)index
{
    
    self.lowerAnteriorImages.image = [ImageArray objectAtIndex:index];
    
    
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



- (IBAction)MandibularTap:(id)sender {
    self.MandibularCheck.hidden = NO;
    NSLog(@"MinTap working");

    [self performSegueWithIdentifier:@"DegreePosteriors" sender:sender];
    
}



@end
