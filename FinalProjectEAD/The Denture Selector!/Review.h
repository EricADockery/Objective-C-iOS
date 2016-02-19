//
//  Review.h
//  The Denture Selector!
//
//  Created by Eric on 6/18/15.
//  Copyright (c) 2015 Docs Playground. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Review : UIViewController
@property (weak, nonatomic) IBOutlet UIImageView *upperImage;
@property (weak, nonatomic) IBOutlet UIImageView *lowerImage;
@property (weak, nonatomic) IBOutlet UIImageView *posterierImage;
@property (weak, nonatomic) IBOutlet UIButton *submitOrderButton;
@property (weak, nonatomic) IBOutlet UIButton *cancelOrderButton;
@property (strong, nonatomic) NSString * selectedDegree;
@property (strong, nonatomic) NSArray *reviewArray;
@end
