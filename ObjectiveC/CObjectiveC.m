//
//  CObjectiveC.m
//  ObjectiveC
//
//  Created by Văn Tiến Tú on 7/26/15.
//  Copyright (c) 2015 Văn Tiến Tú. All rights reserved.
//

#import "CObjectiveC.h"
#import "util.h"
#import "utilObjFuntion.h"
@interface CObjectiveC ()

@end

@implementation CObjectiveC

- (void)viewDidLoad {
    [super viewDidLoad];
    int resultSum=add(10, 2);
    long resultFac=factorial(5);
    NSLog(@"%d",resultSum);
    NSLog(@"%ld",resultFac);
    utilObjFuntion* util=[utilObjFuntion new];
    NSLog(@"Sum2= %d",[util addA:20 andB:10]);
    NSLog(@"Fac2= %ld",[util factorial:10]);
}


@end
