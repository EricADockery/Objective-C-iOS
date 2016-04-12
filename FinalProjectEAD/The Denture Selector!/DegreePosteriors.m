//
//  DegreePosteriors.m
//  The Denture Selector!
//
//  Created by Eric on 6/18/15.
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
    NSLog(@"s%@", self.selectedLowerTeeth);
    self.zeroDegreeCheckmark.hidden = YES;
    self.tenDegreeCheckmark.hidden = YES;
    self.twentyDegreeCheckmark.hidden = YES;
    self.thirtythreeDegreeCheckmark.hidden = YES;
    

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    
    /// --------------Switch case in later development ----------
    if([self.selectedDegree isEqualToString:@"Zero"]){
        if([self.selectedLowerTeeth isEqualToString:@"2C-133.png"] || [self.selectedLowerTeeth isEqualToString:@"2D-2D-Lower.png"] || [self.selectedLowerTeeth isEqualToString:@"3N-2NA24.png"] || [self.selectedLowerTeeth isEqualToString:@"3M-3M4M.png"]){
            //29M
            self.imageArrayDegree = @[[UIImage imageNamed:@"0deg-29M.png"]];
            self.imageNameArrayDegree = @[@"0deg-29M.png"];
        }
        else if([self.selectedLowerTeeth isEqualToString:@"3D-3D134.png"] || [self.selectedLowerTeeth isEqualToString:@"2P-28.png"] || [self.selectedLowerTeeth isEqualToString:@"2E-A25264.png"]){
            //31M
            self.imageArrayDegree = @[[UIImage imageNamed:@"0deg-31M.png"]];
            self.imageNameArrayDegree = @[@"0deg-31M.png"];
        }
        else if([self.selectedLowerTeeth isEqualToString:@"46-A261351361N.png"]){
            //31m //33m //33m //31m
            self.imageArrayDegree = @[[UIImage imageNamed:@"0deg-31M.png"], [UIImage imageNamed:@"0deg-33M.png"]];
            self.imageNameArrayDegree = @[@"0deg-31M.png", @"0deg-33M.png"];
        }
        else if([self.selectedLowerTeeth isEqualToString:@"2N-2N2684N.png"]){
            //29m //33m //31m
            self.imageArrayDegree = @[[UIImage imageNamed:@"0deg-29M.png"], [UIImage imageNamed:@"0deg-31M.png"], [UIImage imageNamed:@"0deg-33M.png"]];
            self.imageNameArrayDegree = @[@"0deg-29M.png", @"0deg-31M.png", @"0deg-31M.png"];
        }
       
        else{
            //33m //33m
            self.imageArrayDegree = @[[UIImage imageNamed:@"0deg-33M.png"]];
            self.imageNameArrayDegree = @[@"0deg-33M.png"];
        }
        
    }
    else if([self.selectedDegree isEqualToString:@"Ten"]){
        if([self.selectedLowerTeeth isEqualToString:@"2C-133.png"] || [self.selectedLowerTeeth isEqualToString:@"3N-2NA24.png"] || [self.selectedLowerTeeth isEqualToString:@"3M-3M4M.png"]){
            //F30
            self.imageArrayDegree = @[[UIImage imageNamed:@"10deg-F30.png"]];
            self.imageNameArrayDegree = @[@"10deg-F30.png"];
        }
        
        else if([self.selectedLowerTeeth isEqualToString:@"46-A261351361N.png"]){
            //F33 //F33 //F33 //F32
            self.imageArrayDegree = @[[UIImage imageNamed:@"10deg-F33.png"], [UIImage imageNamed:@"10deg-F32.png"]];
            self.imageNameArrayDegree = @[@"10deg-F33.png", @"10deg-F32.png"];
        }
        else if([self.selectedLowerTeeth isEqualToString:@"2D-2D-Lower.png"]){
            //F32
            self.imageArrayDegree = @[[UIImage imageNamed:@"10deg-F32.png"]];
            self.imageNameArrayDegree = @[@"10deg-F32.png"];
        }
        else if([self.selectedLowerTeeth isEqualToString:@"2N-2N2684N.png"]){
            //F30 //F33 //F30
            self.imageArrayDegree = @[[UIImage imageNamed:@"10deg-F30.png"],[UIImage imageNamed:@"10deg-F33.png"]];
            self.imageNameArrayDegree = @[@"10deg-F30.png",@"10deg-F33.png"];
        }
        else{
            //F33 //F33
            self.imageArrayDegree = @[[UIImage imageNamed:@"10deg-F33.png"]];
            self.imageNameArrayDegree = @[@"10deg-F33.png"];
        }
        
    }
    else if([self.selectedDegree isEqualToString:@"Twenty"]){
        if([self.selectedLowerTeeth isEqualToString:@"2C-133.png"] ||[self.selectedLowerTeeth isEqualToString:@"3M-3M4M.png"]){
            //29m
            self.imageArrayDegree = @[[UIImage imageNamed:@"20deg-29M.png"]];
            self.imageNameArrayDegree = @[@"20deg-29M.png"];
        }
        else if([self.selectedLowerTeeth isEqualToString:@"3D-3D134.png"]){
            //31m //31M
            self.imageArrayDegree = @[[UIImage imageNamed:@"20deg-31M.png"]];
            self.imageNameArrayDegree = @[@"20deg-31M.png"];
        }
        else if([self.selectedLowerTeeth isEqualToString:@"46-A261351361N.png"]){
            //31M //33M //33M //31M
            self.imageArrayDegree = @[[UIImage imageNamed:@"20deg-31M.png"], [UIImage imageNamed:@"20deg-33M.png"]];
            self.imageNameArrayDegree = @[@"20deg-31M.png", @"20deg-33M.png"];
        }
        else if([self.selectedLowerTeeth isEqualToString:@"2D-2D-Lower.png"]){
            //29L
            self.imageArrayDegree = @[[UIImage imageNamed:@"20deg-29L.png"]];
            self.imageNameArrayDegree = @[@"20deg-29L.png"];
        }
        else if([self.selectedLowerTeeth isEqualToString:@"2N-2N2684N.png"]){
            //29L //31L //31M
            self.imageArrayDegree = @[[UIImage imageNamed:@"20deg-29L.png"],[UIImage imageNamed:@"20deg-31L.png"],[UIImage imageNamed:@"20deg-231M.png"]];
            self.imageNameArrayDegree = @[@"20deg-29L.png",@"20deg-31L.png",@"20deg-231M.png"];
        }
        else if([self.selectedLowerTeeth isEqualToString:@"2P-28.png"]){
            //31L
            self.imageArrayDegree = @[[UIImage imageNamed:@"20deg-31L.png"]];
            self.imageNameArrayDegree = @[@"20deg-31L.png"];
        }
        else if([self.selectedLowerTeeth isEqualToString:@"3N-2NA24.png"]){
            //29L //29M
            self.imageArrayDegree = @[[UIImage imageNamed:@"20deg-29L.png"],[UIImage imageNamed:@"20deg-29M.png"]];
            self.imageNameArrayDegree = @[@"20deg-29L.png",@"20deg-29M.png"];
        }
        else if([self.selectedLowerTeeth isEqualToString:@"2E-A25264.png"]){
            //31M //31L
            self.imageArrayDegree = @[[UIImage imageNamed:@"20deg-31M.png"], [UIImage imageNamed:@"20deg-31L.png"]];
            self.imageNameArrayDegree = @[@"20deg-31M.png", @"20deg-31L.png"];
        }
        
        else if([self.selectedLowerTeeth isEqualToString:@"3P-3P-Lower.png"] || [self.selectedLowerTeeth isEqualToString:@"26-266.png"]){
            //33M
            self.imageArrayDegree = @[[UIImage imageNamed:@"20deg-33M.png"]];
            self.imageNameArrayDegree = @[@"20deg-33M.png"];
        }
        else {
            //33M //31L
            self.imageArrayDegree = @[[UIImage imageNamed:@"20deg-31M.png"], [UIImage imageNamed:@"20deg-31L.png"]];
            self.imageNameArrayDegree = @[@"20deg-31M.png", @"20deg-31L.png"];
        }
        
    }

    else if([self.selectedDegree isEqualToString:@"Thirtythree"]){
        if([self.selectedLowerTeeth isEqualToString:@"2C-133.png"] ||[self.selectedLowerTeeth isEqualToString:@"3D-3D134.png"] || [self.selectedLowerTeeth isEqualToString:@"2E-A25264.png"] || [self.selectedLowerTeeth isEqualToString:@"3M-3M4M.png"]){
            //30M
            self.imageArrayDegree = @[[UIImage imageNamed:@"33deg-30M.png"]];
            self.imageNameArrayDegree = @[@"33deg-30M.png"];

        }
        else if([self.selectedLowerTeeth isEqualToString:@"46-A261351361N.png"]){
            //30M //32M //34M //30L
            self.imageArrayDegree = @[[UIImage imageNamed:@"33deg-30M.png"],[UIImage imageNamed:@"33deg-32M.png"], [UIImage imageNamed:@"33deg-34M.png"], [UIImage imageNamed:@"33deg-30L.png"]];
            self.imageNameArrayDegree = @[@"33deg-30M.png",@"33deg-32M.png",@"33deg-34M.png",@"33deg-30L.png" ];
            
        }
        else if([self.selectedLowerTeeth isEqualToString:@"2D-2D-Lower.png"]|| [self.selectedLowerTeeth isEqualToString:@"2P-28.png"]){
            //30L
            self.imageArrayDegree = @[[UIImage imageNamed:@"33deg-30L.png"]];
            self.imageNameArrayDegree = @[@"33deg-30L.png"];
            

        }
        else if([self.selectedLowerTeeth isEqualToString:@"2N-2N2684N.png"]){
            //30L //34L //30L
            self.imageArrayDegree = @[[UIImage imageNamed:@"33deg-30L.png"],[UIImage imageNamed:@"33deg-34L.png"]];
            self.imageNameArrayDegree = @[@"33deg-30L.png", @"33deg-34L.png"];
            
        }
       
        else if([self.selectedLowerTeeth isEqualToString:@"3N-2NA24.png"]){
            //30L //30M
            self.imageArrayDegree = @[[UIImage imageNamed:@"33deg-30L.png"],[UIImage imageNamed:@"33deg-30M.png"]];
            self.imageNameArrayDegree = @[@"33deg-30L.png", @"33deg-30M.png"];
            

        }
        else if([self.selectedLowerTeeth isEqualToString:@"3P-3P-Lower.png"]){
            //34M
            self.imageArrayDegree = @[[UIImage imageNamed:@"33deg-34M.png"]];
            self.imageNameArrayDegree = @[@"33deg-34M.png"];
        }
  
        else{
            //34L
            self.imageArrayDegree = @[[UIImage imageNamed:@"33deg-34L.png"]];
            self.imageNameArrayDegree = @[@"33deg-34L.png"];
        }
    }
    if([segue.identifier isEqual:@"RecomendedPosteriors"]){
        RecomendedPosteriors *RP = (RecomendedPosteriors *)segue.destinationViewController;
        RP.imageNames = self.imageNameArrayDegree;
        RP.degreeImages = self.imageArrayDegree;
        RP.reviewArray = self.reviewArray;
    }
}

- (IBAction)zeroDegreeGesture:(id)sender {
    self.zeroDegreeCheckmark.hidden = NO;
    self.selectedDegree = @"Zero" ;

    [self performSegueWithIdentifier:@"RecomendedPosteriors" sender:sender];
}
- (IBAction)tenDegreeGesture:(id)sender {
    self.tenDegreeCheckmark.hidden = NO;
    self.selectedDegree = @"Ten";
    [self performSegueWithIdentifier:@"RecomendedPosteriors" sender:sender];
}
- (IBAction)twentyDegreeGesture:(id)sender {
    self.twentyDegreeCheckmark.hidden = NO;
    self.selectedDegree = @"Twenty";
    [self performSegueWithIdentifier:@"RecomendedPosteriors" sender:sender];

}
- (IBAction)thirtythreeDegreeGesture:(id)sender {
    self.thirtythreeDegreeCheckmark.hidden = NO;
    self.selectedDegree = @"Thirtythree";
    [self performSegueWithIdentifier:@"RecomendedPosteriors" sender:sender];

}


@end
