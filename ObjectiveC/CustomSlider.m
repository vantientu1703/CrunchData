//
//  CustomSlider.m
//  ObjectiveC
//
//  Created by Văn Tiến Tú on 8/1/15.
//  Copyright (c) 2015 Văn Tiến Tú. All rights reserved.
//

#import "CustomSlider.h"

@interface CustomSlider ()
{
    NSTimer *timer;
}
@property (weak, nonatomic) IBOutlet UISlider *slider;
@property (weak, nonatomic) IBOutlet UISlider *slider2;

@end

@implementation CustomSlider

- (void)viewDidLoad {
    [super viewDidLoad];
    timer=[NSTimer scheduledTimerWithTimeInterval:0.1 target:self selector:@selector(onTimer) userInfo:nil repeats:true];
    [self.slider setThumbImage:[UIImage imageNamed:@"Thumb"] forState:UIControlStateNormal];
    
    [self.slider setMaximumValueImage:[UIImage imageNamed:@"MaxVolume"]];
    
    [self.slider setMinimumValueImage:[UIImage imageNamed:@"MinVolume"]];
    [self.slider setBackgroundColor:[UIColor darkGrayColor]];
    
    //UIGraphicsBeginImageContext(self.slider.frame.size);
    
    UIEdgeInsets inset=UIEdgeInsetsMake(0, 0, 1, 20);
    UIImage *Maxtrack=[[UIImage imageNamed:@"Maxtrack"] resizableImageWithCapInsets:inset];
    
    [self.slider setMaximumTrackImage:Maxtrack forState:UIControlStateNormal];
    
    [self.slider setMinimumTrackImage:[UIImage imageNamed:@"Mintrack"] forState:UIControlStateNormal];
    
    //self.slider.transform=CGAffineTransformMakeRotation(M_PI_2);
    //self.slider2.transform=CGAffineTransformMakeRotation(M_PI_2);
    
    UIGraphicsBeginImageContext(self.view.frame.size);
    [[UIImage imageNamed:@"Backgruond"] drawInRect:self.view.bounds];
    
    //UIImage *image =UIGraphicsGetImageFromCurrentImageContext();UIGraphicsEndImageContext();
    self.view.backgroundColor=[UIColor grayColor];
    
    
    //_slider.transform=CGAffineTransformMakeRotation(M_PI_2); // xoay slider 90 do:
    //_slider.tintColor=[UIColor blueColor]; // đổi màu dòng l slider
    //_slider.thumbTintColor=[UIColor yellowColor];
    
}
-(void) onTimer{
    _slider.value+=0.05;
    if(_slider.value>=1){
        _slider.value=1;
        [timer invalidate];
    }
}

@end
