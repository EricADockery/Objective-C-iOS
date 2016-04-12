//
//  DataViewController.m
//  The Denture Selector!
//
//  Created by Eric on 5/22/15.
//  Copyright (c) 2015 Docs Playground. All rights reserved.
// set up the measurments for the teeth

#import "FaceShape.h"
#import "Deminsions.h"

@interface DataViewController () 
@end

@implementation DataViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //hiding the check marks for the images.
    self.ovoidCheck.hidden = YES;
    self.rectangularCheck.hidden = YES;
    self.squareCheck.hidden = YES;
    self.tapperingCheck.hidden = YES;
    self.squareTapperingCheck.hidden = YES;
    
    }

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if([segue.identifier isEqual:@"Deminsions"]){
        //made it to the test
        NSLog(@"%@", sender);
        //now to establish where it is going

        Deminsions *deminsions = (Deminsions *)segue.destinationViewController;
        
        
        //set up the values to change the lable on the next view
        //This should be changed to a switch case for run time complexity...
        if(self.ovoidCheck.hidden == NO) {
            deminsions.faceLabel = self.ovoidLabel.text;
        }
        else if(self.rectangularCheck.hidden == NO){
            deminsions.faceLabel = self.rectangularLabel.text;
        }
        else if (self.squareCheck.hidden == NO){
            deminsions.faceLabel = self.squareLabel.text;
        }
        else if (self.tapperingCheck.hidden == NO){
            deminsions.faceLabel = self.tapperingLabel.text;
        }
        else{
            deminsions.faceLabel = self.squareTapperingLabel.text;
        }
        
    }
}


//setting up the tap -- hiding values that do not need to be shown
// on redesign modify this to be different views with a view selecting between the two...
- (IBAction)OvoidTap:(id)sender {
    NSLog(@"OvidTap working");
    self.ovoidCheck.hidden = NO;
    [self performSegueWithIdentifier:@"Deminsions" sender:sender];

    
}

- (IBAction)RectangluarTap:(id)sender {
    NSLog(@"RectangluarTap working");
    self.rectangularCheck.hidden = NO;
    [self performSegueWithIdentifier:@"Deminsions" sender:sender];

    

}

- (IBAction)SquareTap:(id)sender {
    NSLog(@"SquareTap working");
    self.squareCheck.hidden = NO;
    [self performSegueWithIdentifier:@"Deminsions" sender:sender];



}
- (IBAction)TapperingTap:(id)sender {
    NSLog(@"TapperingTap working");
    self.tapperingCheck.hidden = NO;

    [self performSegueWithIdentifier:@"Deminsions" sender:sender];


}
- (IBAction)SquareTapperingTap:(id)sender {
    NSLog(@"SquareTapperingTap working");
    self.squareTapperingCheck.hidden = NO;
    [self performSegueWithIdentifier:@"Deminsions" sender:sender];

    

}

@end
