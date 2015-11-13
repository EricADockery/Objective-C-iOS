//
//  Deminsions.m
//  The Denture Selector!
//
//  Created by Ryan on 6/18/15.
//  Copyright (c) 2015 Docs Playground. All rights reserved.
//

#import "Deminsions.h"
#import "FaceShape.h"
#import "UpperAnteriors.h"
@import UIKit;

@interface Deminsions()

@end


@implementation Deminsions
@synthesize maxillaryAnteriorArray;
@synthesize maxillaryAnteriorNameArray;
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view
    if(self){
        self.faceshapeLabel.text = self.faceLabel;
        NSLog(@"%@", _faceLabel);
        
        
        //adds a done button to the heightofcentral and smileline text fields
        
        UIToolbar* keyboardDoneButtonView = [[UIToolbar alloc] init];
        [keyboardDoneButtonView sizeToFit];
        UIBarButtonItem* doneButton = [[UIBarButtonItem alloc] initWithTitle:@"Done"
                                                                       style:UIBarButtonItemStyleBordered target:self
                                                                      action:@selector(doneClicked:)];
        [keyboardDoneButtonView setItems:[NSArray arrayWithObjects:doneButton, nil]];
        _verticalDeminsionOfOcclusion.inputAccessoryView = keyboardDoneButtonView;
        _widthOfCentral.inputAccessoryView = keyboardDoneButtonView;
        _heightOfCentral.inputAccessoryView = keyboardDoneButtonView;
        _smileLine.inputAccessoryView = keyboardDoneButtonView;

    }
    
}
- (IBAction)doneClicked:(id)sender
{
    // you have to click the done button to end the keyboard for next slide
    NSLog(@"Done Clicked.");
    
    [self.view endEditing:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
//each text field sender

- (IBAction)VDOtext:(id)sender {
    _widthOfCentral.hidden = YES;
    _heightOfCentral.hidden = YES;
    _orLine.hidden = YES;
    _WoCLabel.hidden = YES;
    _LoCLabel.hidden = YES;
    
    
}
- (IBAction)smileline:(id)sender {
    _widthOfCentral.hidden = YES;
    _heightOfCentral.hidden = YES;
    _orLine.hidden = YES;
    _WoCLabel.hidden = YES;
    _LoCLabel.hidden = YES;
    
    
   
}
- (IBAction)WOC:(id)sender {
    _verticalDeminsionOfOcclusion.hidden = YES;
    _smileLine.hidden = YES;
    _orLine.hidden = YES;
    _vdolabel.hidden = YES;
    _smilelabel.hidden = YES;

}
- (IBAction)LOC:(id)sender {
    _verticalDeminsionOfOcclusion.hidden = YES;
    _smileLine.hidden = YES;
    _orLine.hidden = YES;
    _vdolabel.hidden = YES;
    _smilelabel.hidden = YES;
    
}
// get everything ready for the end of this view:
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    NSLog(@"This is preparing for Segue");
    
    UpperAnteriors *upperAnt = (UpperAnteriors *) segue.destinationViewController;
    upperAnt.ImageArray = maxillaryAnteriorArray;
    upperAnt.maxNameArray = maxillaryAnteriorNameArray;

}
- (IBAction)FindBestTeeth:(id)sender {
    
    
    //now we check the values put into the text so that we can generate the best images
    NSLog(@"You entered %@", self.verticalDeminsionOfOcclusion.text);
    [self.verticalDeminsionOfOcclusion resignFirstResponder];
    
    NSLog(@"You entered %@", self.widthOfCentral.text);
    [self.widthOfCentral resignFirstResponder];
    
    NSLog(@"You entered %@", self.heightOfCentral.text);
    [self.heightOfCentral resignFirstResponder];
    
    NSLog(@"You entered %@", self.smileLine.text);
    [self.smileLine resignFirstResponder];
    


    // calcuate the best value for the images
    NSInteger lengthofCentral = 0;
    NSInteger widthofCentral = 0;
    if ([self.verticalDeminsionOfOcclusion.text length] != 0){
        NSLog(@"the VDO value is @%@", self.verticalDeminsionOfOcclusion.text);
        NSLog(@"I am in the VDO if statement");

        NSInteger calculations = 0;

        calculations = ([self.verticalDeminsionOfOcclusion.text integerValue]/ 2 )+2;
        NSLog(@"calculations error %ld", calculations);
        lengthofCentral = calculations - [self.smileLine.text integerValue];
        NSLog(@"length of central calculates to this value %ld", (long)lengthofCentral);
        // if statement to find the best value
        if(lengthofCentral < 9){
            NSLog(@"I am in the VDO if statement for 0 to 9");

            //image 2C
            maxillaryAnteriorArray= @[[UIImage imageNamed:@"133-2C.png"]];
            maxillaryAnteriorNameArray =@[@"133-2C.png"];
        }
        else if (9 <= lengthofCentral && lengthofCentral < 10){
            NSLog(@"I am in the VDO if statement for 9 to 10");

            //image 134-3d, 2d-2d, 3d-3d, 1n-46, A24-3n, a25-2e, a26-46, 3m-3m, 4m-3n,
            maxillaryAnteriorArray= @[
                [UIImage imageNamed:@"134-3D.png"],
                [UIImage imageNamed:@"2D-2D.png"],
                [UIImage imageNamed:@"3D-3D.png"],
                [UIImage imageNamed:@"1N-46.png"],
                [UIImage imageNamed:@"A24-3N.png"],
                [UIImage imageNamed:@"A25-2E.png"],
                [UIImage imageNamed:@"A26-46.png"],
                [UIImage imageNamed:@"3M-3M.png"],
                [UIImage imageNamed:@"4M-3N.png"]
            ];
            maxillaryAnteriorNameArray =@[@"134-3D.png", @"2D-2D.png", @"3D-3D.png",
                                          @"1N-46.png",@"A24-3N.png",@"A25-2E.png",
                                          @"A26-46.png",@"3M-3M.png",@"4M-3N.png" ];
            
        }
        else if (10 <= lengthofCentral && lengthofCentral < 11){
            //image 135-46, 136-46, 2n-2n, 3n-3n, 3p-3p, 4n-2n, 263-2n, 264-2e, 266-2E,
            maxillaryAnteriorArray = @[
                [UIImage imageNamed:@"135-46.png"],
                [UIImage imageNamed:@"136-46.png"],
                [UIImage imageNamed:@"2N-2N.png"],
                [UIImage imageNamed:@"3N-3N.png"],
                [UIImage imageNamed:@"3P-3P.png"],
                [UIImage imageNamed:@"4N-2N.png"],
                [UIImage imageNamed:@"263-2N.png"],
                [UIImage imageNamed:@"264-2E.png"],
                [UIImage imageNamed:@"266-26.png"]
            ];
            maxillaryAnteriorNameArray =@[@"135-46.png",@"136-46.png",@"2N-2N.png",
                                          @"3N-3N.png",@"3P-3P.png",@"4N-2N.png",
                                          @"263-2N.png",@"264-2E.png",@"266-26.png"];

        }
        else if (11 <= lengthofCentral && lengthofCentral < 12){
            //image 2p-2p
            maxillaryAnteriorArray = @[[UIImage imageNamed:@"2P-2P.png"]];
            maxillaryAnteriorNameArray =@[@"2P-2P.png"];

        }
        else if (12 <= lengthofCentral && lengthofCentral < 13){
            //image 266-26
            maxillaryAnteriorArray =  @[[UIImage imageNamed:@"266-26.png"]];
            maxillaryAnteriorNameArray =@[@"266-26.png"];

        }
        else if (13 <= lengthofCentral){
            //image 267*-3r, 268*-3R
            maxillaryAnteriorArray= @[[UIImage imageNamed:@"267*-3R.png"],[UIImage imageNamed:@"268*-3R.png"]];
            maxillaryAnteriorNameArray =@[@"267*-3R.png", @"268*-3R.png"];
        }
        
    }
    else{
        NSLog(@"no math needed for calculations, will reduce the options");
        widthofCentral = [self.widthOfCentral.text integerValue];
        lengthofCentral = [self.heightOfCentral.text integerValue];
        if (widthofCentral < 8){
            if(lengthofCentral < 9){
                //image 2C
                maxillaryAnteriorArray = @[[UIImage imageNamed:@"133-2C.png"]];
                maxillaryAnteriorNameArray =@[@"133-2C.png"];
            }
            else if (9 <= lengthofCentral && lengthofCentral < 10){
                //image 2d-2d,  3m-3m, 4m-3n,
                maxillaryAnteriorArray = @[[UIImage imageNamed:@"2D-2D.png"],[UIImage imageNamed:@"3M-3M.png"],[UIImage imageNamed:@"4M-3N.png"]];
                maxillaryAnteriorNameArray =@[@"2D-2D.png",@"3M-3M.png",@"4M-3N.png"];


            }
            else if (10 <= lengthofCentral){
                // 2n-2n,  263-2n,
                maxillaryAnteriorArray = @[[UIImage imageNamed:@"2N-2N.png"],[UIImage imageNamed:@"263-2N.png"]];
                maxillaryAnteriorNameArray =@[@"2N-2N.png",@"263-2N.png"];
            }
            
        }
        else if (8 <= widthofCentral && widthofCentral < 9){
            if (lengthofCentral < 10){
                //image 134-3d,  3d-3d, 1n-46, A24-3n, a25-2e,
                maxillaryAnteriorArray = @[[UIImage imageNamed:@"134-3D.png"],[UIImage imageNamed:@"3D-3D.png"],[UIImage imageNamed:@"1N-46.png"],[UIImage imageNamed:@"A24-3N.png"],[UIImage imageNamed:@"A25-2E.png"]];
                maxillaryAnteriorNameArray =@[@"134-3D.png",@"3D-3D.png",@"1N-46.png",@"A24-3N.png",@"A25-2E.png"];
            }
            else if (10 <= lengthofCentral && lengthofCentral < 11){
                //image 135-46, 3n-3n, 3p-3p, 4n-2n, 264-2e,
                maxillaryAnteriorArray = @[[UIImage imageNamed:@"135-46.png"],[UIImage imageNamed:@"3N-3N.png"],[UIImage imageNamed:@"3P-3P.png"],[UIImage imageNamed:@"4N-2N.png"],[UIImage imageNamed:@"264-2E.png"]];
                maxillaryAnteriorNameArray =@[@"135-46.png",@"3N-3N.png",@"3P-3P.png",@"4N-2N.png",@"264-2E.png"];
            }
            else if (11 <= lengthofCentral){
                //image 2p-2p
                maxillaryAnteriorArray = @[[UIImage imageNamed:@"2P-2P.png"]];
                maxillaryAnteriorNameArray =@[@"2P-2P.png"];
            }
            
        }
        else if (9 <= widthofCentral && widthofCentral<= 10){
           if (lengthofCentral < 12){
                //image a26-46,
              maxillaryAnteriorArray = @[[UIImage imageNamed:@"A26-46.png"]];
              maxillaryAnteriorNameArray =@[@"A26-46.png"];
           }
           else if (12 <= lengthofCentral && lengthofCentral < 13){
                //image 266-26
               maxillaryAnteriorArray = @[[UIImage imageNamed:@"266-26.png"]];
               maxillaryAnteriorNameArray =@[@"266-26.png"];
            }
            else if (13 <= lengthofCentral){
                //image 267*-3r
                maxillaryAnteriorArray = @[[UIImage imageNamed:@"267*-3R.png"]];
                maxillaryAnteriorNameArray =@[@"267*-3R.png"];
            }

        }
        else if (10 <= widthofCentral){
           //image 268*-3R
            maxillaryAnteriorArray = @[[UIImage imageNamed:@"268*-3R.png"]];
            maxillaryAnteriorNameArray =@[@"268*-3R.png"];
        }
        
    }

}


@end
