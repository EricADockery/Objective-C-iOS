//
//  RecomendedPosteriors.h
//  The Denture Selector!
//
//  Created by Eric on 6/18/15.
//  Copyright (c) 2015 Docs Playground. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RecomendedPosteriors : UIViewController

@property (weak, nonatomic) IBOutlet UIImageView *recommendedPosteriorImages;
@property (weak, nonatomic) IBOutlet UIImageView *PosteriorCheck;
@property (strong, nonatomic) NSArray * imageNames;
@property (strong, nonatomic) NSArray * degreeImages;
@property  NSInteger currentIndex;
@property (strong, nonatomic) NSArray * reviewArray;

@end
