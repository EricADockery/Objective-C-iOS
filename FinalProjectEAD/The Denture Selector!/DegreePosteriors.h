//
//  DegreePosteriors.h
//  The Denture Selector!
//
//  Created by Ryan on 6/18/15.
//  Copyright (c) 2015 Docs Playground. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DegreePosteriors : UIViewController


@property (weak, nonatomic) IBOutlet UIImageView *zeroDegreeCheckmark;
@property (weak, nonatomic) IBOutlet UIImageView *tenDegreeCheckmark;
@property (weak, nonatomic) IBOutlet UIImageView *twentyDegreeCheckmark;
@property (weak, nonatomic) IBOutlet UIImageView *thirtythreeDegreeCheckmark;
@property (strong, nonatomic) NSString * selectedLowerTeeth;
@property (strong, nonatomic) NSString * selectedDegree;
@property (strong, nonatomic) NSArray * imageArrayDegree;
@property (strong, nonatomic) NSArray * imageNameArrayDegree;
@property (strong, nonatomic) NSArray * reviewArray;

@end
