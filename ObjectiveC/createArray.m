//
//  createArray.m
//  ObjectiveC
//
//  Created by Văn Tiến Tú on 7/27/15.
//  Copyright (c) 2015 Văn Tiến Tú. All rights reserved.
//

#import "createArray.h"

@interface createArray ()

@end

@implementation createArray

- (void)viewDidLoad {
    [super viewDidLoad];
    NSArray* arr1=[[NSArray alloc] init];
    NSLog(@"So phan tu arr1: %ld",arr1.count);
    NSArray* arr2=@[@"ABC",@3.14,[UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:@"http://techmaster.vn/theme_resources/frontend/tech/img/logo.png"]]]];
    NSLog(@" %ld",arr2.count);
    NSArray* arr3=[NSArray arrayWithArray:arr2];
    NSLog(@" %ld",arr3.count);
    NSLog(@"%p - %p",arr2,arr3);
    NSLog(@"%p - %p",arr2[2],arr3[2]);
    NSArray* arr4=[NSArray arrayWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"data" ofType:@"plist"]];
    NSLog(@"%@",arr4);
    for (NSDictionary* item in arr4) {
        NSLog(@"%@ %@",item[@"name"],item[@"job"]);
    }
    NSArray* arr5=[NSArray arrayWithContentsOfURL:[NSURL URLWithString:@"http://techmaster.vn/khoa-hoc-online/8212/lap-trinh-ios-objective-c/238/NSArray-khoi-tao"]];
    NSLog(@"cai gi day: %@ ",arr5);
    NSArray* arr6=[NSArray arrayWithObjects:@1,@2,@3, nil];
    long cout=[arr6 count];
    NSLog(@"%ld",cout);
    //NSLog(@"%ld",arr6)
}

@end
