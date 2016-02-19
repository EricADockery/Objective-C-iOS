//
//  DataViewController.h
//  The Denture Selector!
//
//  Created by Eric on 5/22/15.
//  Copyright (c) 2015 Docs Playground. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DataViewController : UIViewController


@property (strong, nonatomic) id dataObject;

@property (weak, nonatomic) IBOutlet UIImageView *ovoidCheck;
@property (weak, nonatomic) IBOutlet UIImageView *rectangularCheck;
@property (weak, nonatomic) IBOutlet UIImageView *squareCheck;
@property (weak, nonatomic) IBOutlet UIImageView *tapperingCheck;
@property (weak, nonatomic) IBOutlet UIImageView *squareTapperingCheck;

@property (weak, nonatomic) IBOutlet UILabel *ovoidLabel;
@property (weak, nonatomic) IBOutlet UILabel *rectangularLabel;
@property (weak, nonatomic) IBOutlet UILabel *squareLabel;
@property (weak, nonatomic) IBOutlet UILabel *tapperingLabel;
@property (weak, nonatomic) IBOutlet UILabel *squareTapperingLabel;


@end

