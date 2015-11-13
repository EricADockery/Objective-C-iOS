//
//  Deminsions.h
//  The Denture Selector!
//
//  Created by Ryan on 6/18/15.
//  Copyright (c) 2015 Docs Playground. All rights reserved.
//

#import <UIKit/UIKit.h>
@class DataViewController;
@interface Deminsions : UIViewController

@property (weak,nonatomic) DataViewController *dataview;

@property (weak, nonatomic) IBOutlet UILabel *faceshapeLabel;
@property (weak, nonatomic) IBOutlet UILabel *orLine;
@property (weak, nonatomic) IBOutlet UILabel *vdolabel;
@property (weak, nonatomic) IBOutlet UILabel *smilelabel;
@property (weak, nonatomic) IBOutlet UILabel *WoCLabel;
@property (weak, nonatomic) IBOutlet UILabel *LoCLabel;



@property (weak, nonatomic) IBOutlet UITextField *verticalDeminsionOfOcclusion;
@property (weak, nonatomic) IBOutlet UITextField *widthOfCentral;
@property (weak, nonatomic) IBOutlet UITextField *heightOfCentral;
@property (weak, nonatomic) IBOutlet UITextField *smileLine;
@property (weak, nonatomic) IBOutlet UIButton *findBestTeeth;


@property (strong, nonatomic) NSString *faceLabel;

@property (strong, nonatomic)  NSArray *maxillaryAnteriorNameArray ;
@property (strong, nonatomic) NSArray *maxillaryAnteriorArray;

@end
