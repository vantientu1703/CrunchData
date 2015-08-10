//
//  CustomSwitch.m
//  ObjectiveC
//
//  Created by Văn Tiến Tú on 8/10/15.
//  Copyright (c) 2015 Văn Tiến Tú. All rights reserved.
//

#import "CustomSwitch.h"

@implementation CustomSwitch
{
    UIButton *buttonON;
    UIButton *buttonOFF;
}

-(instancetype) initWithFrame:(CGRect)frame{
    self=[super initWithFrame:CGRectMake(100, 100, 200, 100)];
    buttonON=[[UIButton alloc] initWithFrame:CGRectMake(0, 0, 100, 100)];
    buttonOFF=[[UIButton alloc] initWithFrame:CGRectMake(100, 0, 100, 100)];
    [buttonON addTarget:self action:@selector(pressON) forControlEvents:UIControlEventTouchUpInside];
    [buttonOFF addTarget:self action:@selector(pressOFF) forControlEvents:UIControlEventTouchUpInside];
    self.value=true;
    [self addSubview:buttonON];
    [self addSubview:buttonOFF];
    return self;
}
-(void) pressON{
    self.value=true;
}
-(void) pressOFF{
    self.value=false;
}
//Tao ham getter
-(BOOL) getValue{
    return _value;
}
-(void) setValue:(BOOL)value{
    _value=value;
    if(_value){
        [buttonON setImage:[UIImage imageNamed:@"blueON"] forState:normal];
        [buttonOFF setImage:[UIImage imageNamed:@"grayOFF"] forState:normal];
    }else{
        [buttonON setImage:[UIImage imageNamed:@"grayON"] forState:normal];
        [buttonOFF setImage:[UIImage imageNamed:@"redOFF"] forState:normal];
    }
}
@end
