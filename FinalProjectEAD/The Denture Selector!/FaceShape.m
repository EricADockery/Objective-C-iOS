//
//  DataViewController.m
//  The Denture Selector!
//
//  Created by Ryan on 5/22/15.
//  Copyright (c) 2015 Docs Playground. All rights reserved.
//

#import "FaceShape.h"
#import "Deminsions.h"

@interface DataViewController () 
@end

@implementation DataViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    _ovoidCheck.hidden = YES;
    _rectangularCheck.hidden = YES;
    _squareCheck.hidden = YES;
    _tapperingCheck.hidden = YES;
    _squareTapperingCheck.hidden = YES;
    
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
        
        
        //change label -- currently doesnt work
        if(_ovoidCheck.hidden == NO) {
            deminsions.faceLabel = _ovoidLabel.text;
        }
        else if(_rectangularCheck.hidden == NO){
            deminsions.faceLabel = _rectangularLabel.text;
        }
        else if (_squareCheck.hidden == NO){
            deminsions.faceLabel = _squareLabel.text;
        }
        else if (_tapperingCheck.hidden == NO){
            deminsions.faceLabel = _tapperingLabel.text;
        }
        else{
            deminsions.faceLabel = _squareTapperingLabel.text;
        }
        
    
                //hide the button that was pressed back
        
         //---- Not sure if this is working or if it is keeping it completely hidden
        // -- Going to try and view on my phone on if this is working correctly
        /*
         _ovoidCheck.hidden = YES;
         _rectangularCheck.hidden = YES;
         _squareCheck.hidden = YES;
         _tapperingCheck.hidden = YES;
         _squareTapperingCheck.hidden = YES;
         
*/
        
    }
}



- (IBAction)OvoidTap:(id)sender {
    NSLog(@"OvidTap working");
    _ovoidCheck.hidden = NO;
    [self performSegueWithIdentifier:@"Deminsions" sender:sender];

    
}

- (IBAction)RectangluarTap:(id)sender {
    NSLog(@"RectangluarTap working");
    _rectangularCheck.hidden = NO;
    [self performSegueWithIdentifier:@"Deminsions" sender:sender];

    

}

- (IBAction)SquareTap:(id)sender {
    NSLog(@"SquareTap working");
    _squareCheck.hidden = NO;
    [self performSegueWithIdentifier:@"Deminsions" sender:sender];



}
- (IBAction)TapperingTap:(id)sender {
    NSLog(@"TapperingTap working");
    _tapperingCheck.hidden = NO;

    [self performSegueWithIdentifier:@"Deminsions" sender:sender];


}
- (IBAction)SquareTapperingTap:(id)sender {
    NSLog(@"SquareTapperingTap working");
    _squareTapperingCheck.hidden = NO;
    [self performSegueWithIdentifier:@"Deminsions" sender:sender];

    

}

@end
