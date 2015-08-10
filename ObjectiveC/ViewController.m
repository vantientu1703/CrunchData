//
//  ViewController.m
//  ObjectiveC
//
//  Created by Văn Tiến Tú on 8/10/15.
//  Copyright (c) 2015 Văn Tiến Tú. All rights reserved.
//

#import "ViewController.h"
#import "CustomSwitch.h"
@interface ViewController ()

@end

@implementation ViewController
{
    CustomSwitch *mySwitch;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    mySwitch=[[CustomSwitch alloc] initWithFrame:CGRectMake(100, 100, 200, 100)];
    mySwitch.center=CGPointMake(self.view.bounds.size.width *0.5, 300);
    [self.view addSubview:mySwitch];
    self.view.backgroundColor=[UIColor whiteColor];
}
@end
