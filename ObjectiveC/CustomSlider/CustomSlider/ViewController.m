//
//  ViewController.m
//  CustomSlider
//
//  Created by cuong minh on 7/2/15.
//  Copyright (c) 2015 Techmaster. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UISlider *slider;
@property (weak, nonatomic) IBOutlet UILabel *label;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.slider setThumbImage:[UIImage imageNamed:@"thumb.png"] forState:UIControlStateNormal];
    [self.slider setMinimumValueImage:[UIImage imageNamed:@"MuteSpeaker.png"]];
    [self.slider setMaximumValueImage:[UIImage imageNamed:@"MaxSpeaker.png"]];
    
    //[self.slider setMaximumTrackImage:[UIImage imageNamed: @"maxtrack.png"] forState:UIControlStateNormal];
    UIEdgeInsets inset = UIEdgeInsetsMake(0, 0, 1, 10);
    UIImage* maxTrack = [[UIImage imageNamed: @"maxtrack.png"] resizableImageWithCapInsets:inset];
    
    [self.slider setMaximumTrackImage:maxTrack
                             forState:UIControlStateNormal];
    [self.slider setMinimumTrackImage:[UIImage imageNamed: @"mintrack.png"] forState:UIControlStateNormal]; 
    
    
    UIGraphicsBeginImageContext(self.view.frame.size);
    [[UIImage imageNamed:@"background.png"] drawInRect:self.view.bounds];
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    self.view.backgroundColor = [UIColor colorWithPatternImage:image];
}
/*
- (void) getThumbPosition{
    CGRect size = [UIScreen mainScreen].bounds.size;
    
}*/


@end
