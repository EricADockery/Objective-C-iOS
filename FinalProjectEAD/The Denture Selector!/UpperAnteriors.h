//
//  UpperAnteriors.h
//  The Denture Selector!
//
//  Created by Ryan on 6/18/15.
//  Copyright (c) 2015 Docs Playground. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UpperAnteriors : UIViewController
@property (weak, nonatomic) IBOutlet UIImageView *UpperAnteriorImage;
@property (weak, nonatomic) IBOutlet UIImageView *MaxillaryCheck;
@property (strong, nonatomic) NSArray *ImageArray;
@property  NSInteger currentIndex;// index for the image array
@property (strong, nonatomic) NSArray *maxNameArray;
@end
