//
//  ViewController.m
//  runningLed
//
//  Created by Văn Tiến Tú on 7/27/15.
//  Copyright (c) 2015 Văn Tiến Tú. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIImageView* ball=[[UIImageView alloc] initWithImage:[UIImage imageNamed:@"grey"]];
    ball.center=CGPointMake(100, 100);
    ball.tag=1;
    }

@end
