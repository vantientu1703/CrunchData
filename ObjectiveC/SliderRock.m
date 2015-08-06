//
//  SliderRock.m
//  ObjectiveC
//
//  Created by Văn Tiến Tú on 8/5/15.
//  Copyright (c) 2015 Văn Tiến Tú. All rights reserved.
//

#import "SliderRock.h"

@interface SliderRock ()
@property (weak, nonatomic) IBOutlet UISlider *slider1;
@property (weak, nonatomic) IBOutlet UISlider *slider2;
@property (weak, nonatomic) IBOutlet UISlider *slider3;
@property (weak, nonatomic) IBOutlet UISlider *slider4;
@property (weak, nonatomic) IBOutlet UISlider *slider5;
@property (weak, nonatomic) IBOutlet UISlider *slider6;

@end

@implementation SliderRock

- (void)viewDidLoad {
    [super viewDidLoad];
    [self views];
    
    //UIGraphicsBeginImageContext(self.view.frame.size);
    //[[UIImage imageNamed:@"backgruond2"] drawInRect:self.view.bounds];
    
    //UIImage *image =UIGraphicsGetImageFromCurrentImageContext();UIGraphicsEndImageContext();
    
    self.view.backgroundColor=[UIColor colorWithPatternImage:[UIImage imageNamed:@"background2"]];
    [self setSlider1];
    [self setSilder2];
    [self setSilder3];
    [self setSilder4];
    [self setSilder5];
    [self setSilder6];
}
-(void) views{
    CGSize size=self.view.bounds.size;
     NSLog(@"%f  %f",size.width,size.height);
}
-(void) setSlider1{
    self.slider1.transform=CGAffineTransformMakeRotation(-M_PI_2);
    [self.slider1 setMaximumTrackImage:[UIImage imageNamed:@"Track"] forState:UIControlStateNormal];
    [self.slider1 setMinimumTrackImage:[UIImage imageNamed:@"Track"] forState:UIControlStateNormal];
    [self.slider1 setThumbImage:[UIImage imageNamed:@"Thumb"] forState:UIControlStateNormal];
}
-(void) setSilder2{
    self.slider2.transform=CGAffineTransformMakeRotation(-M_PI_2);
    [self.slider2 setMaximumTrackImage:[UIImage imageNamed:@"Track"] forState:UIControlStateNormal];
    [self.slider2 setMinimumTrackImage:[UIImage imageNamed:@"Track"] forState:UIControlStateNormal];
    [self.slider2 setThumbImage:[UIImage imageNamed:@"Thumb"] forState:UIControlStateNormal];
}
-(void) setSilder3{
    self.slider3.transform=CGAffineTransformMakeRotation(-M_PI_2);
    [self.slider3 setMaximumTrackImage:[UIImage imageNamed:@"Track"] forState:UIControlStateNormal];
    [self.slider3 setMinimumTrackImage:[UIImage imageNamed:@"Track"] forState:UIControlStateNormal];
    [self.slider3 setThumbImage:[UIImage imageNamed:@"Thumb"] forState:UIControlStateNormal];
}
-(void) setSilder4{
    self.slider4.transform=CGAffineTransformMakeRotation(-M_PI_2);
    [self.slider4 setMaximumTrackImage:[UIImage imageNamed:@"Track"] forState:UIControlStateNormal];
    [self.slider4 setMinimumTrackImage:[UIImage imageNamed:@"Track"] forState:UIControlStateNormal];
    [self.slider4 setThumbImage:[UIImage imageNamed:@"Thumb"] forState:UIControlStateNormal];
}

-(void) setSilder5{
    self.slider5.transform=CGAffineTransformMakeRotation(-M_PI_2);
    [self.slider5 setMaximumTrackImage:[UIImage imageNamed:@"Track"] forState:UIControlStateNormal];
    [self.slider5 setMinimumTrackImage:[UIImage imageNamed:@"Track"] forState:UIControlStateNormal];
    [self.slider5 setThumbImage:[UIImage imageNamed:@"Thumb"] forState:UIControlStateNormal];
}
-(void) setSilder6{
    self.slider6.transform=CGAffineTransformMakeRotation(-M_PI_2);
    [self.slider6 setMaximumTrackImage:[UIImage imageNamed:@"Track"] forState:UIControlStateNormal];
    [self.slider6 setMinimumTrackImage:[UIImage imageNamed:@"Track"] forState:UIControlStateNormal];
    [self.slider6 setThumbImage:[UIImage imageNamed:@"Thumb"] forState:UIControlStateNormal];
}
@end
