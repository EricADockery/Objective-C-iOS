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
    _MandibularCheck.hidden = YES;
    _currentIndex = 0;
    //get the correct images from the selected upper
    
    
    //--------This should become a switch case in later development --------
    NSLog(@"%@", _selectedUpper);
    if ([_selectedUpper  isEqual: @"133-2C.png"]){
        ImageArray = @[[UIImage imageNamed:@"2C-133.png"]];
        _lowerImageNameArray = @[@"2C-133.png"];
    }
    else if ([_selectedUpper isEqual: @"134-3D.png"] || [_selectedUpper isEqualToString:@"3D-3D.png"] ){
        ImageArray = @[[UIImage imageNamed:@"3D-3D134.png"]];
        _lowerImageNameArray = @[@"3D-3D134.png"];
                        
    }
    else if ([_selectedUpper isEqualToString:@"135-46.png"] || [_selectedUpper isEqualToString:@"136-46.png"] || [_selectedUpper isEqualToString:@"1N-46.png"] || [_selectedUpper isEqualToString:@"A26-46.png"]){
        ImageArray = @[[UIImage imageNamed:@"46-A261351361N.png"]];
        _lowerImageNameArray = @[@"46-A261351361N.png"];
        
    }
    else if ([_selectedUpper isEqualToString:@"2D-2D"]){
        ImageArray = @[[UIImage imageNamed:@"2D-2D-Lower.png"]];
        _lowerImageNameArray = @[@"2D-2D-Lower.png"];
    }
    else if ([_selectedUpper isEqualToString:@"2N-2N"] || [_selectedUpper isEqualToString:@"4N-2N.png"] || [_selectedUpper isEqualToString:@"263-2N.png"]){
        ImageArray = @[[UIImage imageNamed:@"2N-2N2684N.png"]];
        _lowerImageNameArray = @[@"2N-2N2684N.png"];
    }
    else if ([_selectedUpper isEqualToString:@"2P-2P.png"]){
        ImageArray = @[[UIImage imageNamed:@"2P-28.png"]];
        _lowerImageNameArray = @[@"2P-28.png"];
    }
    else if ([_selectedUpper isEqualToString:@"A24-3N.png"] || [_selectedUpper isEqualToString:@"3N-3N.png"]){
        ImageArray = @[[UIImage imageNamed:@"3N-3NA24.png"]];
        _lowerImageNameArray = @[@"3N-3NA24.png"];
    }
    else if ([_selectedUpper isEqualToString: @"A25-2E.png"] || [_selectedUpper isEqualToString:@"264-2E.png"] ){
        ImageArray = @[[UIImage imageNamed:@"2E-A25264.png"]];
        _lowerImageNameArray = @[@"2E-A25264.png"];
    }
    else if([_selectedUpper isEqualToString:@"3M-3M.png"] || [_selectedUpper isEqualToString:@"4M-3N.png"]){
        ImageArray = @[[UIImage imageNamed:@"3M-3M4M.png"]];
        _lowerImageNameArray = @[@"3M-3M4M.png"];
    }
    else if ([_selectedUpper isEqualToString:@"3P-3P.png"]){
        ImageArray = @[[UIImage imageNamed:@"3P-3P-Lower.png"]];
        _lowerImageNameArray = @[@"3P-3P-Lower.png"];
    }
    else if ([_selectedUpper isEqualToString:@"266-26.png"]){
        ImageArray = @[[UIImage imageNamed:@"26-266.png"]];
        _lowerImageNameArray = @[@"26-266.png"];
    }
    else{
        ImageArray = @[[UIImage imageNamed:@"3R-267268.png"]];
        _lowerImageNameArray = @[@"3R-267268.png"];
    }
    
    _lowerAnteriorImages.image = [ImageArray objectAtIndex:_currentIndex];
    
    //Check Value of Image Array
    
    
    // Need to add the swiping feature
    
    UISwipeGestureRecognizer *swipeLeft = [[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(swipe:)];
    swipeLeft.direction = UISwipeGestureRecognizerDirectionLeft;
    [_lowerAnteriorImages addGestureRecognizer:swipeLeft];
    
    UISwipeGestureRecognizer *swipeRight = [[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(swipe:)];
    swipeRight.direction = UISwipeGestureRecognizerDirectionRight;
    [_lowerAnteriorImages addGestureRecognizer:swipeRight];

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
        degree.selectedLowerTeeth = _lowerImageNameArray[_currentIndex];
        _reviewArray =@[_selectedUpper, _lowerImageNameArray[_currentIndex]];
        degree.reviewArray = _reviewArray;
        
        
    }
}
-(void)showImageAtIndex:(NSInteger)index
{
    
    _lowerAnteriorImages.image = [ImageArray objectAtIndex:index];
    
    
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



- (IBAction)MandibularTap:(id)sender {
    _MandibularCheck.hidden = NO;
    NSLog(@"MinTap working");

    [self performSegueWithIdentifier:@"DegreePosteriors" sender:sender];
    
}



@end
