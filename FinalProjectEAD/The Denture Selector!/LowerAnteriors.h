//
//  LowerAnteriors.h
//  The Denture Selector!
//
//  Created by Ryan on 6/18/15.
//  Copyright (c) 2015 Docs Playground. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LowerAnteriors : UIViewController

@property (weak, nonatomic) IBOutlet UIImageView *lowerAnteriorImages;
@property (weak, nonatomic) IBOutlet UIImageView *MandibularCheck;
@property (strong, nonatomic) IBOutlet UITapGestureRecognizer *MandibularTap;
@property (strong, nonatomic) IBOutlet UISwipeGestureRecognizer *MandibularSwipe;
@property (strong, nonatomic) NSArray *ImageArray;
@property  NSInteger currentIndex;// index for the image array
@property (strong, nonatomic) NSString *selectedUpper;
@property (strong,nonatomic) NSArray *lowerImageNameArray;
@property (strong, nonatomic) NSArray * reviewArray;
@end
