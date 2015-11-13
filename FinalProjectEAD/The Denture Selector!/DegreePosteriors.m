//
//  DegreePosteriors.m
//  The Denture Selector!
//
//  Created by Ryan on 6/18/15.
//  Copyright (c) 2015 Docs Playground. All rights reserved.
//

#import "DegreePosteriors.h"
#import "LowerAnteriors.h"
#import "UpperAnteriors.h"
#import "FaceShape.h"
#import "Deminsions.h"
#import "RecomendedPosteriors.h"
@interface DegreePosteriors()

@end

@implementation DegreePosteriors


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NSLog(@"s%@", _selectedLowerTeeth);
    _zeroDegreeCheckmark.hidden = YES;
    _tenDegreeCheckmark.hidden = YES;
    _twentyDegreeCheckmark.hidden = YES;
    _thirtythreeDegreeCheckmark.hidden = YES;
    

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if([_selectedDegree isEqualToString:@"Zero"]){
        if([_selectedLowerTeeth isEqualToString:@"2C-133.png"] || [_selectedLowerTeeth isEqualToString:@"2D-2D-Lower.png"] || [_selectedLowerTeeth isEqualToString:@"3N-2NA24.png"] || [_selectedLowerTeeth isEqualToString:@"3M-3M4M.png"]){
            //29M
            _imageArrayDegree = @[[UIImage imageNamed:@"0deg-29M.png"]];
            _imageNameArrayDegree = @[@"0deg-29M.png"];
        }
        else if([_selectedLowerTeeth isEqualToString:@"3D-3D134.png"] || [_selectedLowerTeeth isEqualToString:@"2P-28.png"] || [_selectedLowerTeeth isEqualToString:@"2E-A25264.png"]){
            //31M
            _imageArrayDegree = @[[UIImage imageNamed:@"0deg-31M.png"]];
            _imageNameArrayDegree = @[@"0deg-31M.png"];
        }
        else if([_selectedLowerTeeth isEqualToString:@"46-A261351361N.png"]){
            //31m //33m //33m //31m
            _imageArrayDegree = @[[UIImage imageNamed:@"0deg-31M.png"], [UIImage imageNamed:@"0deg-33M.png"]];
            _imageNameArrayDegree = @[@"0deg-31M.png", @"0deg-33M.png"];
        }
        else if([_selectedLowerTeeth isEqualToString:@"2N-2N2684N.png"]){
            //29m //33m //31m
            _imageArrayDegree = @[[UIImage imageNamed:@"0deg-29M.png"], [UIImage imageNamed:@"0deg-31M.png"], [UIImage imageNamed:@"0deg-33M.png"]];
            _imageNameArrayDegree = @[@"0deg-29M.png", @"0deg-31M.png", @"0deg-31M.png"];
        }
       
        else{
            //33m //33m
            _imageArrayDegree = @[[UIImage imageNamed:@"0deg-33M.png"]];
            _imageNameArrayDegree = @[@"0deg-33M.png"];
        }
        
    }
    else if([_selectedDegree isEqualToString:@"Ten"]){
        if([_selectedLowerTeeth isEqualToString:@"2C-133.png"] || [_selectedLowerTeeth isEqualToString:@"3N-2NA24.png"] || [_selectedLowerTeeth isEqualToString:@"3M-3M4M.png"]){
            //F30
            _imageArrayDegree = @[[UIImage imageNamed:@"10deg-F30.png"]];
            _imageNameArrayDegree = @[@"10deg-F30.png"];
        }
        
        else if([_selectedLowerTeeth isEqualToString:@"46-A261351361N.png"]){
            //F33 //F33 //F33 //F32
            _imageArrayDegree = @[[UIImage imageNamed:@"10deg-F33.png"], [UIImage imageNamed:@"10deg-F32.png"]];
            _imageNameArrayDegree = @[@"10deg-F33.png", @"10deg-F32.png"];
        }
        else if([_selectedLowerTeeth isEqualToString:@"2D-2D-Lower.png"]){
            //F32
            _imageArrayDegree = @[[UIImage imageNamed:@"10deg-F32.png"]];
            _imageNameArrayDegree = @[@"10deg-F32.png"];
        }
        else if([_selectedLowerTeeth isEqualToString:@"2N-2N2684N.png"]){
            //F30 //F33 //F30
            _imageArrayDegree = @[[UIImage imageNamed:@"10deg-F30.png"],[UIImage imageNamed:@"10deg-F33.png"]];
            _imageNameArrayDegree = @[@"10deg-F30.png",@"10deg-F33.png"];
        }
        else{
            //F33 //F33
            _imageArrayDegree = @[[UIImage imageNamed:@"10deg-F33.png"]];
            _imageNameArrayDegree = @[@"10deg-F33.png"];
        }
        
    }
    else if([_selectedDegree isEqualToString:@"Twenty"]){
        if([_selectedLowerTeeth isEqualToString:@"2C-133.png"] ||[_selectedLowerTeeth isEqualToString:@"3M-3M4M.png"]){
            //29m
            _imageArrayDegree = @[[UIImage imageNamed:@"20deg-29M.png"]];
            _imageNameArrayDegree = @[@"20deg-29M.png"];
        }
        else if([_selectedLowerTeeth isEqualToString:@"3D-3D134.png"]){
            //31m //31M
            _imageArrayDegree = @[[UIImage imageNamed:@"20deg-31M.png"]];
            _imageNameArrayDegree = @[@"20deg-31M.png"];
        }
        else if([_selectedLowerTeeth isEqualToString:@"46-A261351361N.png"]){
            //31M //33M //33M //31M
            _imageArrayDegree = @[[UIImage imageNamed:@"20deg-31M.png"], [UIImage imageNamed:@"20deg-33M.png"]];
            _imageNameArrayDegree = @[@"20deg-31M.png", @"20deg-33M.png"];
        }
        else if([_selectedLowerTeeth isEqualToString:@"2D-2D-Lower.png"]){
            //29L
            _imageArrayDegree = @[[UIImage imageNamed:@"20deg-29L.png"]];
            _imageNameArrayDegree = @[@"20deg-29L.png"];
        }
        else if([_selectedLowerTeeth isEqualToString:@"2N-2N2684N.png"]){
            //29L //31L //31M
            _imageArrayDegree = @[[UIImage imageNamed:@"20deg-29L.png"],[UIImage imageNamed:@"20deg-31L.png"],[UIImage imageNamed:@"20deg-231M.png"]];
            _imageNameArrayDegree = @[@"20deg-29L.png",@"20deg-31L.png",@"20deg-231M.png"];
        }
        else if([_selectedLowerTeeth isEqualToString:@"2P-28.png"]){
            //31L
            _imageArrayDegree = @[[UIImage imageNamed:@"20deg-31L.png"]];
            _imageNameArrayDegree = @[@"20deg-31L.png"];
        }
        else if([_selectedLowerTeeth isEqualToString:@"3N-2NA24.png"]){
            //29L //29M
            _imageArrayDegree = @[[UIImage imageNamed:@"20deg-29L.png"],[UIImage imageNamed:@"20deg-29M.png"]];
            _imageNameArrayDegree = @[@"20deg-29L.png",@"20deg-29M.png"];
        }
        else if([_selectedLowerTeeth isEqualToString:@"2E-A25264.png"]){
            //31M //31L
            _imageArrayDegree = @[[UIImage imageNamed:@"20deg-31M.png"], [UIImage imageNamed:@"20deg-31L.png"]];
            _imageNameArrayDegree = @[@"20deg-31M.png", @"20deg-31L.png"];
        }
        
        else if([_selectedLowerTeeth isEqualToString:@"3P-3P-Lower.png"] || [_selectedLowerTeeth isEqualToString:@"26-266.png"]){
            //33M
            _imageArrayDegree = @[[UIImage imageNamed:@"20deg-33M.png"]];
            _imageNameArrayDegree = @[@"20deg-33M.png"];
        }
        else {
            //33M //31L
            _imageArrayDegree = @[[UIImage imageNamed:@"20deg-31M.png"], [UIImage imageNamed:@"20deg-31L.png"]];
            _imageNameArrayDegree = @[@"20deg-31M.png", @"20deg-31L.png"];
        }
        
    }

    else if([_selectedDegree isEqualToString:@"Thirtythree"]){
        if([_selectedLowerTeeth isEqualToString:@"2C-133.png"] ||[_selectedLowerTeeth isEqualToString:@"3D-3D134.png"] || [_selectedLowerTeeth isEqualToString:@"2E-A25264.png"] || [_selectedLowerTeeth isEqualToString:@"3M-3M4M.png"]){
            //30M
            _imageArrayDegree = @[[UIImage imageNamed:@"33deg-30M.png"]];
            _imageNameArrayDegree = @[@"33deg-30M.png"];

        }
        else if([_selectedLowerTeeth isEqualToString:@"46-A261351361N.png"]){
            //30M //32M //34M //30L
            _imageArrayDegree = @[[UIImage imageNamed:@"33deg-30M.png"],[UIImage imageNamed:@"33deg-32M.png"], [UIImage imageNamed:@"33deg-34M.png"], [UIImage imageNamed:@"33deg-30L.png"]];
            _imageNameArrayDegree = @[@"33deg-30M.png",@"33deg-32M.png",@"33deg-34M.png",@"33deg-30L.png" ];
            
        }
        else if([_selectedLowerTeeth isEqualToString:@"2D-2D-Lower.png"]|| [_selectedLowerTeeth isEqualToString:@"2P-28.png"]){
            //30L
            _imageArrayDegree = @[[UIImage imageNamed:@"33deg-30L.png"]];
            _imageNameArrayDegree = @[@"33deg-30L.png"];
            

        }
        else if([_selectedLowerTeeth isEqualToString:@"2N-2N2684N.png"]){
            //30L //34L //30L
            _imageArrayDegree = @[[UIImage imageNamed:@"33deg-30L.png"],[UIImage imageNamed:@"33deg-34L.png"]];
            _imageNameArrayDegree = @[@"33deg-30L.png", @"33deg-34L.png"];
            
        }
       
        else if([_selectedLowerTeeth isEqualToString:@"3N-2NA24.png"]){
            //30L //30M
            _imageArrayDegree = @[[UIImage imageNamed:@"33deg-30L.png"],[UIImage imageNamed:@"33deg-30M.png"]];
            _imageNameArrayDegree = @[@"33deg-30L.png", @"33deg-30M.png"];
            

        }
        else if([_selectedLowerTeeth isEqualToString:@"3P-3P-Lower.png"]){
            //34M
            _imageArrayDegree = @[[UIImage imageNamed:@"33deg-34M.png"]];
            _imageNameArrayDegree = @[@"33deg-34M.png"];
        }
  
        else{
            //34L
            _imageArrayDegree = @[[UIImage imageNamed:@"33deg-34L.png"]];
            _imageNameArrayDegree = @[@"33deg-34L.png"];
        }
    }
    if([segue.identifier isEqual:@"RecomendedPosteriors"]){
        RecomendedPosteriors *RP = (RecomendedPosteriors *)segue.destinationViewController;
        RP.imageNames = _imageNameArrayDegree;
        RP.degreeImages = _imageArrayDegree;
        RP.reviewArray = _reviewArray;
    }
}

- (IBAction)zeroDegreeGesture:(id)sender {
    _zeroDegreeCheckmark.hidden = NO;
    _selectedDegree = @"Zero" ;

    [self performSegueWithIdentifier:@"RecomendedPosteriors" sender:sender];
}
- (IBAction)tenDegreeGesture:(id)sender {
    _tenDegreeCheckmark.hidden = NO;
    _selectedDegree = @"Ten";
    [self performSegueWithIdentifier:@"RecomendedPosteriors" sender:sender];
}
- (IBAction)twentyDegreeGesture:(id)sender {
    _twentyDegreeCheckmark.hidden = NO;
    _selectedDegree = @"Twenty";
    [self performSegueWithIdentifier:@"RecomendedPosteriors" sender:sender];

}
- (IBAction)thirtythreeDegreeGesture:(id)sender {
    _thirtythreeDegreeCheckmark.hidden = NO;
    _selectedDegree = @"Thirtythree";
    [self performSegueWithIdentifier:@"RecomendedPosteriors" sender:sender];

}


@end
